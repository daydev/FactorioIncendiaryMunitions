

data:extend({
    {
        type = "land-mine",
        name = "fire-trap",
        icon = "__IncendiaryMunitions__/graphics/icons/fire-trap.png",
        icon_size = 32,
        resistances = {
            { type = "fire", percent = 100 },
            { type = "explosion", percent = 100 },
            { type = "physical", percent = 100 },
            { type = "acid", percent = 100 }
        },
        flags =
        {
            "placeable-player",
            "placeable-enemy",
            "player-creation",
            "placeable-off-grid",
            "not-on-map"
        },
        minable = { mining_time = 1, result = "fire-trap" },
        max_health = 15,
        corpse = "napalm-scorchmark",
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        dying_explosion = "explosion-hit",
        picture_safe =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/fire-trap/fire-trap-safe.png",
            priority = "medium",
            width = 32,
            height = 32
        },
        picture_set =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/fire-trap/fire-trap.png",
            priority = "medium",
            width = 32,
            height = 32
        },
        trigger_radius = 2.5,
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                source_effects =
                {
                    {
                        type = "nested-result",
                        affects_target = true,
                        action =
                        {
                            type = "area",
                            radius = 6,
                            collision_mask = { "player-layer" },
                            action_delivery =
                            {
                                type = "instant",
                                target_effects =
                                {
                                    {
                                        type = "damage",
                                        damage = { amount = 200, type = "fire" }
                                    },
                                    {
                                        type = "create-sticker",
                                        sticker = "napalm-sticker"
                                    },
                                    {
                                        type = "create-fire",
                                        entity_name = "napalm-flame"
                                    }
                                }
                            }
                        },
                    },
                    {
                        type = "create-entity",
                        entity_name = "fiery-explosion"
                    },
                    {
                        type = "damage",
                        damage = { amount = 500, type = "fire" }
                    }
                }
            }
        },
    }
})