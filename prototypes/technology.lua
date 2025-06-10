data:extend( { {
    type = "technology",
    name = "FTL-Ships",
    icon = "__FTL-Ships__/graphics/tech.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "se-space_Auto_Assault",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Auto_Scout",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Bomber",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Elite",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Fed_Cruiser",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Fed_Scout",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Fighter",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Flagship",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Kestrel",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Rigger",
        },
		        {
            type = "unlock-recipe",
            recipe = "se-space_Stealth",
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
}, } )