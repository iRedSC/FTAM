ItemEvents.tooltip((event) => {
    // Add tooltip to all of these items
    // event.add(['reforgedutils:crowbar'], ["", '§eINFO: §7Hold Right-Click on a Red/Blue Barrel to collect its loot!'])
    // event.add(['reforgedutils:base_disassembler'], ["", '§eINFO: §7Hold Right-Click on a Protection block to destroy it. This will delete the block and it will not drop as an item!'])
    // event.add(['reforgedutils:recycler'], ["", '§eINFO: §7This Recycler can be found in the ore processing rooms in Spawn'])
    // event.add(['reforgedutils:advanced_recycler'], ["", '§eINFO: §7Can be found throughout the PvP Zone', "§bThe Advanced Recycler can process 3 items at once and provides double the amount compared to the normal recycler."])
    // event.add(['reforgedutils:screw', 'reforgedutils:empty_can', 'reforgedutils:small_battery', 'reforgedutils:empty_canister', 'reforgedutils:nail', 'reforgedutils:electric_motor', 'reforgedutils:actuator', 'reforgedutils:automatic_gate', 'reforgedutils:broken_filter', 'reforgedutils:carbon_fibre', 'reforgedutils:carbon_mesh', 'reforgedutils:carbon_plate', 'reforgedutils:copper_wiring', 'reforgedutils:diode', 'reforgedutils:rotor', 'reforgedutils:small_conductor', 'reforgedutils:small_motor', 'reforgedutils:solenoid'], ["", '§eINFO: §7This can be found in §bBlue Barrels §7in the PvP Zone and can be processed into scrap metal in a Recycler.'])
    // event.add(['reforgedutils:battery', 'reforgedutils:air_filter', 'reforgedutils:emitter', 'reforgedutils:fuel_cell', 'reforgedutils:redstone_wires', 'reforgedutils:broken_graphics_card', 'reforgedutils:control_circuit', 'reforgedutils:cpu', 'reforgedutils:electric_pump', 'reforgedutils:electric_piston', 'reforgedutils:fuse', 'reforgedutils:hdd', 'reforgedutils:ram', 'reforgedutils:robotic_arm', 'reforgedutils:ssd'], ["", '§eINFO: §7This can be found in §cRed Barrels §7in the PvP Zone and can be processed into scrap metal in a Recycler.'])
    // event.add(['reforgedutils:gunmetal', 'reforgedutils:gunmetal_nugget', 'reforgedutils:plate'], ["", '§bThis can be used to forge weapons in the Gun Smith Table or to make Armor'])
    event.add(
        ["reforgedutils:battery"],
        ["", "§eINFO: §7You can use this to upgrade your base block."]
    );
    event.add(
        ["reforgedutils:empty_bloodbag"],
        [
            "",
            "§eINFO: §7Can be filled by yourself by right-clicking, or fill it by shift right-clicking another player.",
        ]
    );
    event.add(
        ["reforgedutils:full_bloodbag"],
        [
            "",
            "§eINFO: §7Restores 6 hearts of health after use, has 5s cooldown.",
        ]
    );
    event.add(
        ["reforgedutils:energy_drink"],
        ["", "§eINFO: §7Grants 20 seconds of Speed and Haste II"]
    );
    event.add(
        ["reforgedutils:medkit"],
        [
            "",
            "§eINFO: §7Restores 10 hearts of health after use, has 10s cooldown.",
        ]
    );
    event.add(
        ["reforgedutils:painkillers"],
        [
            "",
            "§eINFO: §7Restores 8 hearts of health after use, has 30s cooldown.",
        ]
    );
    // event.add(['minecraft:clay'], ["", '§eINFO: §7Can be created by processing Mud in an Enrichment Chamber'])
    // event.add(['minecraft:mud'], ["", '§eINFO: §7Can be created by processing Dirt in an Chemical Injection Chamber'])
    // event.add(['reforgedutils:token'], ["", '§eINFO: §7Used to purchase items in the Admin Shop.'])
    // event.add(['reforgedutils:loot_box_1'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
    // event.add(['reforgedutils:loot_box_2'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
    // event.add(['reforgedutils:loot_box_3'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
    // event.add(['reforgedutils:loot_box_4'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
    // event.add(['reforgedutils:loot_box_5'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
    // event.add(['reforgedutils:loot_box_6'], ["", '§eINFO: §7This item can be looted in the PvP Zone from Barrels and Supply Drops, once you leave the PvP Zone it is automatically sold and the value is added to your balance.'])
});
