import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.entity.attribute.AttributeOperation;
import crafttweaker.api.entity.attribute.Attribute;
import crafttweaker.api.entity.attribute.AttributeInstance;
import crafttweaker.api.entity.attribute.AttributeModifier;
import crafttweaker.api.text.Component;

import crafttweaker.api.item.tooltip.ITooltipFunction;
import crafttweaker.api.item.TooltipFlag;

<item:lrarmor:dea_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0000", "generic.armor", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:dea_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0000", "generic.armor_toughness", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:dea_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0000", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:dea_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0000", "generic.armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:dea_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0000", "generic.armor_toughness", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:dea_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0000", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:dea_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0000", "generic.armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:dea_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0000", "generic.armor_toughness", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:dea_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0000", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:dea_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0000", "generic.armor", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:dea_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0000", "generic.armor_toughness", 1, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:dea_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0000", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:fbi_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0001", "generic.armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:fbi_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0001", "tacz:tacz.bullet_resistance", 0.02, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:fbi_armed_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0001", "generic.armor_toughness", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:fbi_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0001", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:fbi_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0001", "tacz:tacz.bullet_resistance", 0.02, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:fbi_armed_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0001", "generic.armor_toughness", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:fbi_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0001", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:fbi_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0001", "tacz:tacz.bullet_resistance", 0.02, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:fbi_armed_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0001", "generic.armor_toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:fbi_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0001", "generic.armor", 3, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:fbi_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0001", "tacz:tacz.bullet_resistance", 0.02, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:fbi_armed_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0001", "generic.armor_toughness", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:scout_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0002", "generic.armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:scout_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0002", "tacz:tacz.bullet_resistance", 0.03, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:scout_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0002", "generic.armor_toughness", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:scout_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0002", "generic.armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:scout_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0002", "tacz:tacz.bullet_resistance", 0.03, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:scout_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0002", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:scout_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0002", "generic.armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:scout_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0002", "tacz:tacz.bullet_resistance", 0.03, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:scout_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0002", "generic.armor_toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:scout_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0002", "generic.armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:scout_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0002", "tacz:tacz.bullet_resistance", 0.03, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:scout_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0002", "generic.armor_toughness", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:attacker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:attacker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:attacker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0003", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:attacker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0003", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:attacker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:attacker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0003", "generic.armor_toughness", 5.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:attacker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0003", "generic.armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:attacker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:attacker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0003", "generic.armor_toughness", 4.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:attacker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:attacker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:attacker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0003", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:defender_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0004", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:defender_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0004", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:defender_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0004", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:defender_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0004", "generic.armor", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:defender_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0004", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:defender_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0004", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:defender_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0004", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:defender_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0004", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:defender_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0004", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:defender_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0004", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:defender_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0004", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:defender_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0004", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:sniper_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0005", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:sniper_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0005", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:sniper_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "9f3d476d-c118-4544-8365-9f3d476d0005", "generic.movement_speed", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]); // Adjusted to 0.05
<item:lrarmor:sniper_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0005", "generic.armor_toughness", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:sniper_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:forge:step_height_addition>, "9f3d476d-c118-4544-8365-9f3d476d0005", "forge:step_height_addition", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]); // Adjusted to 0.5
// Removed nametag distance from helmet

<item:lrarmor:sniper_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0005", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:sniper_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0005", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:sniper_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "845db27c-c624-495f-8c9f-845db27c0005", "generic.movement_speed", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]); // Added speed and adjusted
<item:lrarmor:sniper_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0005", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:sniper_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:forge:step_height_addition>, "845db27c-c624-495f-8c9f-845db27c0005", "forge:step_height_addition", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]); // Added step height and adjusted
// Removed nametag distance from chestplate

<item:lrarmor:sniper_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0005", "generic.armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:sniper_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0005", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:sniper_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0005", "generic.movement_speed", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]); // Added speed and adjusted
<item:lrarmor:sniper_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0005", "generic.armor_toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:sniper_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:forge:step_height_addition>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0005", "forge:step_height_addition", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]); // Added step height and adjusted
// Removed nametag distance from leggings

<item:lrarmor:sniper_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0005", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:sniper_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0005", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:sniper_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0005", "generic.movement_speed", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]); // Added speed and adjusted
<item:lrarmor:sniper_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0005", "generic.armor_toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:sniper_boots>.anyDamage().addGlobalAttributeModifier(<attribute:forge:step_height_addition>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0005", "forge:step_height_addition", 0.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]); // Added step height and adjusted
// Removed nametag distance from boots

<item:lrarmor:medical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0006", "generic.armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:medical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0006", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:medical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0006", "generic.armor_toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:medical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0006", "generic.armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:medical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0006", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:medical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0006", "generic.armor_toughness", 4.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:medical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0006", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:medical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0006", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:medical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0006", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:medical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0006", "generic.armor", 4, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:medical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0006", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:medical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0006", "generic.armor_toughness", 3.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

public function addTier(stack as IItemStack , tooltip as stdlib.List<Component>, flag as TooltipFlag, tier as int) as void {
    var t1 = Component.literal("Tier 1").setStyle(<constant:formatting:gray>);
    var t2 = Component.literal("Tier 2").setStyle(<constant:formatting:green>);
    var t3 = Component.literal("Tier 3").setStyle(<constant:formatting:aqua>);
    var t4 = Component.literal("Tier 4").setStyle(<constant:formatting:light_purple>);
    var t5 = Component.literal("Tier 5").setStyle(<constant:formatting:gold>);
    var t6 = Component.literal("Tier 6").setStyle(<constant:formatting:red>);
    var premium = Component.literal("Premium Item").setStyle(<constant:formatting:dark_red>);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);

    if (tier == 1) {
        tooltip.insert(1, t1);
    }
    if (tier == 2) {
        tooltip.insert(1, t2);
    }
    if (tier == 3) {
        tooltip.insert(1, t3);
    }
    if (tier == 4) {
        tooltip.insert(1, t4);
    }
    if (tier == 5) {
        tooltip.insert(1, t5);
    }
    if (tier == 6) {
        tooltip.insert(1, t6);
    }
    if (tier == 7) {
        tooltip.insert(1, premium);
    }
}

public function addTierWithInfo(stack as IItemStack , tooltip as stdlib.List<Component>, flag as TooltipFlag, tier as int, info as Component) as void {
    var t1 = Component.literal("Tier 1").setStyle(<constant:formatting:gray>);
    var t2 = Component.literal("Tier 2").setStyle(<constant:formatting:green>);
    var t3 = Component.literal("Tier 3").setStyle(<constant:formatting:aqua>);
    var t4 = Component.literal("Tier 4").setStyle(<constant:formatting:light_purple>);
    var t5 = Component.literal("Tier 5").setStyle(<constant:formatting:gold>);
    var t6 = Component.literal("Tier 6").setStyle(<constant:formatting:red>);
    var premium = Component.literal("Premium Item").setStyle(<constant:formatting:dark_red>);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);
    tooltip.remove(1);

    if (tier == 1) {
        tooltip.insert(1, info);
        tooltip.insert(1, t1);
    }
    if (tier == 2) {
        tooltip.insert(1, info);
        tooltip.insert(1, t2);
    }
    if (tier == 3) {
        tooltip.insert(1, info);
        tooltip.insert(1, t3);
    }
    if (tier == 4) {
        tooltip.insert(1, info);
        tooltip.insert(1, t4);
    }
    if (tier == 5) {
        tooltip.insert(1, info);
        tooltip.insert(1, t5);
    }
    if (tier == 6) {
        tooltip.insert(1, info);
        tooltip.insert(1, t6);
    }
    if (tier == 7) {
        tooltip.insert(1, info);
        tooltip.insert(1, premium);
    }
}

<item:lrarmor:dea_armed_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 1);
});
<item:lrarmor:dea_armed_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 1);
});
<item:lrarmor:dea_armed_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 1);
});
<item:lrarmor:dea_armed_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 1);
});

<item:lrarmor:scout_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 3);
});
<item:lrarmor:scout_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 3);
});
<item:lrarmor:scout_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 3);
});
<item:lrarmor:scout_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 3);
});

<item:lrarmor:fbi_armed_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 2);
});
<item:lrarmor:fbi_armed_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 2);
});
<item:lrarmor:fbi_armed_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 2);
});
<item:lrarmor:fbi_armed_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 2);
});

<item:lrarmor:attacker_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 4);
});
<item:lrarmor:attacker_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 4);
});
<item:lrarmor:attacker_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 4);
});
<item:lrarmor:attacker_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 4);
});

<item:lrarmor:defender_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 5);
});
<item:lrarmor:defender_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 5);
});
<item:lrarmor:defender_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 5);
});
<item:lrarmor:defender_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 5);
});

<item:lrarmor:sniper_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:sniper_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:sniper_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:sniper_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});

<item:lrarmor:medical_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:medical_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:medical_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});
<item:lrarmor:medical_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 6);
});



<item:lrarmor:joker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0007", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:joker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0007", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:joker_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0007", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
// Removed gravity from helmet
// Removed block reach from helmet

<item:lrarmor:joker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0007", "generic.armor", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:joker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0007", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:joker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0007", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
// Removed gravity from chestplate
<item:lrarmor:joker_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:forge:block_reach>, "845db27c-c624-495f-8c9f-845db27c0007", "forge:block_reach", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]); // All 8 reach from all pieces

<item:lrarmor:joker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0007", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:joker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0007", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:joker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0007", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:joker_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0007", "forge:entity_gravity", -0.02, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]); // -0.02 from -0.01 from helmet and -0.01 from leggings
// Removed block reach from leggings

<item:lrarmor:joker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0007", "generic.armor", 6, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:joker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0007", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:joker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0007", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:joker_boots>.anyDamage().addGlobalAttributeModifier(<attribute:forge:entity_gravity>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0007", "forge:entity_gravity", -0.02, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]); // -0.02 from -0.01 from chestplate and -0.01 from boots
// Removed block reach from boots


<item:lrarmor:joker_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:joker_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:joker_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:joker_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});


<item:lrarmor:irs_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "9f3d476d-c118-4544-8365-9f3d476d0008", "generic.armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:irs_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "9f3d476d-c118-4544-8365-9f3d476d0008", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:irs_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "9f3d476d-c118-4544-8365-9f3d476d0008", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:irs_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.max_health>, "9f3d476d-c118-4544-8365-9f3d476d0008", "generic.max_health", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);


<item:lrarmor:irs_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "845db27c-c624-495f-8c9f-845db27c0008", "generic.armor", 11, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:irs_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "845db27c-c624-495f-8c9f-845db27c0008", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:irs_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "845db27c-c624-495f-8c9f-845db27c0008", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:irs_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.max_health>, "845db27c-c624-495f-8c9f-845db27c0008", "generic.max_health", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:irs_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:forge:block_reach>, "845db27c-c624-495f-8c9f-845db27c0008", "forge:block_reach", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]); // All 8 reach from all pieces

<item:lrarmor:irs_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0008", "generic.armor", 10, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:irs_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0008", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:irs_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0008", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:irs_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.max_health>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0008", "generic.max_health", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:irs_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "6d8d9b1a-0a2a-4f5b-8c9d-6d8d9b1a0008", "generic.movement_speed", 0.2, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]); // 0.2 from 0.1 from helmet and 0.1 from leggings


<item:lrarmor:irs_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0008", "generic.armor", 7, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:irs_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0008", "tacz:tacz.bullet_resistance", 0.05, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:irs_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0008", "generic.armor_toughness", 6.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:irs_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.max_health>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0008", "generic.max_health", 2, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:irs_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.movement_speed>, "1e6f7d5c-2c3b-4a1e-8e9f-1e6f7d5c0008", "generic.movement_speed", 0.2, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]); // 0.2 from 0.1 from chestplate and 0.1 from boots



<item:lrarmor:irs_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:irs_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:irs_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});
<item:lrarmor:irs_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTier(stack, tooltip, flag, 7);
});

<item:lrarmor:armored_chemical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:armored_chemical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:armored_chemical_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:armored_chemical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:armored_chemical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:armored_chemical_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "generic.armor_toughness", 5.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:armored_chemical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "generic.armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:armored_chemical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:armored_chemical_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "generic.armor_toughness", 4.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:armored_chemical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:armored_chemical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "tacz:tacz.bullet_resistance", 0.04, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:armored_chemical_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "generic.armor_toughness", 4.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);

<item:lrarmor:armored_chemical_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 5, Component.literal("Protects against visual debuffs (Blindess, Nausea)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:armored_chemical_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 5, Component.literal("Protects against damage debuffs (Poison, Wither, Weakness)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:armored_chemical_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 5, Component.literal("Protects against speed debuffs (Slowness)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:armored_chemical_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 5, Component.literal("Full set protects against all debuff effects.").setStyle(<constant:formatting:gray>));
});


<item:lrarmor:chemical_protective_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:chemical_protective_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:head>]);
<item:lrarmor:chemical_protective_helmet>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "1a2b3c4d-5e6f-7a8b-9c0d-1a2b3c4d0003", "generic.armor_toughness", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:head>]);

<item:lrarmor:chemical_protective_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "generic.armor", 9, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:chemical_protective_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:chest>]);
<item:lrarmor:chemical_protective_chestplate>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "2b3c4d5e-6f7a-8b9c-0d1e-2b3c4d5e0003", "generic.armor_toughness", 3.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:chest>]);

<item:lrarmor:chemical_protective_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "generic.armor", 8, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:chemical_protective_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:legs>]);
<item:lrarmor:chemical_protective_leggings>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "3c4d5e6f-7a8b-9c0d-1e2f-3c4d5e6f0003", "generic.armor_toughness", 2.5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:legs>]);

<item:lrarmor:chemical_protective_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "generic.armor", 5, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:chemical_protective_boots>.anyDamage().addGlobalAttributeModifier(<attribute:tacz:tacz.bullet_resistance>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "tacz:tacz.bullet_resistance", 0.01, AttributeOperation.MULTIPLY_BASE, [<constant:minecraft:equipmentslot:feet>]);
<item:lrarmor:chemical_protective_boots>.anyDamage().addGlobalAttributeModifier(<attribute:minecraft:generic.armor_toughness>, "4d5e6f7a-8b9c-0d1e-2f3a-4d5e6f7a0003", "generic.armor_toughness", 2.0, AttributeOperation.ADDITION, [<constant:minecraft:equipmentslot:feet>]);


<item:lrarmor:chemical_protective_helmet>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 4, Component.literal("Protects against visual debuffs (Blindess, Nausea)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:chemical_protective_chestplate>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 4, Component.literal("Protects against damage debuffs (Poison, Wither, Weakness)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:chemical_protective_leggings>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 4, Component.literal("Protects against speed debuffs (Slowness)").setStyle(<constant:formatting:gray>));
});
<item:lrarmor:chemical_protective_boots>.anyDamage().modifyTooltip((stack, tooltip, flag) => {
    addTierWithInfo(stack, tooltip, flag, 4, Component.literal("Full set protects against all debuff effects.").setStyle(<constant:formatting:gray>));
});