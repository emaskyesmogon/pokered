	db DEX_FARFETCHD ; pokedex id

	db  62,  90,  65,  79,  88
	;   hp  atk  def  spd  spc

	db FOOD, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1 ; sprite dimensions
	dw FarfetchdPicFront, FarfetchdPicBack

	db PECK, SAND_ATTACK, BARRAGE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   SWORDS_DANCE, WHIRLWIND,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    HYPER_BEAM,   DOUBLE_EDGE,  RAGE,         MIMIC,        \
		 DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        EGG_BOMB,     \
		 SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          FLY
	; end

	db 0 ; padding
