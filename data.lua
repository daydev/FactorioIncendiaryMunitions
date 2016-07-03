require("prototypes.item.ammo")

require("prototypes.recipe.ammo")

require("prototypes.entity.projectiles")
require("prototypes.entity.explosives")

require("prototypes.technology.ammo")

if data.raw["technology"]["ammo-box"] then
    require("prototypes.item.ammo_box")
    require("prototypes.recipe.ammo_box")
    require("prototypes.technology.ammo_box")
end