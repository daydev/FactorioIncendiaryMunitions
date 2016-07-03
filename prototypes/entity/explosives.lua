data.raw["projectile"]["explosive-rocket"].action =
{
    type = "direct",
    action_delivery =
    {
        type = "instant",
        target_effects =
        {
            {
                type = "create-entity",
                entity_name = "explosion"
            },
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    perimeter = 6.5,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 40, type = "explosion" }
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            }
                        }
                    }
                },
            }
        }
    }
}

data.raw["projectile"]["explosive-cannon-projectile"].final_action =
{
    type = "direct",
    action_delivery =
    {
        type = "instant",
        target_effects =
        {
            {
                type = "create-entity",
                entity_name = "big-explosion",
                check_buildability = true
            },
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    perimeter = 4,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 80, type = "explosion" }
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            }
                        }
                    }
                }
            }
        }
    }
}