	db DEX_BALLOONDER ; pokedex id

	db 130,  80,  30, 125,  80
	;   hp  atk  def  spd  spc

	db FLYING, FLYING ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/balloonder.pic", 0, 1 ; sprite dimensions
	dw BalloonderPicFront, BalloonderPicBack

	db GUST, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SELFDESTRUCT, SWIFT,        SKULL_BASH,   DREAM_EATER,  REST,         \
	     PSYWAVE,      EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   FLY,          \
	     FLASH
	; end

	db BANK(BalloonderPicFront)
	assert BANK(BalloonderPicFront) == BANK(BalloonderPicBack)
