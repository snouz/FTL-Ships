data:extend
({
	{
    type = "car",
    name = "Elite",
    icon = "__FTL-Ships__/graphics/Icons/Elite.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Elite"},
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
	collision_mask = {},
    selection_box = {{-3, -4}, {3, 4}},
    effectivity = 0.5,
    braking_power = "7000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.9,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Elite_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Elite_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.0, 2},
		  scale = 1.3,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Elite_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Elite_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Kestrel",
    icon = "__FTL-Ships__/graphics/Icons/Kestrel.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Kestrel"},
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
	collision_mask = {},
    selection_box = {{-2, -4}, {2, 4}},
    effectivity = 0.5,
    braking_power = "6000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 1.25,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Kestrel_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Kestrel_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.5, 2},
		  scale = 1.3,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Kestrel_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Kestrel_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Stealth",
    icon = "__FTL-Ships__/graphics/Icons/Stealth.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Stealth"},
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
	collision_mask = {},
    selection_box = {{-2, -3}, {2, 4}},
    effectivity = 0.5,
    braking_power = "9000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
		        scale = 1.4,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Stealth_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Stealth_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {0.8, 1},
		  scale = 1.3,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Stealth_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Stealth_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Rigger",
    icon = "__FTL-Ships__/graphics/Icons/Rigger.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Rigger"},
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
	collision_mask = {},
    selection_box = {{-3, -1}, {3, 2}},
    effectivity = 0.5,
    braking_power = "5000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Rigger_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Rigger_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.75, 2},
		  scale = 0.93,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Rigger_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Rigger_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Flagship",
    icon = "__FTL-Ships__/graphics/Icons/Flagship.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Flagship"},
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
	collision_mask = {},
    selection_box = {{-8, -6}, {8, 6}},
    effectivity = 0.5,
    braking_power = "4000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 1.5,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Flagship_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Flagship_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.0, 2},
		  scale = 2.04,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Flagship_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Flagship_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Fighter",
    icon = "__FTL-Ships__/graphics/Icons/Fighter.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Fighter"},
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
	collision_mask = {},
    selection_box = {{-3, -4}, {3, 4}},
    effectivity = 0.5,
    braking_power = "7000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.926,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Fighter_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Fighter_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.0, 2},
		  scale = 1.3,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Fighter_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Fighter_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Auto_Scout",
    icon = "__FTL-Ships__/graphics/Icons/Auto_Scout.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Auto_Scout"},
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
	collision_mask = {},
    selection_box = {{-3, -1}, {3, 1}},
    effectivity = 0.5,
    braking_power = "10000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.6,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Auto_Scout_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Auto_Scout_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.5, 1},
		  scale = 0.83,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Auto_Scout_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Auto_Scout_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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

data:extend
({
	{
    type = "car",
    name = "Auto_Assault",
    icon = "__FTL-Ships__/graphics/Icons/Auto_Assault.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Auto_Assault"},
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
	collision_mask = {},
    selection_box = {{-3, -1}, {3, 1}},
    effectivity = 0.5,
    braking_power = "10000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.7,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Auto_Assault_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Auto_Assault_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {2.5, 1},
		  scale = 1.12,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Auto_Assault_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Auto_Assault_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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
data:extend
({
	{
    type = "car",
    name = "Fed_Cruiser",
    icon = "__FTL-Ships__/graphics/Icons/Fed_Cruiser.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Fed_Cruiser"},
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
	collision_mask = {},
    selection_box = {{-2, -4}, {2, 3}},
    effectivity = 0.5,
    braking_power = "6000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 1.1,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Fed_Cruiser_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Fed_Cruiser_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {1.3, 1},
		  scale = 1.7,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Fed_Cruiser_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Fed_Cruiser_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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


data:extend
({
	{
    type = "car",
    name = "Bomber",
    icon = "__FTL-Ships__/graphics/Icons/Bomber.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Bomber"},
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
	collision_mask = {},
    selection_box = {{-2, -3}, {2, 1}},
    effectivity = 0.5,
    braking_power = "9500kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.9,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Bomber_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Bomber_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {1.25, 1.5},
		  scale = 1.01,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Bomber_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Bomber_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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


data:extend
({
	{
    type = "car",
    name = "Fed_Scout",
    icon = "__FTL-Ships__/graphics/Icons/Fed_Scout.png",
    icon_size = 128,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "Fed_Scout"},
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
	collision_mask = {},
    selection_box = {{-2, -3}, {2, 1}},
    effectivity = 0.5,
    braking_power = "9000kW",
    burner =
    {
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
    animation =
	{
	  layers =
	  {
		{
                width = 4016/8,
                height = 4016/8,
                frame_count = 1,
                direction_count = 128,
                shift = {0.0, -0.0},
				scale = 0.9,
                animation_speed = animation_speed,
                max_advance = 1,
                priority = "extra-high",
                stripes =
		{
	       { filename = "__FTL-Ships__/graphics/Fed_Scout_a.png", width_in_frames = 8, height_in_frames = 8, },
		   { filename = "__FTL-Ships__/graphics/Fed_Scout_b.png", width_in_frames = 8, height_in_frames = 8, },
		   }
		 },
		{
		  width = 4016/8,
		  height = 4016/8,
		  frame_count = 1,
		  draw_as_shadow = true,
		  direction_count = 128,
		  shift = {1.25, 1.5},
		  scale = 1.01,
		  max_advance = 1,
		  priority = "low",
		  stripes =  {
			{ filename = "__FTL-Ships__/graphics/Shadows/Fed_Scout_a_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
			{ filename = "__FTL-Ships__/graphics/Shadows/Fed_Scout_b_Shadow.png", width_in_frames = 8, height_in_frames = 8 },
		  }
		},
	  },
	 },
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
