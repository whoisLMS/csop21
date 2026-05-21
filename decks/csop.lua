SMODS.Back
{
    key = "csop21",
    atlas = "csop21",
    pos = { x = 0, y = 0 },
    discovered = true,

    apply = function(self, back)
        G.E_MANAGER:add_event(Event({
            func = function()
                byte_val = 0
                seed = G.GAME.pseudorandom.seed
                for i = 1, 8 do
                    byte_val = string.byte(seed, i)
                end
                switch =
                {
                    [0] = function()
                        jokeyy = "j_21_lms"
                    end,
                    [1] = function()
                        jokeyy = "j_21_ziad"
                    end,
                    [2] = function()
                        jokeyy = "j_21_prezi"
                    end,
                    [3] = function ()
                        jokeyy = "j_21_peti"
                    end,
                    [4] = function ()
                        jokeyy = "j_21_kornel"
                    end,
                    [5] = function ()
                        jokeyy = "j_21_sabrina"
                    end,
                    [6] = function ()
                        jokeyy = "j_21_elod"
                    end,
                    [7] = function ()
                        jokeyy = "j_21_evilelod"
                    end
                }
                if switch[byte_val % 8] then
                    switch[byte_val % 8]()
                end
                if G.jokers then
                    local card = create_card("Joker", G.jokers, nil, nil, nil, nil, jokeyy, nil)
                    card:add_to_deck()
                    card:start_materialize()
                    G.jokers:emplace(card)
                    return true
                end
            end,
        }))
    end
}
