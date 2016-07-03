data:extend({
    {
        type = "ammo",
        name = "incendiary-bullet-ammo-box",
        icon = "__IncendiaryMunitions__/graphics/icons/incendiary-ammo-box.png",
        flags = { "goes-to-main-inventory" },
        ammo_type =
        {
            category = "bullet",
            action =
            {
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "instant",
                        source_effects =
                        {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot"
                        },
                        target_effects =
                        {
                            {
                                type = "create-entity",
                                entity_name = "explosion-hit"
                            },
                            {
                                type = "damage",
                                damage = { amount = 3, type = "physical" }
                            },
                            {
                                type = "damage",
                                damage = { amount = 1, type = "fire" }
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            }
                        }
                    }
                },
                {
                    type = "direct",
                    action_delivery =
                    {
                        type = "projectile",
                        projectile = "incendiary-bullet-trace",
                        starting_speed = 1,
                        direction_deviation = 0.05,
                        range_deviation = 0.0,
                        max_range = 15,
                    }
                }
            }
        },
        magazine_size = 1000,
        subgroup = "ammo",
        order = "a[basic-clips]-d[incendiary-rounds-magazine]",
        stack_size = 100
    }
})