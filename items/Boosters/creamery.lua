
SMODS.Atlas{
    key = 'creameryboosteratlas', --Boosters key
    path = 'nptcreameryboosters.png',
    px = 57,
    py = 93
}
SMODS.Booster {
    key = "creameryboosterbase",
    atlas = "creameryboosteratlas",
    draw_hand = true,
    iscreamery = "true",
    loc_txt = {
        name = 'Creamery Pack',
        text = {
            "Choose {C:attention}#1#{} of up to",
            "{C:attention}#2#{} {C:creamerytxt}Creamery{} cards to",
            "be used {C:attention}immediately{}",
        },
        group_name = 'Creamery Pack'
    },
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = 3,
        choose = 1
    },
    cost = 3,
    weight = 0.8,
    create_card = function(self, card)
        return create_card('creamerycons', G.pack_cards, nil, nil, true, true, nil, "nptcream")
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('a53c54'))
        ease_background_colour({ new_colour = HEX('d28384'), special_colour = HEX('a53c54')})
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, card.ability.extra } }
    end
}
SMODS.Booster {
    key = "creameryboosterjumbo",
    atlas = "creameryboosteratlas",
    draw_hand = true,
    iscreamery = "true",
    loc_txt = {
        name = 'Jumbo Creamery Pack',
        text = {
            "Choose {C:attention}#1#{} of up to",
            "{C:attention}#2#{} {C:creamerytxt}Creamery{} cards to",
            "be used {C:attention}immediately{}",
        },
        group_name = 'Creamery Pack'
    },
    pos = {
        x = 1,
        y = 0
    },
    config = {
        extra = 5,
        choose = 1
    },
    cost = 4,
    weight = 0.8,
    create_card = function(self, card)
        return create_card('creamerycons', G.pack_cards, nil, nil, true, true, nil, "tjblank")
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('8abcff'))
        ease_background_colour({ new_colour = HEX('5574d1'), special_colour = HEX('8abcff')})
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, card.ability.extra } }
    end
}

SMODS.Booster {
    key = "creameryboostermega",
    atlas = "creameryboosteratlas",
    iscreamery = "true",
    draw_hand = true,
    loc_txt = {
        name = 'Mega Creamery Pack',
        text = {
            "Choose {C:attention}#1#{} of up to",
            "{C:attention}#2#{} {C:creamerytxt}Creamery{} cards to",
            "be used {C:attention}immediately{}",
        },
        group_name = 'Creamery Pack'
    },
    pos = {
        x = 2,
        y = 0
    },
    config = {
        extra = 5,
        choose = 2
    },
    cost = 5,
    weight = 0.25,
    create_card = function(self, card)
        return create_card('creamerycons', G.pack_cards, nil, nil, true, true, nil, "tjblank")
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX('b687d1'))
        ease_background_colour({ new_colour = HEX('7a548f'), special_colour = HEX('b687d1')})
    end,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, card.ability.extra } }
    end
}