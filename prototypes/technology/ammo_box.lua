data:extend({
    {
        type = "technology",
        name = "incendiary-ammo-box",
        icon = "__IncendiaryMunitions__/graphics/icons/incendiary-ammo-box.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "incendiary-bullet-ammo-box"
            }
        },
        prerequisites = { "incendiary-ammo", "ammo-box" },
        unit =
        {
            count = 50,
            ingredients =
            {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 },
                { "science-pack-3", 1 }
            },
            time = 30
        },
        order = "e-m-a"
    }
})