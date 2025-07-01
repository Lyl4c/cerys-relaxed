local common = require("__Cerys-Moon-of-Fulgora__/common")
local lib = require("__Cerys-Moon-of-Fulgora__/lib")
local merge = lib.merge

local cargo_drops_base = PlanetsLib.cargo_drops_technology_base("cerys", "__Cerys-Moon-of-Fulgora__/graphics/technology/cerys.png", 256)
local is_sandbox_mode = settings.startup["cerys-sandbox-mode"].value

if not is_sandbox_mode then
  data:extend({
    merge(cargo_drops_base, {
      prerequisites = { "cerysian-science-pack" },
      unit = {
        count = common.HARD_MODE_ON and 3000 or 1000,
        ingredients = {
          { "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "cerysian-science-pack", 1 },
					{ "utility-science-pack", 1 },
        },
        time = 60,
      },
      allows_productivity = false
    })
  })
end

if settings.startup["cerys-player-constructable-radiative-towers"].value then
  data:extend({
		{
			type = "technology",
			name = "cerys-radiative-heaters",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "cerys-radiative-tower",
				},
			},
			prerequisites = {
        "cerysian-science-pack",
			},
			icon = "__Cerys-Moon-of-Fulgora__/graphics/technology/radiative-heaters.png",
			icon_size = 200,
			unit = {
				count = 2000,
				ingredients = {
					{ "automation-science-pack", 1 },
					{ "logistic-science-pack", 1 },
					{ "cerysian-science-pack", 1 },
					{ "utility-science-pack", 1 },
				},
				time = 60,
			},
			allows_productivity = false,
		}
  })
end