SMODS.Joker {
    key = "csabesz",
    atlas = "csabesz",
    discovered = true,
    rarity = 4,
    cost = 20,
    pos = { x = 0, y = 0 },
    config = { extra = { copies = 1 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.copies } }
    end,
    calculate = function(self, card, context)
        if context.ending_shop and G.jokers.cards[1] then
            for i = 1, card.ability.extra.copies, 1 do
                G.E_MANAGER:add_event(Event({
                func = function()
                    local card_to_copy, _ = pseudorandom_element(G.jokers.cards, 'j_21_csabesz')
                    local copied_card = copy_card(card_to_copy)
                    copied_card:set_edition("e_negative", true)
                    copied_card:add_to_deck()
                    G.jokers:emplace(copied_card)
                    return true
                end
            }))
            return { message = localize('k_duplicated_ex') }
            end
        end
    end,
}