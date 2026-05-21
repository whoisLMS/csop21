SMODS.Joker {
    key = "elod",
    atlas = "elod",
    discovered = true,
    rarity = 3,
    cost = 6,
    pos = { x = 0, y = 0 },
    config = { extra = { reps = 0, rep_scale = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.reps, card.ability.extra.rep_scale } }
    end,

    calculate = function(self, card, context)
        if context.before and not context.blueprint and next(context.poker_hands["Flush Five"]) then
            SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = 'reps',
                    scalar_value = 'rep_scale',
                    massage_colour = G.C.ATTENTION
            })
        end

        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.extra.reps
            }
        end
    end
}