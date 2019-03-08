data:extend{
    {
        type = "capsule",
        name = "molotov-cocktail",
        icon = "__IncendiaryMunitions__/graphics/icons/molotov-cocktail.png",
        icon_size = 32,
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "grenade",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 20,
                ammo_type =
                {
                    category = "grenade",
                    target_type = "position",
                    action =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = "molotov-cocktail",
                            starting_speed = 0.05
                        }
                    }
                }
            }
        },
        subgroup = "capsule",
        order = "b[molotov]-a[normal]",
        stack_size = 100
    }
}

