data:extend( { {
    type = "technology",
    name = "FTL-Ships",
    icon = "__FTL-Ships__/graphics/tech.png",
    icon_size = 128,
    order = "c-m-a",
    effects = {
        {
            type = "unlock-recipe",
            recipe = "Auto_Assault",
        },
		        {
            type = "unlock-recipe",
            recipe = "Auto_Scout",
        },
		        {
            type = "unlock-recipe",
            recipe = "Bomber",
        },
		        {
            type = "unlock-recipe",
            recipe = "Elite",
        },
		        {
            type = "unlock-recipe",
            recipe = "Fed_Cruiser",
        },
		        {
            type = "unlock-recipe",
            recipe = "Fed_Scout",
        },
		        {
            type = "unlock-recipe",
            recipe = "Fighter",
        },
		        {
            type = "unlock-recipe",
            recipe = "Flagship",
        },
		        {
            type = "unlock-recipe",
            recipe = "Kestrel",
        },
		        {
            type = "unlock-recipe",
            recipe = "Rigger",
        },
		        {
            type = "unlock-recipe",
            recipe = "Stealth",
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