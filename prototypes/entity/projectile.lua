data:extend({
    {
        type = "projectile",
        name = "incendiary-bullet-trace",
        flags = { "not-on-map" },
        collision_box = { { -0.05, -0.25 }, { 0.05, 0.25 } },
        acceleration = 0,
        direction_only = true,
        animation =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/incendiary-bullet/incendiary-bullet-trace.png",
            frame_count = 1,
            width = 3,
            height = 100,
            priority = "high"
        },
    },
    {
        type = "projectile",
        name = "incendiary-shotgun-pellet",
        flags = { "not-on-map" },
        collision_box = { { -0.05, -0.25 }, { 0.05, 0.25 } },
        acceleration = 0,
        direction_only = true,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "damage",
                        damage = { amount = 6, type = "physical" }
                    },
                    {
                        type = "damage",
                        damage = { amount = 4, type = "fire" }
                    },
                    {
                        type = "create-fire",
                        entity_name = "fire-flame"
                    },
                    {
                        type = "create-sticker",
                        sticker = "fire-sticker"
                    }
                }
            }
        },
        animation =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/incendiary-pellet/incendiary-shotgun-pellet.png",
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
    },

    {
        type = "projectile",
        name = "molotov-cocktail",
        flags = { "not-on-map" },
        acceleration = 0.005,
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "fiery-explosion"
                        },
                        {
                            type = "create-entity",
                            entity_name = "napalm-scorchmark",
                            check_buildability = true
                        },
                        {
                            type = "play-sound",
                            sound =
                            {
                                {
                                    filename = "__IncendiaryMunitions__/sound/explosion/glass-breaking.ogg",
                                    volume = 1
                                }
                            }
                        }
                    }
                }
            },
            {
                type = "area",
                radius = 5,
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "damage",
                            damage = { amount = 5, type = "physical" }
                        }
                    }
                }
            },
            {
                type = "cluster",
                cluster_count = 11,
                distance = 5,
                distance_deviation = 4,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "molotov-splash",
                    direction_deviation = 0.6,
                    starting_speed = 0.25,
                    starting_speed_deviation = 0.4
                }
            }
        },
        light = { intensity = 0.5, size = 4 },
        animation = {
            filename = "__IncendiaryMunitions__/graphics/entity/molotov/molotov-in-flight.png",
            frame_count = 1,
            width = 24,
            height = 24,
            priority = "high"
        },
        shadow =
        {
            filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
            frame_count = 1,
            width = 24,
            height = 24,
            priority = "high"
        }
    },

    {
        type = "projectile",
        name = "molotov-splash",
        flags = { "not-on-map" },
        acceleration = 0.005,
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "fiery-splash"
                        },
                        {
                            type = "create-entity",
                            entity_name = "napalm-scorchmark",
                            check_buildability = true
                        }
                    }
                }
            },
            {
                type = "area",
                radius = 7,
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "damage",
                            damage = { amount = 20, type = "fire" }
                        },
                        {
                            type = "create-entity",
                            entity_name = "fiery-splash"
                        },
                        {
                            type = "create-fire",
                            entity_name = "napalm-flame"
                        },
                        {
                            type = "create-sticker",
                            sticker = "napalm-sticker"
                        }
                    }
                }
            }
        },
        light = { intensity = 0.5, size = 4 },
        animation =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/molotov/molotov-splash.png",
            frame_count = 1,
            width = 24,
            height = 24,
            priority = "high"
        },
        shadow =
        {
            filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
            frame_count = 1,
            width = 24,
            height = 24,
            priority = "high"
        }
    }
})