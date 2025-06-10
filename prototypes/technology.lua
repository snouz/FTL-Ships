local techicons = "__FTL-Ships__/graphics/technology/"

data:extend({ 
  {
    type = "technology",
    name = "FTL-Ships",
    icon = techicons .. "ftl-ships-tech.png",
    icon_size = 256,
    order = "c-m-a",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Auto_Assault",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Auto_Scout",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Bomber",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Elite",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Fed_Cruiser",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Fed_Scout",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Fighter",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Flagship",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Kestrel",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Rigger",
      },
      {
        type = "unlock-recipe",
        recipe = "ftl_ships_Stealth",
      }
    },
    prerequisites = {"automobilism"},
    unit = {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
      },
      time = 10
    },
  }, 
})