data:extend(
    {
        {
            type = "technology",
            name = "napalm",
            icon = "__IncendiaryMunitions__/graphics/icons/napalm.png",
            icon_size = 128,
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "fire-trap"
                },
                {
                    type = "unlock-recipe",
                    recipe = "molotov-cocktail"
                }
            },
            prerequisites = {"military-3", "incendiary-ammo", "flammables"},
            unit =
            {
                count = 400,
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