SMODS.Consumable{
    key = 'nptrockyroad',
    set = 'creamerycons',
    atlas = 'creameryatlas',
    tjseries = 'npt',
    pos = {x = 5, y = 0},
    config = { extra = { odds = 2, money = -2, cardcheck = 0, cardsneed = 3 } },
    loc_vars = function(self, info_queue, card)
        return {vars = { card.ability.extra.cardsneed, (G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.money} }
    end,

    can_use = function()
        return G.hand and #G.hand.cards > 0 
    end,

    use = function(self, card)
        for i, handcards in ipairs(G.hand.cards) do
            card.ability.extra.cardcheck = card.ability.extra.cardcheck+1
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = '0.5',
                func = function()
                    local sound={
                        "tarot1",
                        "tarot2",
                        "timpani",
                        "slice1"
                    }
                    handcards.T.r = -0.2
                    handcards:juice_up(0.3, 0.4)
                    handcards.states.drag.is = true
                    handcards.children.center.pinch.x = true
                    play_sound(sound[math.random(1, #sound)])
                    G.E_MANAGER:add_event(Event({
                        trigger = 'after', delay = 0.3, blockable = false,
                        func = function()
                            handcards:remove()
                            handcards = nil
                        return true;end   
                    }))
                    return true
                end    
            }))
        end
        ::rrmaketag::
        print('inttagcreatenptrockyroad')
        if card.ability.extra.cardcheck > card.ability.extra.cardsneed then
            card.ability.extra.cardcheck = card.ability.extra.cardcheck-card.ability.extra.cardsneed
            if pseudorandom('rockyroad') < G.GAME.probabilities.normal/card.ability.extra.odds then
                card:juice_up()
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Tagged!', colour = HEX('47362F')})
                local tag_pool = get_current_pool('Tag')
                local selected_tag = pseudorandom_element(tag_pool, pseudoseed('tagsed'))
                local check = 1
                while selected_tag == 'UNAVAILABLE' do
                    check = check + 1
                    selected_tag = pseudorandom_element(tag_pool, pseudoseed('tagsedseed'..check))
                end
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        add_tag(Tag(selected_tag))
                        return true
                    end)
                }))
            else
                card:juice_up()
                card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Nope!', colour = HEX('47362F')})
                ease_dollars(card.ability.extra.money)
            end
            if card.ability.extra.cardcheck > card.ability.extra.cardsneed then
                goto rrmaketag
            end
        end
        SMODS.draw_cards(G.hand.config.card_limit)
    end
}