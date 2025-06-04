import os
import sys
import time
import requests
from bs4 import BeautifulSoup

# Configure user agent to mimic a real browser
HEADERS = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36",
    "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",
    "Accept-Language": "en-US,en;q=0.5",
    "DNT": "1",
    "Connection": "keep-alive",
    "Upgrade-Insecure-Requests": "1",
}

def get_csrf_token(soup):
    """Extract CSRF token from HTML with multiple fallback methods"""
    # Try different methods to find the token
    token_input = soup.find("input", {"name": "_token"})
    if token_input and token_input.get("value"):
        return token_input["value"]
    
    meta_token = soup.find("meta", {"name": "csrf-token"})
    if meta_token and meta_token.get("content"):
        return meta_token["content"]
    
    # Last resort: search in scripts
    for script in soup.find_all("script"):
        if "_token" in script.text:
            token_start = script.text.find("_token") + 8
            token_end = script.text.find("'", token_start)
            return script.text[token_start:token_end]
    
    return None

def technic_login(session, username, password):
    """Authenticate with Technic Platform with retries"""
    login_url = "https://www.technicpack.net/login"
    
    for attempt in range(3):
        try:
            # Get login page to fetch CSRF token
            response = session.get(login_url, headers=HEADERS, timeout=30)
            if response.status_code != 200:
                print(f"⚠️ Login page failed: HTTP {response.status_code}")
                time.sleep(2)
                continue
                
            soup = BeautifulSoup(response.text, "html.parser")
            token = get_csrf_token(soup)
            
            if not token:
                print("❌ CSRF token not found on login page")
                # Save HTML for debugging
                with open("login_page.html", "w", encoding="utf-8") as f:
                    f.write(response.text)
                print("Saved login_page.html for inspection")
                return False
            
            # Prepare login payload
            payload = {
                "_token": token,
                "username": username,
                "password": password
            }
            
            # Submit login
            response = session.post(
                login_url,
                data=payload,
                headers=HEADERS,
                allow_redirects=True,
                timeout=30
            )
            
            # Check for successful login
            if "dashboard" in response.url:
                print("🔑 Login successful")
                return True
                
            if "Invalid credentials" in response.text:
                print("❌ Invalid credentials")
                return False
                
            print(f"⚠️ Unexpected login response: HTTP {response.status_code}")
            time.sleep(2)
            
        except Exception as e:
            print(f"⚠️ Login attempt {attempt+1} failed: {str(e)}")
            time.sleep(3)
    
    return False

def update_modpack(session, modpack_id, modpack_data):
    """Update modpack details with retries"""
    edit_url = f"https://www.technicpack.net/modpack/edit/{modpack_id}/main"
    
    for attempt in range(3):
        try:
            # Get edit page to fetch CSRF token
            response = session.get(edit_url, headers=HEADERS, timeout=30)
            if response.status_code != 200:
                print(f"⚠️ Edit page failed: HTTP {response.status_code}")
                time.sleep(2)
                continue
                
            soup = BeautifulSoup(response.text, "html.parser")
            token = get_csrf_token(soup)
            
            if not token:
                print("❌ CSRF token not found on edit page")
                return False
            
            # Prepare update payload
            payload = {
                "_token": token,
                "_token": token,  # Intentional duplicate
                "name": modpack_data["name"],
                "url": modpack_data["url"],
                "minecraft_version_id": str(modpack_data["minecraft_version_id"]),
                "tags": modpack_data.get("tags", ""),
                "website": modpack_data.get("website", ""),
                "server": "1" if modpack_data.get("server") else "0",
                "server_link": modpack_data.get("server_link", ""),
                "discord_server_id": modpack_data.get("discord_server_id", "")
            }
            
            # Submit update
            response = session.post(
                edit_url,
                data=payload,
                headers=HEADERS,
                allow_redirects=False,
                timeout=30
            )
            
            # Check for successful update (302 redirect)
            if response.status_code == 302:
                print("✅ Modpack update submitted")
                return True
                
            print(f"⚠️ Update failed: HTTP {response.status_code}")
            print(f"Response snippet: {response.text[:200]}...")
            time.sleep(2)
            
        except Exception as e:
            print(f"⚠️ Update attempt {attempt+1} failed: {str(e)}")
            time.sleep(3)
    
    return False

if __name__ == "__main__":
    # Load configuration from environment
    USERNAME = os.getenv("TECHNIC_USERNAME")
    PASSWORD = os.getenv("TECHNIC_PASSWORD")
    MODPACK_ID = os.getenv("MODPACK_ID")
    
    modpack_data = {
        "name": os.getenv("MODPACK_NAME"),
        "url": os.getenv("MODPACK_URL"),
        "minecraft_version_id": int(os.getenv("MINECRAFT_VERSION_ID", "155")),
        "server": os.getenv("HAS_SERVER", "1") == "1",
        "tags": os.getenv("MODPACK_TAGS", ""),
        "website": os.getenv("MODPACK_WEBSITE", ""),
        "server_link": os.getenv("SERVER_LINK", ""),
        "discord_server_id": os.getenv("DISCORD_ID", "")
    }
    
    with requests.Session() as session:
        # Add headers to session
        session.headers.update(HEADERS)
        
        # Authenticate
        if not technic_login(session, USERNAME, PASSWORD):
            print("❌ Aborting: Login failed after multiple attempts")
            sys.exit(1)
        
        # Update modpack
        if not update_modpack(session, MODPACK_ID, modpack_data):
            print("❌ Aborting: Modpack update failed after multiple attempts")
            sys.exit(1)
            
    print("🚀 Technic modpack update completed successfully")
    sys.exit(0)