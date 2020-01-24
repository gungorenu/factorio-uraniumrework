-- new items, uranium waste cell, uranium waste container, low enriched uranium
data:extend(
{
  {
    type = "item",
    name = "uraniumrework-uranium-waste-cell",
    icon = "__UraniumRework__/graphics/icons/uranium-waste-cell.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "wc[uranium-waste-cell]",
    stack_size = 1
  },
  {
    type = "item",
    name = "uraniumrework-uranium-waste-container",
    icon = "__UraniumRework__/graphics/icons/uranium-waste-container.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "wo[uranium-waste-container]",
    stack_size = 1,
    rocket_launch_product = {"raw-fish", 1}
  },
  {
    type = "item",
    name = "uraniumrework-low-enriched-uranium",
    icon = "__base__/graphics/icons/uranium-238.png",
--    icon_size = 32,
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "r[uranium-238]",
    stack_size = 100,
  },
--  {
--    type = "item",
--    name = "uraniumrework-uranium-yellowcake",
--    icon = "__UraniumRework__/graphics/icons/uranium-yellowcake.png",
--    icon_size = 32,
--    subgroup = "intermediate-product",
--    order = "ry[uranium-yellowcake]",
--    stack_size = 100,
--  },
})
