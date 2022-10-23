local pipes = {
    north = {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/north.png",
        priority = "extra-high",
        width = 236,
        height = 235
    }
}

RECIPE {
    type = "recipe",
    name = "tar-processing-unit-mk03",
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {"tar-processing-unit-mk02", 1},
        {"processing-unit", 20},
        {"niobium-plate", 30},
        {"electric-engine-unit", 2},
        {"pump", 2},
    },
    results = {
        {"tar-processing-unit-mk03", 1}
    }
}

ITEM {
    type = "item",
    name = "tar-processing-unit-mk03",
    icon = "__pycoalprocessinggraphics__/graphics/icons/tar-processing-unit-mk03.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-cp-buildings-mk03",
    order = "z1",
    place_result = "tar-processing-unit-mk03",
    stack_size = 10
}

ENTITY {
    type = "assembling-machine",
    name = "tar-processing-unit-mk03",
    icon = "__pycoalprocessinggraphics__/graphics/icons/tar-processing-unit-mk03.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tar-processing-unit-mk03"},
    fast_replaceable_group = "tar-processing-unit",
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-5.3, -5.3}, {5.3, 5.3}},
    selection_box = {{-5.5, -5.5}, {5.5, 5.5}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"tar"},
    crafting_speed = 3,
    energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06,
    },
    energy_usage = "300kW",
    animation = {
        layers = {
        {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/r.png",
        width = 352,
        height = 384,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        },
        {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/mask.png",
        width = 352,
        height = 384,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        tint = {r = 0.223, g = 0.490, b = 0.858, a = 1.0},
        },
        {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/l.png",
        width = 352,
        height = 384,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        draw_as_glow = true,
        },
        {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/sh.png",
        width = 416,
        height = 416,
        frame_count = 1,
        shift = util.by_pixel(0, -16),
        draw_as_shadow = true,
        },
        {
        filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/ao.png",
        width = 416,
        height = 416,
        frame_count = 1,
        shift = util.by_pixel(0, -0),
        },
    },
},
    working_visualisations = {
        {
            north_position = util.by_pixel(-0, -128),
            west_position = util.by_pixel(-0, -128),
            south_position = util.by_pixel(-0, -128),
            east_position = util.by_pixel(-0, -128),
            animation = {
                filename = "__pycoalprocessinggraphics__/graphics/entity/tar-processing-unit/anim.png",
                frame_count = 40,
                line_length = 5,
                width = 352,
                height = 96,
                animation_speed = 0.25
            }
        }
    },
    fluid_boxes = {
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {0, 6}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {2, 6}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-3, -6}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {1, -6}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {-1, -6}}}
        },
        {
            production_type = "output",
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            pipe_picture = DATA.Pipes.pictures("assembling-machine-3", nil, {0.0, -0.96}, nil, nil),
            base_level = 1,
            pipe_connections = {{type = "output", position = {3, -6}}}
        },
        off_when_no_fluid_recipe = true
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.3},
        apparent_volume = 2.5
    }
}
