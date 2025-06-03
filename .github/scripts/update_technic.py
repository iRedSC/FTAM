import os
import requests
from bs4 import BeautifulSoup

def technic_login(session, username, password):
    """Authenticate with Technic Platform"""
    login_url = "https://www.technicpack.net/login"
    
    # Get CSRF token from login page
    response = session.get(login_url)
    soup = BeautifulSoup(response.text, "html.parser")
    token = soup.find("input", {"name": "_token"})["value"]
    
    # Prepare login payload
    payload = {
        "_token": token,
        "username": username,
        "password": password
    }
    
    # Submit login
    response = session.post(login_url, data=payload)
    return "Invalid credentials" not in response.text

def update_modpack(session, modpack_id, modpack_data):
    """Update modpack details"""
    edit_url = f"https://www.technicpack.net/modpack/edit/{modpack_id}/main"
    
    # Get CSRF token from edit page
    response = session.get(edit_url)
    soup = BeautifulSoup(response.text, "html.parser")
    token = soup.find("input", {"name": "_token"})["value"]
    
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
    response = session.post(edit_url, data=payload, allow_redirects=False)
    return response.status_code == 302

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
        # Authenticate
        if not technic_login(session, USERNAME, PASSWORD):
            print("❌ Login failed")
            exit(1)
        
        # Update modpack
        if update_modpack(session, MODPACK_ID, modpack_data):
            print("✅ Modpack updated successfully")
        else:
            print("❌ Modpack update failed")
            exit(1)