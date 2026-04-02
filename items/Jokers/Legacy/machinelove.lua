SMODS.Joker{
    key = 'MachineLove',
    loc_txt = {
        name = 'Machine Love',
        text = {
            "{C:green}#1# in #2#{} chance to {C:attention}Create{}",
            "a {C:green}random{} {C:attention}Consumable{} from {C:blue}every{} type",
            "{C:green}and/or{} a {C:attention}Double Tag{} when you",
            "you use a {C:attention}Consumable.{}",
            "{C:inactive,s:0.75}Chances for each are Independent!{}",
            "{C:inactive,s:0.75}Does not need space!{}",
            "{C:inactive,s:0.6}Consumables only in base game{}",
            '{C:inactive}"I think im in love!"{}'
        }
        
    },
    atlas = 'TetOS',
    rarity = 3, 
    cost = 10, 
    unlocked = true, 
    discovered = true, 
    blueprint_compat = false, 
    eternal_compat = true, --can it be eternal
    perishable_compat = true, --can it be perishable
    pos = {x = 0, y = 0},
    config = { extra = { odds = 10}  },
    loc_vars = function(self, info_queue, card)
        return { vars = { (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable then
            using_consumeable = true
            if using_consumeable == true then
                if pseudorandom('MachineLove') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    local newCard = create_card("Spectral", G.consumables, nil, nil, nil, nil)
                    newCard:add_to_deck()
                    G.consumeables:emplace(newCard)
                end
                if pseudorandom('MachineLove') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    local newCard = create_card("Tarot", G.consumables, nil, nil, nil, nil)
                    newCard:add_to_deck()
                    G.consumeables:emplace(newCard)
                end
                if pseudorandom('MachineLove') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    local newCard = create_card("Planet", G.consumables, nil, nil, nil, nil)
                    newCard:add_to_deck()
                    G.consumeables:emplace(newCard)
                end
                if pseudorandom('MachineLove') < G.GAME.probabilities.normal / card.ability.extra.odds then
                    add_tag(Tag('tag_double'))
                end
            end
        end
    end
                
}
  