local icons = "__FTL-Ships__/graphics/icons/"

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Elite",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Elite", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Elite",
    icon = icons .. "Elite.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Elite",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Kestrel",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Kestrel", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Kestrel",
    icon = icons .. "Kestrel.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Kestrel",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Stealth",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Stealth", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Stealth",
    icon = icons .. "Stealth.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Stealth",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Rigger",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Rigger", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Rigger",
    icon = icons .. "Rigger.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Rigger",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Flagship",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 328},
      {type = "item", name = "steel-plate", amount = 600},
      {type = "item", name = "iron-plate", amount = 800},
      {type = "item", name = "electronic-circuit", amount = 90},
      {type = "item", name = "engine-unit", amount = 100},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Flagship", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Flagship",
    icon = icons .. "Flagship.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Flagship",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Fighter",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Fighter", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Fighter",
    icon = icons .. "Fighter.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Fighter",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Auto_Scout",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 200},
      {type = "item", name = "iron-plate", amount = 100},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 5},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Auto_Scout", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Auto_Scout",
    icon = icons .. "Auto_Scout.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Auto_Scout",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Auto_Assault",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 500},
      {type = "item", name = "iron-plate", amount = 300},
      {type = "item", name = "electronic-circuit", amount = 50},
      {type = "item", name = "engine-unit", amount = 50},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Auto_Assault", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Auto_Assault",
    icon = icons .. "Auto_Assault.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Auto_Assault",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Fed_Cruiser",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 50},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Fed_Cruiser", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Fed_Cruiser",
    icon = icons .. "Fed_Cruiser.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Fed_Cruiser",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Fed_Scout",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 500},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 50},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Fed_Scout", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Fed_Scout",
    icon = icons .. "Fed_Scout.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Fed_Scout",
    stack_size = 1
  }
})

data:extend({
  {
    type = "recipe",
    name = "ftl_ships_Bomber",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 128},
      {type = "item", name = "steel-plate", amount = 300},
      {type = "item", name = "iron-plate", amount = 200},
      {type = "item", name = "electronic-circuit", amount = 40},
      {type = "item", name = "engine-unit", amount = 50},
      {type = "item", name = "rocket-launcher", amount = 2},
    },
    results = {{type = "item", name ="ftl_ships_Bomber", amount = 1}}
  },
  {
    type = "item-with-entity-data",
    name = "ftl_ships_Bomber",
    icon = icons .. "Bomber.png",
    icon_size = 64,
    subgroup = "transport",
    order = "b[personal-transport]-a[car]",
    place_result = "ftl_ships_Bomber",
    stack_size = 1
  }
})