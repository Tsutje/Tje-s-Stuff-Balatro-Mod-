SMODS.Consumable{
    key = 'nptketchup',
    set = 'creamerycons',
    nptrarity = 'rarecreamery',
    hidden = true,
    soul_set = 'creamerycons',
    can_repeat_soul = true,
    soul_rate = 0.003,
    atlas = 'creameryatlas',
    pos = {x = 4, y = 2},
    soul_pos = {x = 5, y = 2},
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        info_queue[#info_queue + 1] = G.P_CENTERS.j_mr_bones
    end,

    can_use = function()
        return true
    end,
    use = function(self, card)
        local new_card = SMODS.add_card { set = 'Joker', key = "j_mr_bones", area = G.jokers }
        new_card:set_edition("e_negative")
        play_sound('tarot2')
        sanstext = {
            "*er er er",
            "*Befriendin ur mom",
            "*maybe its the way youre dressed",
            "*heya kiddo",
            "*stronger than you",
            "(Badumtss!)"
        }
        card_eval_status_text(new_card, 'extra', nil, nil, nil, {message = pseudorandom_element(sanstext, pseudoseed('sanstext')), colour = HEX('F14143')})
    end
}