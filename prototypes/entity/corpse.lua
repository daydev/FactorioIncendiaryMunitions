data:extend({
    {
        type = "corpse",
        name = "napalm-scorchmark",
        icon = "__base__/graphics/icons/small-scorchmark.png",
        icon_size = 32,
        flags = { "placeable-neutral", "not-on-map" },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        subgroup = "remnants",
        order = "d[remnants]-b[scorchmark]-b[fire]",
        time_before_removed = 60 * 30, -- 30 seconds
        final_render_layer = "remnants",
        animation =
        {
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 56
            },

            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 112
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 168
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 224
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 280
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 336
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 392
            },
            {
                width = 115,
                height = 56,
                frame_count = 1,
                direction_count = 1,
                filename = "__IncendiaryMunitions__/graphics/entity/napalm/napalm-scorchmark.png",
                y = 448
            }
        }
    }
})