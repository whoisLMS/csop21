SMODS.Joker
{
    key = "ziad",
    atlas = "ziad",
    pos = { x = 0, y = 0},
    config =
    {
        extra =
        {
            dollars = 2
        }
    },
    rarity = 3,
    cost = 8,
    discovered = true,
    loc_vars = function (self, info_queue, card)
        return
        {
            vars =
            {
                card.ability.extra.dollars
            }
        }
    end,

    calculate = function (self, card, context)
        if context.discard and context.other_card then
            return
            {
                dollars = card.ability.extra.dollars,
                remove = true
            }
        end
    end
}