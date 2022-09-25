	db DEX_MILTANK ; pokedex id

	db  95,  80, 105, 100,  70
	;   hp  atk  def  spd  spc

	db NORMAL, FOOD ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/miltank.pic", 0, 1 ; sprite dimensions
	dw MiltankPicFront, MiltankPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  ICE_BEAM,    \
	     BLIZZARD,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  THUNDER,     \
	     EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  BIDE,         REST,        \
		 SUBSTITUTE,   SURF,         STRENGTH
	; end

	db 0 ; padding
