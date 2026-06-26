-- Atlases
    -- Jokers

SMODS.Atlas({
    key = "ziad",
    path = "ziad.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "lms",
    path = "lms.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "evillms",
    path = "evillms.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "prezi",
    path = "prezi.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "peti",
    path = "peti.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "kornel",
    path = "kornel.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "goofy",
    path = "goofy.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "grown",
    path = "grown.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "sabrina",
    path = "sabrina.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "elod",
    path = "elod.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "evilelod",
    path = "evilelod.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "csabesz",
    path = "csabesz.png",
    px = 71,
    py = 95
})

    -- Decks
SMODS.Atlas({
    key = "csop21",
    path = "csop21.png",
    px = 71,
    py = 95
})

SMODS.Atlas({
    key = "java",
    path = "java.png",
    px = 71,
    py = 95
})

    -- Planet cards
SMODS.Atlas({
    key = "67",
    path = "6-7.png",
    px = 71,
    py = 95
})

    -- Tarot cards
SMODS.Atlas({
    key = "weakness",
    path = "weakness.png",
    px = 71,
    py = 95
})

-- Sounds
SMODS.Sound({
    key = "sabrina",
    path = "sabrina.ogg"
})


-- Jokers

local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "jokers")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("jokers/" .. file))()
end


-- Decks

local decks_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "decks")
for _, file in ipairs(decks_src) do
    assert(SMODS.load_file("decks/" .. file))()
end


-- Consumables

local cons_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "consumables")
for _, file in ipairs(cons_src) do
    assert(SMODS.load_file("consumables/" .. file))()
end


-- Pokerhands

local hands_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "hands")
for _, file in ipairs(hands_src) do
    assert(SMODS.load_file("hands/" .. file))()
end