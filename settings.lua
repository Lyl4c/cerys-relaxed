local mod_prefix = "cerys-relaxed-"

if mods["even-pickier-dollies"] then
  data: extend({
    {
      type = "bool-setting",
      name = mod_prefix.."move-fulgoran-reactor",
      setting_type = "startup",
      default_value = false
    },
    {
      type = "bool-setting",
      name = mod_prefix.."move-radiative-towers",
      setting_type = "startup",
      default_value = false
    }
  })
end