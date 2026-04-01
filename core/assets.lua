-- Logos
SMODS.Atlas{
    key = "echoria_logo",
    path = "EchoriaLogo.png",
    px = 575,
    py = 250
}

-- Core Atlases
local atlases = {
    {key='nptenh', path='nptenh.png'},
    {key='nptseals', path='nptseals.png'},
    {key='creameryatlas', path='nptcreamery.png'},
    {key='Jokers', path='Jokers.png'},
    {key='Jokers2', path='Jokers2.png'},
    {key='Decks', path='Decks.png'},
    {key='Enhancements', path='Enhancements.png'},
    {key='WagerConsumableAtlas', path='WagerCards.png'},
    {key='BlankConsumableAtlas', path='BlankCards.png'},
    {key='TokenConsumableAtlas', path='tokenConsumables.png'},
    {key='tamtaratlas', path='tamtarots.png'},
    {key='romanticjokers', path='DateJokers.png'},
    {key='soonjokers', path='csoonJoker.png'},
    {key='tje_crs_jokers', path='crs_jokeratlas.png'},
    {key='faded_remnant', path='faded_remnant.png'},
    {key='wp_stickers_atlas', path='wp_stickers.png'},
}

for _, a in ipairs(atlases) do
    SMODS.Atlas{
        key = a.key,
        path = a.path,
        px = 71,
        py = 95
    }
end

-- Animated
SMODS.Atlas{
    key = "tjeblinds",
    path = "Blinds.png",
    px = 34,
    py = 34,
    atlas_table = 'ANIMATION_ATLAS',
    frames = '21'
}

-- Mod icon
SMODS.Atlas{
    key = "modicon",
    path = "mod_icon.png",
    px = 32,
    py = 32
}

SMODS.Atlas{
    key = "TetOS",
    path = "TetOs.png",
    px = 61,
    py = 85,
    atlas_table = 'ANIMATION_ATLAS', -- items using this atlas are animated.
    frames = 2, -- how many frames are there.
    fps = 1.25 -- optional, how fast it animates.
}

    SMODS.Atlas{
        key = "echoria_logo",
        path = "EchoriaLogo.png",
        px = 575,
        py = 250
    }