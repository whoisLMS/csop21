SMODS.Joker
{
    key = "peti",
    atlas = "peti",
    pos = { x = 0, y = 0},
    config =
    {
        extra =
        {
            numerator = 1,
            denominator = 6,
            xmult = 21
        }
    },
    rarity = 2,
    cost = 5,
    discovered = true,
    loc_vars = function (self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, card.ability.extra.numerator, card.ability.extra.denominator)
        return
        {
            vars =
            {
                numerator,
                denominator,
                card.ability.extra.xmult
            }
        }
    end,

    calculate = function (self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, G.GAME.pseudorandom.seed, card.ability.extra.numerator, card.ability.extra.denominator) then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_extinct_ex')
                }
            end
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end

}