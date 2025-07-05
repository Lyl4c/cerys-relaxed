if data.raw["assembling-machine"]["cryogenic-plant"] then
  PlanetsLib.remove_surface_condition(
    data.raw["assembling-machine"]["cryogenic-plant"],
    "cerys-ambient-radiation"
  )
end

data.raw["assembling-machine"]["crusher"].surface_conditions = {
  {
    property = "gravity",
    min = 0,
    max = 0.15
  }
}

data.raw["reactor"]["cerys-radiative-tower"].energy_source.fuel_categories = {
  "chemical",
  "nuclear",
  "chemical-or-radiative"
}

data.raw["reactor"]["cerys-fulgoran-radiative-tower"].energy_source.fuel_categories = {
  "chemical",
  "nuclear",
  "chemical-or-radiative"
}

data.raw["reactor"]["cerys-fulgoran-radiative-tower-frozen"].energy_source.fuel_categories = {
  "chemical",
  "nuclear",
  "chemical-or-radiative"
}

data.raw["reactor"]["cerys-fulgoran-radiative-tower-rising-reactor-base"].energy_source.fuel_categories = {
  "chemical",
  "nuclear",
  "chemical-or-radiative"
}