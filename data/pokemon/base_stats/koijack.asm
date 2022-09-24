	db DEX_KOIJACK ; pokedex id

	db  35,  57,  50,  53,  40
	;   hp  atk  def  spd  spc

	db WATER, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/koijack.pic", 0, 1 ; sprite dimensions
	dw KoijackPicFront, KoijackPicBack

	db PECK, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF
	; end

	db BANK(KoijackPicFront)
	assert BANK(KoijackPicFront) == BANK(KoijackPicBack)
