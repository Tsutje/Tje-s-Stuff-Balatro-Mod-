SMODS.Consumable{
    key = 'nptfoiegras',
    set = 'creamerycons',
    nptrarity = 'rarecreamery',
    hidden = true,
    soul_set = 'creamerycons',
    can_repeat_soul = true,
    soul_rate = 0.03,
    atlas = 'creameryatlas',
    pos = {x = 6, y = 2},
    soul_pos = {x = 7, y = 2},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = { key = "rental", set = "Other", vars = {G.GAME.rental_rate or 3}}
        info_queue[#info_queue+1] = { key = "eternal", set = "Other" }
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        info_queue[#info_queue+1] = { key = "perishable", set = "Other", vars = {G.GAME.perishable_r or 5} }
    end,

    can_use = function()
        if #G.jokers.cards > 1 then
            if not G.jokers.cards[1].ability.perishable then
                if not G.jokers.cards[#G.jokers.cards].ability.eternal then
                    return true
                else 
                    return false
                end
            else
                return false
            end
        else
            return false
        end
    end,
    use = function(self, card)
        lmcard = G.jokers.cards[1]
        lmmessagetext = {
            "This taste...",
            "Very Rich!",
            "Delectable!",
            "Vanillagem!",
            "Tastes like Photochad!",
            "I want more!",
            "Yum!"
        }
        card_eval_status_text(lmcard, 'extra', nil, nil, nil, {message = pseudorandom_element(lmmessagetext, pseudoseed('lmfgmsg')), colour = HEX('F1943C')})
        play_sound('tarot1')
        lmcard:add_sticker('rental', true)
        lmcard:add_sticker('eternal', true)
        lmcard:juice_up()
        lmcard:set_edition("e_negative")
        rmcard = G.jokers.cards[#G.jokers.cards]
        rmmessagetext = {
            "Blechk!",
            "Ew!",
            "Hurgh!",
            "*Puking*",
            "Irgh...",
            "Yuck!",
            "Tastes like Nxkoo!",
            "Numberslop..."
        }
        play_sound('tarot2')
        card_eval_status_text(rmcard, 'extra', nil, nil, nil, {message = pseudorandom_element(rmmessagetext, pseudoseed('rmfgmsg')), colour = HEX('F1943C')})
        rmcard:add_sticker('perishable', true)
        rmcard:juice_up()
    end
}