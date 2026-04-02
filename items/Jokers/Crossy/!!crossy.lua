if not TJE.config.bypass_crossy then
    if next(SMODS.find_mod('BabaDecks')) then
        assert(SMODS.load_file('items/Jokers/Crossy/babadecks.lua'))()
    end

    if next(SMODS.find_mod('SystemClock')) then
        assert(SMODS.load_file('items/Jokers/Crossy/systemclock.lua'))()
    end

    if next(SMODS.find_mod('bloonlatro')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/bloonlatro.lua'))()
    end

    if next(SMODS.find_mod('Brook')) then
        assert(SMODS.load_file('items/Jokers/Crossy/brook.lua'))()
    end

    -- assert(SMODS.load_file('items/Jokers/Crossy/kopipuestofacecards.lua'))() please ask shinku to fix it. PLEASE.

    if next(SMODS.find_mod('markiplierJoker')) then
        assert(SMODS.load_file('items/Jokers/Crossy/markipliermultiplier.lua'))()
    end

    if next(SMODS.find_mod('GRM')) then
        assert(SMODS.load_file('items/Jokers/Crossy/grim.lua'))()
    end

    if next(SMODS.find_mod('ColorblindSeals')) then
        assert(SMODS.load_file('items/Jokers/Crossy/colorblindseals.lua'))()
    end

    if next(SMODS.find_mod('mills')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/fusioncookbook.lua'))()
    end

    if next(SMODS.find_mod('artbox')) then
        assert(SMODS.load_file('items/Jokers/Crossy/artbox.lua'))()
    end

    if next(SMODS.find_mod('Talisman')) then
        assert(SMODS.load_file('items/Jokers/Crossy/talisman.lua'))()
    end

    if next(SMODS.find_mod('galdur')) then
        assert(SMODS.load_file('items/Jokers/Crossy/galdur.lua'))()
    end

    if next(SMODS.find_mod('reUnlock')) then
        assert(SMODS.load_file('items/Jokers/Crossy/reunlockall.lua'))()
    end

    if next(SMODS.find_mod('Sagatro')) then
        assert(SMODS.load_file('items/Jokers/Crossy/sagatro.lua'))()
    end

    if next(SMODS.find_mod('RiftRaft')) then
        assert(SMODS.load_file('items/Jokers/Crossy/riftraft.lua'))()
    end

    if next(SMODS.find_mod('2 For 1 Tarots')) then
        assert(SMODS.load_file('items/Jokers/Crossy/2for1tarots.lua'))()
    end

    if next(SMODS.find_mod('StrangePencil')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/strangepencil.lua'))()
    end

    if next(SMODS.find_mod('allinjest')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/blankplanet.lua'))()
        assert(SMODS.load_file('items/Handtype/lunarhouse.lua'))()
        assert(SMODS.load_file('items/Jokers/Crossy/allinjest.lua'))()
    end
else
    assert(SMODS.load_file('items/Jokers/Crossy/babadecks.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/systemclock.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/brook.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/kopipuestofacecards.lua'))
    assert(SMODS.load_file('items/Jokers/Crossy/markipliermultiplier.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/colorblindseals.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/talisman.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/galdur.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/reunlockall.lua'))()
    assert(SMODS.load_file('items/Jokers/Crossy/2for1tarots.lua'))()
    assert(SMODS.load_file('items/Consumables/CrossyExclusive/blankplanet.lua'))()
    assert(SMODS.load_file('items/Handtype/lunarhouse.lua'))()

    ---Mod-Side Exclusives

    if next(SMODS.find_mod('StrangePencil')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/strangepencil.lua'))()
    end

    if next(SMODS.find_mod('allinjest')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/blankplanet.lua'))()
        assert(SMODS.load_file('items/Handtype/lunarhouse.lua'))()
        assert(SMODS.load_file('items/Jokers/Crossy/allinjest.lua'))()
    end

    if next(SMODS.find_mod('RiftRaft')) then
        assert(SMODS.load_file('items/Jokers/Crossy/riftraft.lua'))()
    end

    if next(SMODS.find_mod('Sagatro')) then
        assert(SMODS.load_file('items/Jokers/Crossy/sagatro.lua'))()
    end

    if next(SMODS.find_mod('mills')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/fusioncookbook.lua'))()
    end

    if next(SMODS.find_mod('artbox')) then
        assert(SMODS.load_file('items/Jokers/Crossy/artbox.lua'))()
    end

    if next(SMODS.find_mod('GRM')) then
        assert(SMODS.load_file('items/Jokers/Crossy/grim.lua'))()
    end
    
    if next(SMODS.find_mod('bloonlatro')) then
        assert(SMODS.load_file('items/Consumables/CrossyExclusive/bloonlatro.lua'))()
    end
end