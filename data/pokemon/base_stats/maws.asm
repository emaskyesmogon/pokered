	db DEX_MAWS ; pokedex id

	db  80, 115, 100,  60,  85
	;   hp  atk  def  spd  spc

	db WATER, FERAL ; type
	db 45 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/maws.pic", 0, 1 ; sprite dimensions
	dw MawsPicFront, MawsPicBack

	db BITE, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  \
	     BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   \
	     RAGE,         EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   SURF
	; end

	db BANK(MawsPicFront)
	assert BANK(MawsPicFront) == BANK(MawsPicBack)
