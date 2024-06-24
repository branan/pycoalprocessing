local pipes = {
    north = {
        filename = '__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/top.png',
        priority = 'low',
        width = 224,
        height = 230
    },
    south = {
        filename = '__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/bottom.png',
        priority = 'extra-high',
        width = 224,
        height = 230
    },
    west = {
        filename = '__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/left.png',
        priority = 'extra-high',
        width = 224,
        height = 230
    },
    east = {
        filename = '__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/right.png',
        priority = 'extra-high',
        width = 224,
        height = 230
    }
}

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk01',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'soil',               300},
        {'pipe',               15},
        {'electronic-circuit', 25},
        {'stone',              100},
        {'iron-plate',         30},
        {'treated-wood',       50},
        {'steam-engine',       1},
        {'small-lamp',         20}
    },
    results = {
        {'ralesia-plantation-mk01', 1}
    }
}:add_unlock('ralesia')

for i = 1, 4 do
    if not mods.pyalienlife and i == 2 then return end

    local name = 'ralesia-plantation-mk0' .. i
    local icon = '__pycoalprocessinggraphics__/graphics/icons/' .. name .. '.png'
    local icon_size = 64

    ITEM {
        type = 'item',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {},
        subgroup = 'py-cp-buildings-mk0' .. i,
        order = 'f',
        place_result = name,
        stack_size = 10
    }

    ENTITY {
        type = 'assembling-machine',
        name = name,
        icon = icon,
        icon_size = icon_size,
        flags = {'placeable-neutral', 'player-creation'},
        minable = {mining_time = 1, result = name},
        fast_replaceable_group = 'ralesia-plantation',
        max_health = 300 * i,
        corpse = 'big-remnants',
        dying_explosion = 'medium-explosion',
        collision_box = {{-3.2, -3.2}, {3.2, 3.2}},
        selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
        match_animation_speed_to_activity = false,
        module_specification = {
            module_slots = i
        },
        allowed_effects = {'consumption', 'speed', 'productivity', 'pollution'},
        crafting_categories = {'ralesia'},
        crafting_speed = 0.3 * i,
        energy_source = {
            type = 'electric',
            usage_priority = 'secondary-input',
            emissions_per_minute = -4 * i,
        },
        energy_usage = (400 * i) .. 'kW',
        animation = {
            filename = '__pycoalprocessinggraphics__/graphics/entity/ralesia-plantation/ralesia-plantation.png',
            width = 224,
            height = 230,
            frame_count = 50,
            line_length = 8,
            animation_speed = 0.5,
            run_mode = 'forward-then-backward',
            shift = {0.0, -0.163}
        },
        fluid_boxes = {
            --1
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-3', {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {0.0, 4.0}}}
            },
            {
                production_type = 'input',
                pipe_picture = py.pipe_pictures('assembling-machine-3', {-0.0, 3.837}, {-0.0, -3.837}, {4.0, 0.0}, {-4.0, 0.0}, pipes),
                pipe_covers = py.pipe_covers(true, true, true, true),
                base_area = 10,
                base_level = -1,
                pipe_connections = {{type = 'input', position = {0.0, -4.0}}}
            },
        },
        vehicle_impact_sound = {filename = '__base__/sound/car-metal-impact.ogg', volume = 0.65},
        working_sound = {
            sound = {filename = '__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg', volume = 1.2},
            idle_sound = {filename = '__pycoalprocessinggraphics__/sounds/ralesia-plantation.ogg', volume = 0.3},
            apparent_volume = 2.5
        }
    }
end

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk02',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk01', 1},
        {'plastic-bar',             50},
        {'engine-unit',             2},
        {'pump',                    4},
        {'advanced-circuit',        15}
    },
    results = {
        {'ralesia-plantation-mk02', 1}
    }
}

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk03',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk02', 1},
        {'electric-engine-unit',    4},
        {'niobium-plate',           20},
        {'pipe',                    20},
        {'processing-unit',         10}
    },
    results = {
        {'ralesia-plantation-mk03', 1}
    }
}

RECIPE {
    type = 'recipe',
    name = 'ralesia-plantation-mk04',
    energy_required = 0.5,
    enabled = false,
    ingredients = {
        {'ralesia-plantation-mk03', 1},
        {'low-density-structure',   10},
        {'nbfe-alloy',              10},
        {'kevlar',                  20},
    },
    results = {
        {'ralesia-plantation-mk04', 1}
    }
}
