instance_deactivate_all(true)
instance_activate_object(obj_player)

// Non-one-off upgrades with random value ranges
upgrade_pool = [
    {type: "attackdmg_melee", label: " Melee Damage", value: irandom_range(1,3)},
    {type: "attackrange_melee", label: " Melee Range", value: irandom_range(1,3) },
    {type: "attackspeed_melee", label: " Speed", value: irandom_range(1,3) },
    {type: "attackdmg_ranged", label: " Ranged Damage", value : irandom_range(1,3) },
    {type: "attackrange_ranged", label:" Ranged Range", value: irandom_range(1,3)},
    {type: "attackspeed_ranged", label: " Speed", value: irandom_range(1,3)},
    {type: "attackdmg_aoe", label: " AOE Damage", value: irandom_range(1,3)},
    {type: "attackrange_aoe", label: " AOE Range", value: irandom_range(1,3)},
    {type: "hp", label: "HP", value: irandom_range(1,3)},
    {type: "hp_max", label: " Max HP", value: irandom_range(1,3)},
    {type: "hp_regen", label: " HP Regen", value: irandom_range(1,3)}
];

// Create random upgrades from the pool with random values
available_upgrades = [];

for (var i = 0; i < 3; i++) { // Select 3 random upgrades to offer
    var random_upgrade = upgrade_pool[irandom(array_length(upgrade_pool) - 1)];

    random_upgrade.label ="+" + string(random_upgrade.value) + random_upgrade.label;
    array_push(available_upgrades, random_upgrade);
}

// One-off upgrades (unchanging)
one_off_upgrades = [
    {type: "hasRanged", label: "Equip Ranged Weapon", value: true},
    {type: "hasAOE", label: "Equip AOE Weapon", value: true},
    {type: "hasArmor", label: "Put on Armor", value: true}
];

// Combine one-off upgrades with random upgrades
all_upgrades = array_concat(available_upgrades, one_off_upgrades);

