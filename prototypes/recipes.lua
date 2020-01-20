-- recipes, 
data:extend(
{
  {
    type = "recipe",
    name = "uraniumrework-uranium-waste-container",
    icon = "__UraniumRework__/graphics/icons/uranium-waste-container.png",
    icon_size = 32,
    category = "centrifuging",
    subgroup = "intermediate-product",
    normal =
    {
      enabled = "false",
      energy_required = 30,
      ingredients =
      {
        {type = "item", name = "refined-concrete", amount = 100},
        {type = "item", name = "steel-plate", amount = 25},
        {type = "item", name = "uraniumrework-uranium-waste-cell", amount = 100},
      },
	  result = "uraniumrework-uranium-waste-container",
	  result_count = 1,
    },
    expensive = 
    {
      enabled = "false",
      energy_required = 30,
      ingredients =
      {
        {type = "item", name = "refined-concrete", amount = 200},
        {type = "item", name = "steel-plate", amount = 50},
        {type = "item", name = "uraniumrework-uranium-waste-cell", amount = 100},
      },
	  result = "uraniumrework-uranium-waste-container",
	  result_count = 1,
    }
  },
  {
    type = "recipe",
    name = "uraniumrework-depleted-uranium",
    icon = "__UraniumRework__/graphics/icons/uranium-depleted.png",
    icon_size = 32,
    category = "centrifuging",
    subgroup = "intermediate-product",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type = "item", name = "uraniumrework-uranium-waste-cell", amount = 1},
    },
    result = "uranium-238",
    result_count = 5,
    order = "r[uranium-processing]-c[uraniumrework-depleted-uranium]",
    allow_decomposition = false
  },
--  {
--    type = "recipe",
--    name = "uraniumrework-depleted-uranium-fromyellowcake",
--    icon = "__UraniumRework__/graphics/icons/uranium-purification.png",
--    icon_size = 32,
--    category = "centrifuging",
--    subgroup = "intermediate-product",
--    enabled = "false",
--    energy_required = 30,
--    ingredients =
--    {
--      {type = "item", name = "uraniumrework-uranium-yellowcake", amount = 1},
--    },
--    result = "uranium-238",
--    result_count = 1,
--    order = "r[uranium-processing]-c[uraniumrework-depleted-uranium]",
--    allow_decomposition = false
--  },
--  {
--    type = "recipe",
--    name = "uraniumrework-uraniumprocessing",
--    icon = "__UraniumRework__/graphics/icons/uranium-yellowcake.png",
--    icon_size = 32,
--    category = "centrifuging",
--    subgroup = "intermediate-product",
--    enabled = "false",
--    energy_required = 12,
--    ingredients =
--    {
--      {type = "item", name = "uranium-ore", amount = 12},
--    },
--    result = "uraniumrework-uranium-yellowcake",
--    result_count = 1,
--    order = "r[uranium-processing]-c[uraniumrework-yellowcake]",
--    allow_decomposition = false
--  },
})
