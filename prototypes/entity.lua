local SOUNDPATH = "__lex-aircraft__/sounds/"
local ICONPATH = "__lex-aircraft__/graphics/icons/"
local ENTITYPATH = "__lex-aircraft__/graphics/entity/"
local SPRITE_MULTIPLIER = 1
local util = require("__core__/lualib/util")

local icons = "__FTL-Ships__/graphics/icons/"
local soundpath = "__FTL-Ships__/sounds/"

local function ftl_ships_addResist(type, decrease, percent)
  return {
    type = type,
    decrease = decrease,
    percent = percent
  }
end

local leg = {
  type = "spider-leg",
  name = "ftl_ships_leg",
  consumption = "650kW",
  friction = 1,
  localised_name = { "entity-name.spidertron-leg" },
  collision_box = nil,
  collision_mask = {layers = {}},
  selection_box = { { -0, -0 }, { 0, 0 } },
  icon = "__base__/graphics/icons/spidertron.png",
  icon_size = 64,
  walking_sound_volume_modifier = 0,
  target_position_randomisation_distance = 0,
  minimal_step_size = 0,
  working_sound = nil,
  initial_movement_speed = 1,
  movement_acceleration = 1,
  knee_height = 2.5,
  knee_distance_factor = 0.4,
  max_health = 100,
  base_position_selection_distance = 1,
  movement_based_position_selection_distance = 1,
  selectable_in_game = false,
  --graphics_set = create_spidertron_leg_graphics_set(0, 1),
  acceleration_per_energy = 0.80,
}

local function ftl_ship_grid(name, w, h)
	data:extend({
	  {
	    type = "equipment-grid",
	    name = name .. "_equipment_grid",
	    width = w,
	    height = h,
	    equipment_categories = { "armor", }
	  }
	})
end

local ftl_ship_speed_sticker =
{
  type = "sticker",
  name = "ftl_ship_speed_sticker",
  flags = {"not-on-map"},
  animation = util.empty_sprite(),
  duration_in_ticks = 100,
  target_movement_modifier_from = 1,
  target_movement_modifier_to = 1,
  vehicle_speed_modifier_from = 3.2,
  vehicle_speed_modifier_to = 1,
  vehicle_friction_modifier_from = 1,
  vehicle_friction_modifier_to = 1,
}

data:extend({
  ftl_ship_speed_sticker,
  leg,
  --flying_gunship_grid,
})






local function ship_anim(name, scale, scale_shadow, shadow_extra_shift)
  if not shadow_extra_shift then shadow_extra_shift = 0 end
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
        draw_as_glow = true,
        blend_mode = "additive",
        direction_count = 128,
        shift = {0, 0},
        scale = scale,
        max_advance = 1,
        priority = "low",
        stripes = {
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_glow.png", width_in_frames = 8, height_in_frames = 8},
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_glow.png", width_in_frames = 8, height_in_frames = 8},
        }
      },
    },
  }
end

local function ship_shadow(name, scale, scale_shadow, shadow_extra_shift)
	if not shadow_extra_shift then shadow_extra_shift = 0 end
	return 
  {
    width = 502,
    height = 502,
    frame_count = 1,
    draw_as_shadow = true,
    direction_count = 128,
    shift = {2 + shadow_extra_shift, 2 + shadow_extra_shift},
    scale = scale_shadow,
    max_advance = 1,
    priority = "low",
    stripes = {
      {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_Shadow.png", width_in_frames = 8, height_in_frames = 8},
      {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_Shadow.png", width_in_frames = 8, height_in_frames = 8},
    }
  }
 end







local function make_ship2(name, health, weight, inv_size, braking_power, size_x, size_y1, size_y2, energy_effectivity, smoke_dev, smoke_pos, consumption, lightpos, scale, scale_shadow, shadow_extra_shift)
  data:extend({
    {
      type = "spider-vehicle",
      name = "ftl_ships_" .. name,
      icon = icons .. name ..".png",
      icon_size = 64,
      flags =  { "placeable-neutral", "player-creation", "placeable-off-grid", "no-automated-item-removal", "no-automated-item-insertion" }, --{"placeable-neutral", "player-creation", "placeable-off-grid"},
      minable = {mining_time = 1, result = "ftl_ships_" .. name},
      max_health = health,
      open_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      close_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      rotation_speed = 0.006,
      weight = weight,
      height = 2,
      selection_priority = 60,
      create_ghost_on_death = false,
	    torso_rotation_speed = 0.005,
	    torso_bob_speed = 0.2,
	    chunk_exploration_radius = 3,
    	allow_remote_driving = true,

		  --[[entitie.minimap_representation = {
		    filename = ICONPATH .. "aircraft-minimap-representation.png",
		    flags = { "icon" },
		    size = { 40, 40 },
		    scale = 0.5
		  }
		  entitie.selected_minimap_representation = {
		    filename = ICONPATH .. "aircraft-minimap-representation-selected.png",
		    flags = { "icon" },
		    size = { 40, 40 },
		    scale = 0.5
		  }]]


      guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
    	chain_shooting_cooldown_modifier = 0.5,
	    automatic_weapon_cycling = true,
      inventory_size = inv_size,
      trash_inventory_size = 20,
      has_belt_immunity = true,
      corpse = "big-remnants",
      dying_explosion = "massive-explosion",
      equipment_grid = name .. "_equipment_grid",
      energy_per_hit_point = 1,
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
      collision_box = {{-(size_x -0.3), -(size_y1 -0.3)}, {size_x -0.3, size_y2 -0.3}},
      collision_mask = {layers = {}},
      selection_box = {{-(size_x), -(size_y1)}, {size_x, size_y2}},
      --effectivity = 0.5,
      effectivity = 1,
      terrain_friction_modifier = 0,
      braking_power = tostring(braking_power) .. "kW",
	    movement_energy_consumption = "750kW",
	    energy_source =
			{
			  type = "void"
			},
      --[[energy_source =
      {
        type = "burner",
        fuel_categories = {"chemical"},
        effectivity = energy_effectivity,
        fuel_inventory_size = 3,
        smoke =
        {
          {
            name = "car-smoke",
            deviation = smoke_dev,
            frequency = 750,
            position = smoke_pos,
            starting_frame = 0,
            starting_frame_deviation = 0
          },
          {
            name = "car-smoke",
            deviation = {-smoke_dev[1], smoke_dev[2]},
            frequency = 750,
            position = {-smoke_pos[1], smoke_pos[2]},
            starting_frame = 0,
            starting_frame_deviation = 0
          }
        }
      },]]
      consumption = tostring(consumption) .. "kW",
      terrain_friction_modifier = 0,
      friction = 0.5,
      
      --render_layer = "wires-above", 
      --final_render_layer = "wires-above",
      --animation = ship_layer(name, scale, scale_shadow, shadow_extra_shift),

      graphics_set = {
      	render_layer = "air-object",
			  final_render_layer = "air-object",
			  base_render_layer = "air-object",
	      animation = ship_anim(name, scale, scale_shadow, shadow_extra_shift),
	      shadow_animation = ship_shadow(name, scale, scale_shadow, shadow_extra_shift),
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
	          shift = {-(lightpos[1]), -(lightpos[2])},
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
	          shift = {lightpos[1], -(lightpos[2])},
	          size = 3,
	          intensity = 0.9
	        }
	      },
	    },
      sound_no_fuel = {{filename = soundpath .. "out_of_fuel_distress.ogg", volume = 0.6}},
      stop_trigger_speed = 0,
      stop_trigger =
      {
        {
          type = "play-sound",
          sound = {{filename = soundpath .. "ftl_jump_arrive.ogg", volume = 0.6}}
        },
      },
      sound_minimum_speed = 0.5;
      vehicle_impact_sound =  {filename = soundpath .. "shield_hit2.ogg", volume = 0.65},
      working_sound =
      {
        sound = {filename = soundpath .. "engines_on.ogg", volume = 0.6},
        activate_sound = {filename = soundpath .. "ftl_jump_start.ogg", volume = 0.6},
        deactivate_sound = {filename = soundpath .. "engines_off.ogg", volume = 0.9},
        match_speed_to_activity = false,
      },
      spider_engine =
	    {
	      legs =
	      {
	        {
	          leg = "ftl_ships_leg",
	          mount_position = {0, -1},
	          ground_position = {0, -1},
	          walking_group = 1,
	          leg_hit_the_ground_trigger = nil
	        },
	      },
	    },
    }
  })
	ftl_ship_grid(name, 10, 8)

end


local function ship_layer(name, scale, scale_shadow, shadow_extra_shift)
  if not shadow_extra_shift then shadow_extra_shift = 0 end
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
        shift = {2 + shadow_extra_shift, 2 + shadow_extra_shift},
        scale = scale_shadow,
        max_advance = 1,
        priority = "low",
        stripes = {
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_Shadow.png", width_in_frames = 8, height_in_frames = 8},
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_Shadow.png", width_in_frames = 8, height_in_frames = 8},
        }
      },
      {
        width = 502,
        height = 502,
        frame_count = 1,
        draw_as_glow = true,
        blend_mode = "additive",
        direction_count = 128,
        shift = {0, 0},
        scale = scale,
        max_advance = 1,
        priority = "low",
        stripes = {
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_glow.png", width_in_frames = 8, height_in_frames = 8},
          {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_glow.png", width_in_frames = 8, height_in_frames = 8},
        }
      },
    },
  }
end

local function make_ship(name, health, weight, inv_size, braking_power, size_x, size_y1, size_y2, energy_effectivity, smoke_dev, smoke_pos, consumption, lightpos, scale, scale_shadow, shadow_extra_shift)
  data:extend({
    {
      type = "car",
      name = "ftl_ships_" .. name,
      icon = icons .. name ..".png",
      icon_size = 64,
      flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
      minable = {mining_time = 1, result = "ftl_ships_" .. name},
      max_health = health,
      open_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      close_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      rotation_speed = 0.006,
      weight = weight,
      guns = { "tank-cannon", "tank-flamethrower", "rocket-launcher", "rocket-launcher"},
      inventory_size = inv_size,
      has_belt_immunity = true,
      corpse = "big-remnants",
      dying_explosion = "massive-explosion",
      energy_per_hit_point = 1,
      equipment_grid = "ftl-equipment-grid",
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
      collision_box = {{-(size_x -0.3), -(size_y1 -0.3)}, {size_x -0.3, size_y2 -0.3}},
      collision_mask = {layers = {}},
      selection_box = {{-(size_x), -(size_y1)}, {size_x, size_y2}},
      effectivity = 0.5,
      braking_power = tostring(braking_power) .. "kW",
      energy_source =
      {
        type = "burner",
        fuel_categories = {"chemical"},
        effectivity = energy_effectivity,
        fuel_inventory_size = 3,
        smoke =
        {
          {
            name = "car-smoke",
            deviation = smoke_dev,
            frequency = 750,
            position = smoke_pos,
            starting_frame = 0,
            starting_frame_deviation = 0
          },
          {
            name = "car-smoke",
            deviation = {-smoke_dev[1], smoke_dev[2]},
            frequency = 750,
            position = {-smoke_pos[1], smoke_pos[2]},
            starting_frame = 0,
            starting_frame_deviation = 0
          }
        }
      },
      consumption = tostring(consumption) .. "kW",
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
          shift = {-(lightpos[1]), -(lightpos[2])},
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
          shift = {lightpos[1], -(lightpos[2])},
          size = 3,
          intensity = 0.9
        }
      },
      render_layer = "wires-above", 
      final_render_layer = "wires-above",
      animation = ship_layer(name, scale, scale_shadow, shadow_extra_shift),
      sound_no_fuel = {{filename = soundpath .. "out_of_fuel_distress.ogg", volume = 0.6}},
      stop_trigger_speed = 0,
      stop_trigger =
      {
        {
          type = "play-sound",
          sound = {{filename = soundpath .. "ftl_jump_arrive.ogg", volume = 0.6}}
        },
      },
      sound_minimum_speed = 0.5;
      vehicle_impact_sound =  {filename = soundpath .. "shield_hit2.ogg", volume = 0.65},
      working_sound =
      {
        sound = {filename = soundpath .. "engines_on.ogg", volume = 0.6},
        activate_sound = {filename = soundpath .. "ftl_jump_start.ogg", volume = 0.6},
        deactivate_sound = {filename = soundpath .. "engines_off.ogg", volume = 0.9},
        match_speed_to_activity = false,
      },
    }
  })
end

--make_ship(name, health, weight, inv_size, braking_power, size_x, size_y1, size_y2, energy_effectivity, smoke_dev, smoke_pos, consumption, lightpos, scale, scale_shadow, shadow_extra_shift)

--make_ship("Elite",      2500, 800, 80,  7, 3, 4, 4, 0.9,  {1.5, 0.5}, {2.5, 4.5}, 5,   {4, 30},   0.9, 1.3, 0) --orange
make_ship2("Elite",      2500, 800, 80,  7, 3, 4, 4, 0.9,  {1.5, 0.5}, {2.5, 4.5}, 5,   {4, 30},   0.9, 1.3, 0) --orange
make_ship("Kestrel",    2000, 700, 80,  6, 2, 4, 4, 0.9,  {1.5, 0.5}, {2.5, 4.3}, 4.5, {2, 30},   1.25, 1.3, 0.5) --white
make_ship("Stealth",    1500, 800, 60,  9, 2, 3, 4, 0.9,  {0.5, 0.5}, {0, 4.3},   7,   {3, 30},   1.4, 1.3, -1.2) --grey
make_ship("Rigger",     1000, 900, 100, 5, 3, 1, 2, 0.7,  {1.5, 0.5}, {2.0, 3},   3,   {3, 30},   1, 0.93, 0.75) --orange
make_ship("Flagship",   10000,800, 120, 4, 8, 6, 6, 0.7,  {1.5, 0.5}, {0.5, 6.5}, 1.5, {4.0, 30}, 1.5, 2.04, 0) --orange
make_ship("Fighter",    2500, 800, 80,  7, 3, 4, 4, 0.8,  {1.5, 0.5}, {2.5, 4.5}, 5,   {4, 30},   0.926, 1.3, 0) --orange
make_ship("Auto_Scout", 1000, 800, 40,  10, 3, 1, 1, 0.8, {1.5, 0.5}, {2.5, 0.5}, 8,   {0.7, 27}, 0.6, 0.83, 0.5) --grey
make_ship("Auto_Assault",1500,800, 40,  10, 3, 1, 1, 0.8, {0.5, 0.5}, {1.5, 1},   8,   {0.7, 27}, 0.7, 1.12, 0.5) --grey
make_ship("Fed_Cruiser",3000, 800, 100, 6, 2, 4, 3, 0.7,  {1.5, 0.5}, {3.0, 6.3}, 4,   {2, 33},   1.1, 1.7, -0.7) --white
make_ship("Bomber",     1750, 800, 40,  9.5, 2, 3, 1, 0.8,{0.5, 0.5}, {1.5, 1.5}, 7.5, {2, 30},   0.9, 1.01, -0.75) --white
make_ship("Fed_Scout",  1500, 800, 40,  9, 2, 3, 1, 0.8,  {0.5, 0.5}, {2.5, 3},   7,   {1.0, 30}, 0.9, 1.01, -0.75) --white

data.raw["car"]["ftl_ships_Flagship"].energy_source = {
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
}

data.raw["car"]["ftl_ships_Auto_Scout"].rotation_speed = 0.005

--data.raw["car"]["ftl_ships_Elite"].friction = 0.002