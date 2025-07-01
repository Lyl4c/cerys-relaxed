if data.raw["assembling-machine"]["cryogenic-plant"] then
  PlanetsLib.remove_surface_condition(
    data.raw["assembling-machine"]["cryogenic-plant"],
    "cerys-ambient-radiation"
  )
end