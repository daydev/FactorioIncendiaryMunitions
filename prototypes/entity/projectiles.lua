data:extend(
{
    {
        type = "projectile",
        name = "incendiary-bullet-trace",
        flags = {"not-on-map"},
        collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
        acceleration = 0,
        direction_only = true,
        animation =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/incendiary-bullet-trace.png",
            frame_count = 1,
            width = 3,
            height = 100,
            priority = "high"
        },
    },
    {
        type = "projectile",
        name = "incendiary-shotgun-pellet",
        flags = {"not-on-map"},
        collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
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
                        damage = {amount = 4, type = "physical"}
                    },
                    {
                        type = "damage",
                        damage = {amount = 1, type = "fire"}
                    },
                    {
                        type = "create-fire",
                        entity_name = "fire-flame"
                    }
                }
            }
        },
        animation =
        {
            filename = "__IncendiaryMunitions__/graphics/entity/incendiary-shotgun-pellet.png",
            frame_count = 1,
            width = 3,
            height = 50,
            priority = "high"
        },
    }
}
)