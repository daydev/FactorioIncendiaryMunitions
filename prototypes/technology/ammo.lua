data:extend(
{
    {
        type = "technology",
        name = "incendiary-ammo",
        icon = "__IncendiaryMunitions__/graphics/icons/incendiary-ammo.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "incendiary-rounds-magazine"
            },
            {
                type = "unlock-recipe",
                recipe = "incendiary-shotgun-shell"
            }
        },
        prerequisites = {"military-4"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"military-science-pack", 2}
            },
            time = 30
        },
        order = "e-l-a"
    }
}
)