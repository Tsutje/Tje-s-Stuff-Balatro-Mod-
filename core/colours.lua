loc_colour('') -- initializes args in case they're not there yet

-- Gradient definitions

SMODS.Gradient{
    key = "label", 
    colours = {
        HEX('FFB3B3'), -- soft red
        HEX('FFDBB3'), -- soft orange
        HEX('FFFFB3'), -- soft yellow
        HEX('B3FFB3'), -- soft green
        HEX('B3E0FF'), -- soft blue
        HEX('D1B3FF'), -- soft violet
        HEX('FFB3F0')  -- soft pinkish-violet
    }
}
SMODS.Gradient{
    key = "label_inverse", 
    colours = {
	    HEX('A398A6'), -- dark gray base
        HEX('727D8C'), -- muted deep blue
        HEX('997195')  -- muted violet
    }
}

SMODS.Gradient{
    key = "lunar_version", 
    colours = {
	    HEX('7986CB'),
        HEX('BA68C8')
    }
}

SMODS.Gradient{
    key = "dategradie",
    colours = {
        HEX('FEB3BF'),
        HEX('FF5E78')
    }
}

SMODS.Gradient{
    key = "thmmtrongradient",
    colours = {
        HEX('FE6262'),
        HEX('69A7F7')
    }
}

SMODS.Gradient{
    key = "shockedgradient",
    colours = {
        HEX('FCE899'),
        HEX('99F5FC')
    }
}

SMODS.Gradient{
    key = "rainbowgradient",
    colours = {
        HEX('F61F31'),
        HEX('F66E1F'),
        HEX('F6C71F'),
        HEX('59F61F'),
        HEX('1FA3F6'),
        HEX('AE1FF6')
    }
}

SMODS.Gradient{
    key = "tje_Echoria",
    colours = {
        HEX('9A7DA2'),
        HEX('CD99DB'),
        HEX('7B9CDB'),
        HEX('6AC8E2')
    }
}

SMODS.Gradient{
    key = "tje_Echoria_Inverse",
    colours = {
        HEX('6AC8E2'),
        HEX('7B9CDB'),
        HEX('CD99DB'),
        HEX('9A7DA2')
    }
}

---- Text colors
G.C.tsusjeopardytxt = HEX('FEC0E9')
G.ARGS.LOC_COLOURS.neapolitan = SMODS.Gradients.tje_neapolitan

G.C.KusuriPopText = HEX('D33245')

G.C.tsusjeopardytxt = HEX('1DA387')
G.ARGS.LOC_COLOURS.tsusjeopardytxt = G.C.tsusjeopardytxt

G.C.clstite = HEX('CA4DDF')
G.ARGS.LOC_COLOURS.clstite = G.C.clstite

G.C.chocolate = HEX('74594D')
G.ARGS.LOC_COLOURS.chocolate = G.C.chocolate



G.C.creamerytxt = HEX('97C7C2')
G.ARGS.LOC_COLOURS.creamerytxt = G.C.creamerytxt

---- Creamery booster colors
G.C.creameryboosterbaseprimary = HEX('d28384')
G.C.creameryboosterbasesecondary = HEX('a53c54')

G.C.creameryboosterjumboprimary = HEX('8abcff')
G.C.creameryboosterjumbosecondary = HEX('5574d1')

G.C.creameryboostermegaprimary = HEX('b687d1')
G.C.creameryboostermegasecondary = HEX('7a548f')

-- Assign to LOC_COLOURS
G.ARGS.LOC_COLOURS.nptcbbp = G.C.creameryboosterbaseprimary
G.ARGS.LOC_COLOURS.nptcbbs = G.C.creameryboosterbasesecondary

G.ARGS.LOC_COLOURS.nptcbjp = G.C.creameryboosterjumboprimary
G.ARGS.LOC_COLOURS.nptcbjs = G.C.creameryboosterjumbosecondary

G.ARGS.LOC_COLOURS.nptcbmp = G.C.creameryboostermegaprimary
G.ARGS.LOC_COLOURS.nptcbms = G.C.creameryboostermegasecondary

---- Gradient assignments

G.ARGS.LOC_COLOURS.tje_label_inverse = SMODS.Gradients.tje_label_inverse
G.ARGS.LOC_COLOURS.tje_label = SMODS.Gradients.tje_label
G.ARGS.LOC_COLOURS.tje_lunar_version = SMODS.Gradients.tje_lunar_version

G.ARGS.LOC_COLOURS.thmtron = SMODS.Gradients.tje_thmmtrongradient
G.ARGS.LOC_COLOURS.hextxt = SMODS.Gradients.tje_hexgradie

G.ARGS.LOC_COLOURS.shocked = SMODS.Gradients.tje_shockedgradient
G.ARGS.LOC_COLOURS.rainbowgradient = SMODS.Gradients.tje_rainbowgradient

G.ARGS.LOC_COLOURS.tje_Echoria = SMODS.Gradients.tje_Echoria
G.ARGS.LOC_COLOURS.tje_Echoria_Inverse = SMODS.Gradients.tje_Echoria_Inverse

-- Solid colors
