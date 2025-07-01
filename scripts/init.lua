script.on_configuration_changed(function()
  if remote.interfaces["PickerDollies"] then
    if settings.startup["cerys-relaxed-move-radiative-towers"].value then
      -- Moving natural radiative towers arround leaves artifacts behind
      -- Removing through mining or destruction might have the same result

      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-frozen")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-base")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-base-frozen")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-contracted-container")

      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-rising-reactor-base")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-rising-reactor-tower-1")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-rising-reactor-tower-2")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-radiative-tower-rising-reactor-tower-3")

      remote.call("PickerDollies", "remove_blacklist_name", "cerys-radiative-tower")
      -- Cerys: Heating logic is attached to position
      -- Lylac: Only when not updated
    end

    if settings.startup["cerys-relaxed-move-fulgoran-reactor"].value then
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-wreck")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-wreck-frozen")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-wreck-cleared")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-scaffold")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-wreck-scaffolded")
      remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-reactor-scaffolded")
    end

    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-cryogenic-plant")
    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-cryogenic-plant-wreck")
    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-cryogenic-plant-wreck-frozen")

    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-crusher")
    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-crusher-wreck")
    remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-crusher-wreck-frozen")

    if script.active_mods["quality"] then
      for _, quality in pairs(prototypes.quality) do
        if quality.level and quality.level > 0 then
          remote.call("PickerDollies", "remove_blacklist_name", "cerys-fulgoran-crusher-quality-"..quality.level)
        end
      end
    end
  end
end)