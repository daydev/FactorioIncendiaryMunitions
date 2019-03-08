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
        prerequisites = {"military-2"},
        unit =
        {
            count = 250,
            ingredients =
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1}
            },
            time = 30
        },
        order = "e-l-a"
    }
}
)