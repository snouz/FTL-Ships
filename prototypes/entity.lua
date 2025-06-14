--local util = require("__core__/lualib/util")

local icons = "__FTL-Ships__/graphics/icons/"
local techicons = "__FTL-Ships__/graphics/technology/"
local soundpath = "__FTL-Ships__/sounds/"



local function ftl_make_tech_item_recipe(name, scaled)
  local order = "a"
	if name == "Fed_Scout" then
		order = "a[fed]-a[" .. name .. "]"
	elseif name == "Bomber" then
		order = "a[fed]-b[" .. name .. "]"
	elseif name == "Kestrel" then
		order = "a[fed]-c[" .. name .. "]"
	elseif name == "Stealth" then
		order = "a[fed]-d[" .. name .. "]"
	elseif name == "Fed_Cruiser" then
		order = "a[fed]-e[" .. name .. "]"
	elseif name == "Auto_Scout" then
		order = "b[rebel]-a[" .. name .. "]"
	elseif name == "Auto_Assault" then
		order = "b[rebel]-b[" .. name .. "]"
	elseif name == "Rigger" then
		order = "b[rebel]-c[" .. name .. "]"
	elseif name == "Fighter" then
		order = "b[rebel]-d[" .. name .. "]"
	elseif name == "Elite" then
		order = "b[rebel]-e[" .. name .. "]"
	elseif name == "Flagship" then
		order = "b[rebel]-f[" .. name .. "]"
	end

	data:extend({
	  {
	    type = "recipe",
	    name = "ftl_ships_" .. name,
	    enabled = false,
	    ingredients =
	    {
	      {type = "item", name = "steel-plate", amount = 60 * scaled},
	    },
	    results = {{type = "item", name ="ftl_ships_" .. name, amount = 1}},
	    energy_required = 0.5 * scaled,
	  },
	  {
	    type = "item-with-entity-data",
	    name = "ftl_ships_" .. name,
	    icon = icons .. name .. ".png",
	    icon_size = 64,
	    subgroup = "ftl_transport",
	    order = order,
	    place_result = "ftl_ships_" .. name,
	    stack_size = 1,
	    weight = 100 * scaled * kg,
	  }
	})
	if name ~= "Elite" then
		data:extend({
		  {
		    type = "technology",
		    name = "ftl_" .. name .. "_tech",
		    icon = techicons .. "ftl_" .. name .. "_tech.png",
		    icon_size = 256,
		    order = order,
		    effects = {
		      {
		        type = "unlock-recipe",
		        recipe = "ftl_ships_" .. name,
		      },
		    },
		    prerequisites = {},
		    unit = {
		      count = 100 * scaled * scaled,
		      ingredients = {
		        {"automation-science-pack", 1},
		        {"logistic-science-pack", 1},
		        {"military-science-pack", 1},
		      },
		      time = 10 * scaled
		    },
		  },
		})
	end

end


local function ftl_ships_addResist(type, decrease, percent)
  return {
    type = type,
    decrease = decrease,
    percent = percent
  }
end

--[[
local function ftl_ships_make_smoke(name)
  local smokes = {{0, 0},{0, 0}}
	if name == "Fed_Scout" then smokes = {{0.5, 0.5}, {2.5, 3}} end
	if name == "Bomber" then smokes = {{0.5, 0.5}, {1.5, 1.5}} end
	if name == "Kestrel" then smokes = {{1.5, 0.5}, {2.5, 4.3}} end
	if name == "Stealth" then smokes = {{0.5, 0.5}, {0, 4.3}} end
	if name == "Fed_Cruiser" then smokes = {{1.5, 0.5}, {3.0, 6.3}} end
	if name == "Auto_Scout" then smokes = {{1.5, 0.5}, {2.5, 0.5}} end
	if name == "Auto_Assault" then smokes = {{0.5, 0.5}, {1.5, 1}} end
	if name == "Rigger" then smokes = {{1.5, 0.5}, {2.0, 3}} end
	if name == "Fighter" then smokes = {{1.5, 0.5}, {2.5, 4.5}} end
	if name == "Elite" then smokes = {{1.5, 0.5}, {2.5, 4.5}} end
	if name == "Flagship" then smokes = {{1.5, 0.5}, {0.5, 6.5}} end
	return
	{
    {
      name = "car-smoke",
      deviation = {smokes[1][1], smokes[1][2]},
      frequency = 750,
      position = {smokes[2][1], smokes[2][2]},
      starting_frame = 0,
      starting_frame_deviation = 0
    },
    {
      name = "car-smoke",
      deviation = {-smokes[1][1], smokes[1][2]},
      frequency = 750,
      position = {-smokes[2][1], smokes[2][2]},
      starting_frame = 0,
      starting_frame_deviation = 0
    }
  }
end
]]

local function ship_light(name)
	lightpos = {0,0}
	thirdlight = nil
	if name == "Fed_Scout" then lightpos = {1, 30} end
	if name == "Bomber" then lightpos = {2, 30} end
	if name == "Kestrel" then lightpos = {3, 36} end
	if name == "Stealth" then lightpos = {3, 36} end
	if name == "Fed_Cruiser" then lightpos = {2, 36} end
	if name == "Auto_Scout" then lightpos = {0.7, 30} end
	if name == "Auto_Assault" then lightpos = {0.7, 30} end
	if name == "Rigger" then lightpos = {3, 36} end
	if name == "Fighter" then lightpos = {4, 36} end
	if name == "Elite" then lightpos = {4, 36} end
	if name == "Flagship" then lightpos = {6, 36} end
	if name == "Flagship" then thirdlight = 
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
      shift = {0, -(lightpos[2])},
      size = 3,
      intensity = 0.9
    }
  end
	return
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
    },
    thirdlight,
  }
end


local function leg(name, scaled)
	data:extend({
		{
			type = "spider-leg",
	    name = name .. "_leg",
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
	    --graphics_set = create_spidertron_leg_graphics_set(1, 1),
	    acceleration_per_energy = 0.80,
	  }
	})
end

local function ftl_ship_make_sticker(name, scaled)
	data:extend({
	  {
	    type = "sticker",
	    name = "ftl_ships_" .. name .. "_sticker",
	    flags = {"not-on-map"},
	    animation = util.empty_sprite(),
	    duration_in_ticks = 100,
	    target_movement_modifier_from = 1,
	    target_movement_modifier_to = 1,
	    vehicle_speed_modifier_from = 2 + 7/scaled,
	    vehicle_speed_modifier_to = 2 + 18/scaled,
	    vehicle_friction_modifier_from = 1,
	    vehicle_friction_modifier_to = 1,
	  }
	})
end

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

local function ship_anim(name)
  --if not shadow_extra_shift then shadow_extra_shift = 0 end
  scale = 1
	if name == "Fed_Scout" then scale = 0.9 end
	if name == "Bomber" then scale = 0.9 end
	if name == "Kestrel" then scale = 1.25 end
	if name == "Stealth" then scale = 1.4 end
	if name == "Fed_Cruiser" then scale = 1.1 end
	if name == "Auto_Scout" then scale = 0.6 end
	if name == "Auto_Assault" then scale = 0.7 end
	if name == "Rigger" then scale = 1 end
	if name == "Fighter" then scale = 0.9 end
	if name == "Elite" then scale = 0.9 end
	if name == "Flagship" then scale = 1.5 end
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

local function ship_shadow(name)
	--if not shadow_extra_shift then shadow_extra_shift = 0 end  
	scale = 1
	if name == "Kestrel" then scale = 1.3 end
	if name == "Stealth" then scale = 1.3 end
	if name == "Fed_Cruiser" then scale = 1.7 end
	if name == "Bomber" then scale = 1 end
	if name == "Fed_Scout" then scale = 1 end
	if name == "Auto_Scout" then scale = 0.83 end
	if name == "Auto_Assault" then scale = 1.12 end
	if name == "Rigger" then scale = 0.93 end
	if name == "Fighter" then scale = 1.3 end
	if name == "Elite" then scale = 1.3 end
	if name == "Flagship" then scale = 2 end
	return 
  {
    width = 502,
    height = 502,
    frame_count = 1,
    draw_as_shadow = true,
    direction_count = 128,
    shift = {0, 0},
    scale = scale,
    max_advance = 1,
    priority = "low",
    stripes = {
      {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_a_Shadow.png", width_in_frames = 8, height_in_frames = 8},
      {filename = "__FTL-Ships__/graphics/entity/" .. name .. "_b_Shadow.png", width_in_frames = 8, height_in_frames = 8},
    }
  }
end


local function make_ship2(name, scaled)
	if not scaled then scaled = 1 end
  local scale_mul = 0.5
  local scale_add = 1.2
  data:extend({
    {
      type = "spider-vehicle",
      name = "ftl_ships_" .. name,
      icon = icons .. name ..".png",
      icon_size = 64,
      flags =  { "placeable-neutral", "player-creation", "placeable-off-grid"},-- "no-automated-item-removal", "no-automated-item-insertion" }, --{"placeable-neutral", "player-creation", "placeable-off-grid"},
      minable = {mining_time = 1, result = "ftl_ships_" .. name},
      max_health = 500 * scaled,
      open_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      close_sound = {filename = soundpath .. "door.ogg", volume = 1.7},
      weight = 150 * scaled,
      height = 5 + (0.5 * scaled),
      selection_priority = 60,
      create_ghost_on_death = false,
	    torso_rotation_speed = 0.002, -- / scaled,
	    torso_bob_speed = 0.4 / scaled,
	    chunk_exploration_radius = 3,
    	allow_remote_driving = true,
		  minimap_representation = {
		    filename = icons .. "minimap/" .. name .. "-minimap-representation.png",
		    flags = { "icon" },
		    size = { 50, 50 },
		    scale = 0.5 + (scaled/12),
		  },
		  selected_minimap_representation = {
		    filename = icons .. "minimap/" .. name .. "-selected-minimap-representation.png",
		    flags = { "icon" },
		    size = { 50, 50 },
		    scale = 0.5 + (scaled/12)
		  },
      guns = {},
    	chain_shooting_cooldown_modifier = 1/scaled,
	    automatic_weapon_cycling = true,
      inventory_size = 10 * scaled,
      trash_inventory_size = 2 * scaled,

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
      collision_box = {{scaled * -scale_mul -0.3 -scale_add, scaled * -scale_mul -0.3 -scale_add}, {scaled * scale_mul -0.3 +scale_add, scaled * scale_mul -0.3 +scale_add}},
      collision_mask = {layers = {}},
      selection_box = {{scaled * -scale_mul -scale_add, scaled * -scale_mul -scale_add}, {scaled * scale_mul +scale_add, scaled * scale_mul +scale_add}},
      drawing_box_vertical_extension = 3,
      terrain_friction_modifier = 0,
      braking_power = tostring(math.floor(5000/scaled)) .. "kW",
	    movement_energy_consumption = tostring(math.floor(200 + 100*scaled)) .. "kW", --"7kW",
	    energy_source =
			{
			  type = "void"
			},
      energy_source =
      {
        type = "burner",
        fuel_categories = {"chemical"},
        effectivity = 1, --energy_effectivity,
        fuel_inventory_size = math.ceil(scaled/1.5),
        --smoke = ftl_ships_make_smoke(name),
        
      },
      friction = 0.01 + scaled/20,
      graphics_set = {
      	render_layer = "air-object",
			  final_render_layer = "air-object",
			  base_render_layer = "air-object",
	      animation = ship_anim(name),
	      shadow_animation = ship_shadow(name),
	      light = ship_light(name),
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
      sound_minimum_speed = 0.1;
      vehicle_impact_sound =  {filename = soundpath .. "shield_hit2.ogg", volume = 0.65},
      working_sound =
      {
        sound = {filename = soundpath .. "engines_on.ogg", volume = 1},
        activate_sound = {filename = soundpath .. "ftl_jump_start.ogg", volume = 0.6},
        deactivate_sound = {filename = soundpath .. "engines_off.ogg", volume = 0.9},
        match_speed_to_activity = true,
      },
      spider_engine =
	    {
	      legs =
	      {
	        {
	          leg = name .. "_leg",
	          mount_position = {0, -1},
	          ground_position = {0, -1},
	          walking_group = 1,
	          leg_hit_the_ground_trigger = nil
	        },
	      }
	    },
    }
  })
	ftl_ship_grid(name, scaled*2, scaled*2)
	leg(name, scaled)
	ftl_ship_make_sticker(name, scaled)
	ftl_make_tech_item_recipe(name, scaled)
end


make_ship2("Fed_Scout",   1)
make_ship2("Bomber",      2)
make_ship2("Kestrel",     3)
make_ship2("Stealth",     4)
make_ship2("Fed_Cruiser", 6)

make_ship2("Auto_Scout",  1)
make_ship2("Auto_Assault",2)
make_ship2("Rigger",      3)
make_ship2("Fighter",     5)
make_ship2("Elite",       5)
make_ship2("Flagship",    10)



--[[
make_ship(name, health, weight, inv_size, braking_power, size_x, size_y1, size_y2, energy_effectivity, smoke_dev, smoke_pos, consumption, lightpos, scale, scale_shadow, shadow_extra_shift)
make_ship2("Fed_Scout",  1500, 800, 40,  9, 2, 3, 1, 0.8,  {0.5, 0.5}, {2.5, 3},   7,   {1.0, 30}, 0.9, 1.01, -0.75) --white
make_ship2("Bomber",     1750, 800, 40,  9.5, 2, 3, 1, 0.8,{0.5, 0.5}, {1.5, 1.5}, 7.5, {2, 30},   0.9, 1.01, -0.75) --white
make_ship2("Kestrel",    2000, 700, 80,  6, 2, 4, 4, 0.9,  {1.5, 0.5}, {2.5, 4.3}, 4.5, {2, 30},   1.25, 1.3, 0.5) --white
make_ship2("Stealth",    1500, 800, 60,  9, 2, 3, 4, 0.9,  {0.5, 0.5}, {0, 4.3},   7,   {3, 30},   1.4, 1.3, -1.2) --grey
make_ship2("Fed_Cruiser",3000, 800, 100, 6, 2, 4, 3, 0.7,  {1.5, 0.5}, {3.0, 6.3}, 4,   {2, 33},   1.1, 1.7, -0.7) --white

make_ship2("Auto_Scout", 1000, 800, 40,  10, 3, 1, 1, 0.8, {1.5, 0.5}, {2.5, 0.5}, 8,   {0.7, 27}, 0.6, 0.83, 0.5) --grey
make_ship2("Auto_Assault",1500,800, 40,  10, 3, 1, 1, 0.8, {0.5, 0.5}, {1.5, 1},   8,   {0.7, 27}, 0.7, 1.12, 0.5) --grey
make_ship2("Rigger",     1000, 900, 100, 5, 3, 1, 2, 0.7,  {1.5, 0.5}, {2.0, 3},   3,   {3, 30},   1, 0.93, 0.75) --orange
make_ship2("Fighter",    2500, 800, 80,  7, 3, 4, 4, 0.8,  {1.5, 0.5}, {2.5, 4.5}, 5,   {4, 30},   0.9, 1.3, 0) --orange
make_ship2("Elite",      2500, 800, 80,  7, 3, 4, 4, 0.9,  {1.5, 0.5}, {2.5, 4.5}, 5,   {4, 30},   0.9, 1.3, 0) --orange
make_ship2("Flagship",   10000,800, 120, 4, 8, 6, 6, 0.7,  {1.5, 0.5}, {0.5, 6.5}, 1.5, {4.0, 30}, 1.5, 2.04, 0) --orange
]]



table.insert(data.raw.technology["ftl_Fed_Scout_tech"].prerequisites, "automobilism")
table.insert(data.raw.technology["ftl_Bomber_tech"].prerequisites, "ftl_Fed_Scout_tech")
table.insert(data.raw.technology["ftl_Kestrel_tech"].prerequisites, "ftl_Bomber_tech")
table.insert(data.raw.technology["ftl_Stealth_tech"].prerequisites, "ftl_Kestrel_tech")
table.insert(data.raw.technology["ftl_Fed_Cruiser_tech"].prerequisites, "ftl_Stealth_tech")

table.insert(data.raw.technology["ftl_Auto_Scout_tech"].prerequisites, "automobilism")
table.insert(data.raw.technology["ftl_Auto_Assault_tech"].prerequisites, "ftl_Auto_Scout_tech")
table.insert(data.raw.technology["ftl_Rigger_tech"].prerequisites, "ftl_Auto_Assault_tech")
table.insert(data.raw.technology["ftl_Fighter_tech"].prerequisites, "ftl_Rigger_tech")
table.insert(data.raw.technology["ftl_Flagship_tech"].prerequisites, "ftl_Fighter_tech")

data.raw.recipe["ftl_ships_Elite"].hidden = true


local function ftl_add_weapon(name, gun, num)
	if not num then num = 1 end
	--if not recipe then recipe = gun end
	if not data.raw.gun[gun] then return end
	table.insert(data.raw["spider-vehicle"]["ftl_ships_" .. name].guns, gun)
	if num > 1 then table.insert(data.raw["spider-vehicle"]["ftl_ships_" .. name].guns, gun) end
	if num > 2 then table.insert(data.raw["spider-vehicle"]["ftl_ships_" .. name].guns, gun) end
	if num > 3 then table.insert(data.raw["spider-vehicle"]["ftl_ships_" .. name].guns, gun) end
	--if data.raw.recipe[recipe] then table.insert(data.raw.recipe["ftl_ships_" .. name].ingredients, {type = "item", name = recipe, amount = num}) end
end

local function ftl_ingr_prereq(name, ingredient, num, prereq)
  if ingredient and num then
    if data.raw.recipe["ftl_ships_" .. name] then
    	if (data.raw.item[ingredient] or data.raw.gun[ingredient] or data.raw["item-with-entity-data"][ingredient] or data.raw.module[ingredient]) then
	    	table.insert(data.raw.recipe["ftl_ships_" .. name].ingredients, {type = "item", name = ingredient, amount = num})
	    end
    end
  end
  if prereq then
  	if data.raw.technology["ftl_" .. name .. "_tech"] and data.raw.technology[prereq] then
  		table.insert(data.raw.technology["ftl_" .. name .. "_tech"].prerequisites, prereq)
  	end
  end
end

--"flamethrower""tank-machine-gun""tank-flamethrower""rocket-launcher"
--"combat-shotgun""shotgun""tank-cannon"
--"spidertron-rocket-launcher-1""spidertron-rocket-launcher-2""spidertron-rocket-launcher-3""spidertron-rocket-launcher-4"
--"submachine-gun""vehicle-machine-gun"

--ftl_add_weapon("Bomber", "tank-cannon")



ftl_add_weapon("Fed_Scout", "vehicle-machine-gun", 1)
ftl_ingr_prereq("Fed_Scout", "submachine-gun", 1)
ftl_ingr_prereq("Fed_Scout", "advanced-circuit", 50, "advanced-circuit")
ftl_ingr_prereq("Fed_Scout", "radar", 2, "radar")


ftl_add_weapon("Bomber", "spidertron-rocket-launcher-1", 2)
ftl_ingr_prereq("Bomber", "rocket-launcher", 2, "rocketry")
ftl_ingr_prereq("Bomber", "advanced-circuit", 10, "advanced-circuit")
ftl_ingr_prereq("Bomber", "low-density-structure", 5, "low-density-structure")
ftl_ingr_prereq("Bomber", "ftl_ships_Fed_Scout", 1)



ftl_add_weapon("Kestrel", "vehicle-machine-gun", 2)
ftl_ingr_prereq("Kestrel", "submachine-gun", 2)
ftl_add_weapon("Kestrel", "spidertron-rocket-launcher-1", 2)
ftl_ingr_prereq("Kestrel", "rocket-launcher", 2, "rocketry")
ftl_ingr_prereq("Kestrel", "low-density-structure", 5, "low-density-structure")
ftl_ingr_prereq("Kestrel", "processing-unit", 10, "processing-unit")
ftl_ingr_prereq("Kestrel", "modular-armor", 1, "modular-armor")
ftl_ingr_prereq("Kestrel", "ftl_ships_Fed_Scout", 2)



ftl_add_weapon("Stealth", "spidertron-rocket-launcher-1", 4)
ftl_ingr_prereq("Stealth", "rocket-launcher", 4, "rocketry")
ftl_ingr_prereq("Stealth", "low-density-structure", 60, "low-density-structure")
ftl_ingr_prereq("Stealth", "flying-robot-frame", 50, "robotics")
ftl_ingr_prereq("Stealth", "speed-module-2", 10, "speed-module-2")
ftl_ingr_prereq("Stealth", "night-vision-equipment", 5, "night-vision-equipment")
ftl_ingr_prereq("Stealth", "processing-unit", 20, "processing-unit")
ftl_ingr_prereq("Stealth", "power-armor", 3, "power-armor")
ftl_ingr_prereq("Stealth", "ftl_ships_Fed_Scout", 1)

ftl_add_weapon("Fed_Cruiser", "spidertron-rocket-launcher-1", 6)
ftl_ingr_prereq("Fed_Cruiser", "rocket-launcher", 6, "rocketry")
ftl_ingr_prereq("Fed_Cruiser", "low-density-structure", 200, "low-density-structure")
ftl_ingr_prereq("Fed_Cruiser", "flying-robot-frame", 100, "robotics")
ftl_ingr_prereq("Fed_Cruiser", "speed-module-3", 10, "speed-module-3")
ftl_ingr_prereq("Fed_Cruiser", "processing-unit", 100, "processing-unit")
ftl_ingr_prereq("Fed_Cruiser", "power-armor-mk2", 1, "power-armor-mk2")
ftl_ingr_prereq("Fed_Cruiser", "ftl_ships_Kestrel", 1)




ftl_add_weapon("Auto_Scout", "vehicle-machine-gun", 1)
ftl_ingr_prereq("Auto_Scout", "submachine-gun", 1)
ftl_ingr_prereq("Auto_Scout", "advanced-circuit", 50, "advanced-circuit")
ftl_ingr_prereq("Auto_Scout", "copper-cable", 50)



ftl_add_weapon("Auto_Assault", "vehicle-machine-gun", 3)
ftl_ingr_prereq("Auto_Assault", "submachine-gun", 3)
ftl_ingr_prereq("Auto_Assault", "advanced-circuit", 100, "advanced-circuit")
ftl_ingr_prereq("Auto_Assault", "processing-unit", 100, "processing-unit")
ftl_ingr_prereq("Auto_Assault", "copper-cable", 80)
ftl_ingr_prereq("Auto_Assault", "ftl_ships_Auto_Scout", 1)




ftl_add_weapon("Rigger", "vehicle-machine-gun", 6)
ftl_ingr_prereq("Rigger", "submachine-gun", 6)
ftl_ingr_prereq("Rigger", "low-density-structure", 10, "low-density-structure")
ftl_ingr_prereq("Rigger", "advanced-circuit", 100, "advanced-circuit")
ftl_ingr_prereq("Rigger", "copper-cable", 90)
ftl_ingr_prereq("Rigger", "modular-armor", 2, "modular-armor")
ftl_ingr_prereq("Rigger", "ftl_ships_Auto_Assault", 1)




ftl_add_weapon("Fighter", "tank-cannon", 3)
ftl_ingr_prereq("Fighter", "tank", 3, "tank")
ftl_add_weapon("Fighter", "vehicle-machine-gun", 1)
ftl_ingr_prereq("Fighter", "submachine-gun", 1)
ftl_ingr_prereq("Fighter", "low-density-structure", 100, "low-density-structure")
ftl_ingr_prereq("Fighter", "flying-robot-frame", 10, "robotics")
ftl_ingr_prereq("Fighter", "battery-equipment", 10, "battery-equipment")
ftl_ingr_prereq("Fighter", "advanced-circuit", 50, "advanced-circuit")
ftl_ingr_prereq("Fighter", "processing-unit", 100, "processing-unit")
ftl_ingr_prereq("Fighter", "power-armor", 3, "power-armor")


ftl_add_weapon("Elite", "tank-cannon", 3)
ftl_ingr_prereq("Elite", "tank", 3, "tank")
ftl_add_weapon("Elite", "vehicle-machine-gun", 1)
ftl_ingr_prereq("Elite", "submachine-gun", 1)
ftl_ingr_prereq("Elite", "low-density-structure", 100, "low-density-structure")
ftl_ingr_prereq("Elite", "flying-robot-frame", 10, "robotics")
ftl_ingr_prereq("Elite", "battery-equipment", 10, "battery-equipment")
ftl_ingr_prereq("Elite", "advanced-circuit", 50, "advanced-circuit")
ftl_ingr_prereq("Elite", "processing-unit", 100, "processing-unit")
ftl_ingr_prereq("Elite", "power-armor", 3, "power-armor")



ftl_add_weapon("Flagship", "tank-cannon", 2)
ftl_ingr_prereq("Flagship", "tank", 2, "tank")
ftl_add_weapon("Flagship", "tank-flamethrower", 2)
ftl_ingr_prereq("Flagship", "flamethrower", 2, "flamethrower")
ftl_add_weapon("Flagship", "spidertron-rocket-launcher-1", 2)
ftl_ingr_prereq("Flagship", "rocket-launcher", 2, "rocketry")
ftl_ingr_prereq("Flagship", "low-density-structure", 400, "low-density-structure")
ftl_ingr_prereq("Flagship", "flying-robot-frame", 200, "robotics")
ftl_ingr_prereq("Flagship", "speed-module-3", 50, "speed-module-3")
ftl_ingr_prereq("Flagship", "energy-shield-mk2-equipment", 10, "energy-shield-mk2-equipment")
ftl_ingr_prereq("Flagship", "processing-unit", 400, "processing-unit")
ftl_ingr_prereq("Flagship", "power-armor-mk2", 2, "power-armor-mk2")
--ftl_ingr_prereq("Flagship", "ftl_ships_Fighter", 2)
ftl_ingr_prereq("Flagship", "ftl_ships_Rigger", 1)