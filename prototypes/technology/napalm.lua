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
            prerequisites = {"incendiary-ammo", "flammables"},
            unit =
            {
                count = 300,
                ingredients =
                {
                    {"science-pack-1", 1},
                    {"science-pack-2", 1},
                    {"science-pack-3", 1},
                    {"military-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 30
            },
            order = "e-l-a"
        }
    }
)