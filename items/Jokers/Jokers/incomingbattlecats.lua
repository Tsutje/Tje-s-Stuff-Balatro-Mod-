SMODS.Joker{
    key = 'incomingbattlecats',
    atlas = 'Jokers2',
    rarity = 2, 
    cost = 5, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = false,
    perishable_compat = true,
    pos = {x = 5, y = 2},
    config = {extra = {effect1 = "", effect2 = "", effect3 = "", effect1r = 0, effect2r = 0, effect3r = 0,}},
    loc_vars = function(self, info_queue, card)
        local colours = {}
        for i = 1, 3 do
            if card.ability.extra["effect"..i] == "" then
                colours[i] = G.ARGS.LOC_COLOURS.inactive
            elseif card.ability.extra["effect"..i] == "$" then
                colours[i] = G.C.GOLD
            elseif card.ability.extra["effect"..i] == "Chips" then
                colours[i] = G.C.BLUE
            elseif card.ability.extra["effect"..i] == "Mult" then
                colours[i] = G.C.RED
            end
        end
        return {vars = {
        card.ability.extra.effect1, card.ability.extra.effect2, card.ability.extra.effect3,
        card.ability.extra.effect1r, card.ability.extra.effect2r, card.ability.extra.effect3r, colours = colours}}
    end,
    calculate = function(self, card, context)
        bctable = {
            "Chips",
            "$",
            "Mult",
            ""
        }
        if context.setting_blind or context.reroll_shop or context.before then
            card_eval_status_text(card, 'extra', nil, nil, nil, {message = "Advanced!", colour = HEX('B3D3F0')})
            card.ability.extra.effect3 = card.ability.extra.effect2
            card.ability.extra.effect3r = card.ability.extra.effect2r
            card.ability.extra.effect2 = card.ability.extra.effect1
            card.ability.extra.effect2r = card.ability.extra.effect1r
            card.ability.extra.effect1 = pseudorandom_element(bctable, pseudoseed('incomingbattlecats'))
            print(card.ability.extra.effect1)
            if card.ability.extra.effect1 == "Chips" then
                print("cve1")
                card.ability.extra.effect1r = math.random(1, 100)
            elseif card.ability.extra.effect1 == "Mult" then
                print("muve1")
                card.ability.extra.effect1r = math.random(1, 35)
            elseif card.ability.extra.effect1 == "$" then
                print("move1")
                card.ability.extra.effect1r = math.random(1, 7)
            else
                card.ability.extra.effect1r = 0
            end
        elseif context.joker_main then
            if card.ability.extra.effect3 == "Chips" then
                return {
                    chips = card.ability.extra.effect3r
                }
            elseif card.ability.extra.effect3 == "Mult" then
                return {
                    mult = card.ability.extra.effect3r
                }
            elseif card.ability.extra.effect3 == "$" then
                ease_dollars(card.ability.extra.effect3r)
            end
        end
    end
}
