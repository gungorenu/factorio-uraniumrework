require("prototypes.items")
require("prototypes.recipes")

-- icon changes
data.raw.item["uranium-238"].icon = "__UraniumRework__/graphics/icons/uranium-depleted.png"

-- uranium processing updates
data.raw.recipe["uranium-processing"].results =
{
    {name = "uranium-235", probability = 0.007, amount = 1},
    {name = "uraniumrework-low-enriched-uranium", probability = 0.993, amount = 1}
}

-- uranium fuel cell updates
data.raw.recipe["uranium-fuel-cell"].result_count = 1
data.raw.recipe["uranium-fuel-cell"].category = "centrifuging"
data.raw.recipe["uranium-fuel-cell"].ingredients =
{
    {type = "item", name = "iron-plate", amount = 10},
    {type = "item", name = "uraniumrework-low-enriched-uranium", amount = 20},
}

-- used nuclear fuel reprocessing
data.raw.recipe["nuclear-fuel-reprocessing"].ingredients =
{
    {type = "item", name = "used-up-uranium-fuel-cell", amount = 1},
}
data.raw.recipe["nuclear-fuel-reprocessing"].results = 
{
    {type = "item", name = "uraniumrework-uranium-waste-cell", amount = 1},
    {type = "item", name = "uraniumrework-low-enriched-uranium", amount = 3},
}

-- kovarex enrichment, renamed but same principle
data.raw.recipe["kovarex-enrichment-process"].ingredients =
{
    {type = "item", name = "uraniumrework-low-enriched-uranium", amount = 20},
}
data.raw.recipe["kovarex-enrichment-process"].results = 
{
    {type = "item", name = "uraniumrework-uranium-waste-cell", amount = 1},
    {type = "item", name = "uranium-235", amount = 1},
}


-- yellowcake creation
--table.insert(data.raw["technology"]["uranium-processing"].effects,
--	{
--		type = "unlock-recipe",
--		recipe = "uraniumrework-uraniumprocessing"
--	}
--)
--table.insert(data.raw["technology"]["uranium-processing"].effects,
--	{
--		type = "unlock-recipe",
--		recipe = "uraniumrework-depleted-uranium-fromyellowcake"
--	}
--)


-- tech update to enable uranium waste container
table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects,
	{
		type = "unlock-recipe",
		recipe = "uraniumrework-uranium-waste-container"
	}
)
table.insert(data.raw["technology"]["nuclear-fuel-reprocessing"].effects,
	{
		type = "unlock-recipe",
		recipe = "uraniumrework-depleted-uranium"
	}
)


-- add productivity
for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    table.insert(v.limitation, "uranium-fuel-cell")
    table.insert(v.limitation, "uraniumrework-depleted-uranium")
  end
end


