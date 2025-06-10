local icons = "__FTL-Ships__/graphics/icons/"

local function ship_layer(name, scale, scale_shadow, shadow_extra_shift_x, shadow_extra_shift_y)
  return {
		layers =
    {
      {
        width = 502,
        height = 502,
        frame_count = 1,
        direction_count = 128,
        shift = {0, 0},
        scale = scale,
        animation_speed = animation_speed,
        max_advance = 1,
        priority = "extra-high",
        stripes = {
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a.png", width_in_frames = 8, height_in_frames = 8},
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b.png", width_in_frames = 8, height_in_frames = 8},
		    }
		  },
      {
        width = 502,
        height = 502,
        frame_count = 1,
        draw_as_shadow = true,
        direction_count = 128,
        shift = {2 + shadow_extra_shift_x, 2 + shadow_extra_shift_y},
        scale = scale_shadow,
        max_advance = 1,
        priority = "low",
        stripes = {
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_Shadow.png", width_in_frames = 8, height_in_frames = 8},
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_Shadow.png", width_in_frames = 8, height_in_frames = 8},
        }
      },
    },
  }
end



data:extend({
  {
    type = "car",
    name = "se-space_Elite",
    icon = icons .. "Elite.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Elite"},
    max_health = 2500,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
    inventory_size = 80,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-3, -4}, {3, 4}},
    collision_mask = {layers = {}},
    selection_box = {{-3, -4}, {3, 4}},
    effectivity = 0.5,
    braking_power = "7000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.9,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {2.5, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-2.5, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "5000kW",
    terrain_friction_modifier = 0,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-4.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {4.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Elite", 0.9, 1.3, 0, 0),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Kestrel",
    icon = icons .. "Kestrel.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Kestrel"},
    max_health = 2000,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 700,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 80,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-2, -4}, {2, 4}},
    collision_mask = {layers = {}},
    selection_box = {{-2, -4}, {2, 4}},
    effectivity = 0.5,
    braking_power = "6000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.9,
      fuel_inventory_size = 3,
      smoke =
     {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {2.5, 4.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-2.5, 4.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "4500kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-2.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {2.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Kestrel", 1.25, 1.3, 0.5, 0),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Stealth",
    icon = icons .. "Stealth.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Stealth"},
    max_health = 1500,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 60,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-2, -3}, {2, 4}},
    collision_mask = {layers = {}},
    selection_box = {{-2, -3}, {2, 4}},
    effectivity = 0.5,
    braking_power = "9000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.5, 0.5},
          frequency = 750,
          position = {0, 4.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-0.5, 0.5},
          frequency = 750,
          position = {0, 4.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "7000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-3.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {3.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Stealth", 1.4, 1.3, -1.2, -1),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Rigger",
    icon = icons .. "Rigger.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Rigger"},
    max_health = 1000,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 900,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 100,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-3, -1}, {3, 2}},
    collision_mask = {layers = {}},
    selection_box = {{-3, -1}, {3, 2}},
    effectivity = 0.5,
    braking_power = "5000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.7,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {2.0, 3.0},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-2.0, 3.0},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "3000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-3.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {3.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Rigger", 1, 0.93, 0.75, 0),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Flagship",
    icon = icons .. "Flagship.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Flagship"},
    max_health = 10000,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 120,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-8, -6}, {8, 6}},
    collision_mask = {layers = {}},
    selection_box = {{-8, -6}, {8, 6}},
    effectivity = 0.5,
    braking_power = "4000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.7,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {0.5, 6.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-0.5, 6.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {8.0, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-8.0, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "1500kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-4.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {0, -32},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {4.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Flagship", 1.5, 2.04, 0, 0),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Fighter",
    icon = icons .. "Fighter.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Fighter"},
    max_health = 2500,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 80,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-3, -4}, {3, 4}},
    collision_mask = {layers = {}},
    selection_box = {{-3, -4}, {3, 4}},
    effectivity = 0.5,
    braking_power = "7000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {2.5, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-2.5, 4.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "5000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-4.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {4.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Fighter", 0.926, 1.3, 0, 0),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Auto_Scout",
    icon = icons .. "Auto_Scout.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Auto_Scout"},
    max_health = 1000,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.005,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 40,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-3, -1}, {3, 1}},
    collision_mask = {layers = {}},
    selection_box = {{-3, -1}, {3, 1}},
    effectivity = 0.5,
    braking_power = "10000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {2.5, 0.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-2.5, 0.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "8000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-0.7, -27},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {0.7, -27},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Auto_Scout", 0.6, 0.83, 0.5, -1),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Auto_Assault",
    icon = icons .. "Auto_Assault.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Auto_Assault"},
    max_health = 1500,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.005,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 40,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-3, -1}, {3, 1}},
    collision_mask = {layers = {}},
    selection_box = {{-3, -1}, {3, 1}},
    effectivity = 0.5,
    braking_power = "10000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.5, 0.5},
          frequency = 750,
          position = {1.5, 1},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-0.5, 0.5},
          frequency = 750,
          position = {-1.5, 1},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "8000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-0.7, -27},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {0.7, -27},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Auto_Assault", 0.7, 1.12, 0.5, -1),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})

data:extend({
    {
    type = "car",
    name = "se-space_Fed_Cruiser",
    icon = icons .. "Fed_Cruiser.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Fed_Cruiser"},
    max_health = 3000,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 100,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-2, -4}, {2, 3}},
    collision_mask = {layers = {}},
    selection_box = {{-2, -4}, {2, 3}},
    effectivity = 0.5,
    braking_power = "6000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.7,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {1.5, 0.5},
          frequency = 750,
          position = {3.0, 6.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-1.5, 0.5},
          frequency = 750,
          position = {-3.0, 6.3},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "4000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-2.0, -33},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {2.0, -33},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Fed_Cruiser", 1.1, 1.7, -0.7, -1),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})


data:extend({
    {
    type = "car",
    name = "se-space_Bomber",
    icon = icons .. "Bomber.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Bomber"},
    max_health = 1750,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 40,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-2, -3}, {2, 1}},
    collision_mask = {layers = {}},
    selection_box = {{-2, -3}, {2, 1}},
    effectivity = 0.5,
    braking_power = "9500kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.5, 0.5},
          frequency = 750,
          position = {1.5, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-0.5, 0.5},
          frequency = 750,
          position = {-1.5, 1.5},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "7500kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-2.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {2.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Bomber", 0.9, 1.01, -0.75, -0.5),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})


data:extend({
    {
    type = "car",
    name = "se-space_Fed_Scout",
    icon = icons .. "Fed_Scout.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "se-space_Fed_Scout"},
    max_health = 1500,
    open_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    close_sound = { filename = "__FTL-Ships__/sounds/door.ogg", volume=1.7 },
    rotation_speed = 0.006,
    weight = 800,
    guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
        inventory_size = 40,
    has_belt_immunity = true,
    corpse = "big-remnants",
    dying_explosion = "massive-explosion",
    energy_per_hit_point = 1,
    equipment_grid="ftl-equipment-grid",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 50,
        decrease = 50
      }
    },
    collision_box = {{-2, -3}, {2, 1}},
    collision_mask = {layers = {}},
    selection_box = {{-2, -3}, {2, 1}},
    effectivity = 0.5,
    braking_power = "9000kW",
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 0.8,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "car-smoke",
          deviation = {0.5, 0.5},
          frequency = 750,
          position = {2.5, 3},
          starting_frame = 0,
          starting_frame_deviation = 0
        },
        {
          name = "car-smoke",
          deviation = {-0.5, 0.5},
          frequency = 750,
          position = {-2.5, 3},
          starting_frame = 0,
          starting_frame_deviation = 0
        }
      }
    },
    consumption = "7000kW",
    terrain_friction_modifier = 0,
    friction = 0.003,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {-1.0, -30},
        size = 3,
        intensity = 0.9
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 3,
          width = 200,
          height = 200
        },
        shift = {1.0, -30},
        size = 3,
        intensity = 0.9
      }
    },
    render_layer = "wires-above", 
    final_render_layer = "wires-above",
    animation = ship_layer("Fed_Scout", 0.9, 1.01, -0.75, -0.5),
    sound_no_fuel =
    {
      {
        filename = "__FTL-Ships__/sounds/out_of_fuel_distress.ogg",
        volume = 0.6
      },
    },
    stop_trigger_speed = 0,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__FTL-Ships__/sounds/ftl_jump_arrive.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.5;
    vehicle_impact_sound =  { filename = "__FTL-Ships__/sounds/shield_hit2.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__FTL-Ships__/sounds/engines_on.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__FTL-Ships__/sounds/ftl_jump_start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__FTL-Ships__/sounds/engines_off.ogg",
        volume = 0.9
      },
      match_speed_to_activity = false,
    },
   }
})
