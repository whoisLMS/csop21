SMODS.Joker {
    key = "sabrina",
    atlas = "sabrina",
    rarity = 3,
    cost = 8,
    discovered = true,
    pos = { x = 0, y = 0 },
    config = { extra = { Xmult = 3 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.Xmult } }
    end,
    calculate = function(self, card, context)
        if context.buying_self then
            return
            {
                play_sound("21_sabrina", 1, 1)
            }
        end
        
        if context.debuff_card and
            (context.debuff_card:get_id() == 13 or context.debuff_card:get_id() == 11) then
            return {
                debuff = true
            }
        end

        if context.individual and context.cardarea == G.play and context.other_card:get_id() == 12 then
            return {
                x_mult = card.ability.extra.Xmult
            }
        end
    end
}
