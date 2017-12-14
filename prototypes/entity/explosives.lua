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
                entity_name = "big-explosion"
            },
            {
                type = "damage",
                damage = { amount = 50, type = "explosion" }
            },
            {
                type = "create-entity",
                entity_name = "small-scorchmark",
                check_buildability = true
            },
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    radius = 6.5,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 100, type = "explosion" }
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            },
                            {
                                type = "create-sticker",
                                sticker = "fire-sticker"
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
                entity_name = "big-explosion"
            },
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    radius = 4,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 300, type = "explosion" }
                            },
                            {
                                type = "create-entity",
                                entity_name = "explosion"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            },
                            {
                                type = "create-sticker",
                                sticker = "fire-sticker"
                            }
                        }
                    }
                }
            }
        }
    }
}

data.raw["projectile"]["explosive-uranium-cannon-projectile"].final_action =
{
    type = "direct",
    action_delivery =
    {
        type = "instant",
        target_effects =
        {
            {
                type = "create-entity",
                entity_name = "uranium-cannon-shell-explosion"
            },
            {
                type = "nested-result",
                action =
                {
                    type = "area",
                    radius = 4.25,
                    action_delivery =
                    {
                        type = "instant",
                        target_effects =
                        {
                            {
                                type = "damage",
                                damage = { amount = 315, type = "explosion" }
                            },
                            {
                                type = "create-entity",
                                entity_name = "uranium-cannon-explosion"
                            },
                            {
                                type = "create-fire",
                                entity_name = "fire-flame"
                            },
                            {
                                type = "create-sticker",
                                sticker = "fire-sticker"
                            }
                        }
                    }
                }
            },
            {
                type = "create-entity",
                entity_name = "small-scorchmark",
                check_buildability = true
            }
        }
    }
}