SECTION "Sprite Buffers", SRAM, BANK[0]

S_SPRITEBUFFER0:: ds SPRITEBUFFERSIZE ; a000
S_SPRITEBUFFER1:: ds SPRITEBUFFERSIZE ; a188
S_SPRITEBUFFER2:: ds SPRITEBUFFERSIZE ; a310

	ds $100

sHallOfFame:: ds HOF_TEAM * NUM_HOF_TEAMS ; a598

SECTION "Save Data", SRAM, BANK[1]

SECTION "Save Data Start", SRAM1[$a598]
S_SAVEDPLAYERNAME:: ds 11 ; a598
S_SAVEDMAINDATA:: ds W_NUMINBOX - wPokedexOwned ; a5a3
S_SAVEDSPRITEDATA:: ds wOAMBuffer - wSpriteStateData1 ; ad2c
S_SAVEDPARTYDATA:: ds wPokedexOwned - wPartyCount ; af2c
S_SAVEDCURBOXDATA:: ds wBoxMonNicksEnd - W_NUMINBOX ; b0c0
S_SAVEDhTilesetType:: ds 1 ; b522
S_SAVEDMAINDATACHECKSUM:: ds 1 ; b523

SECTION "Saved Boxes", SRAM, BANK[2] ; pointers used for bank 3 too

S_BOXLENGTH EQU $462

S_SAVEDBOX1:: ds S_BOXLENGTH ; a000
S_SAVEDBOX2:: ds S_BOXLENGTH ; a462
S_SAVEDBOX3:: ds S_BOXLENGTH ; a8c4
S_SAVEDBOX4:: ds S_BOXLENGTH ; ad26
S_SAVEDBOX5:: ds S_BOXLENGTH ; b188
S_SAVEDBOX6:: ds S_BOXLENGTH ; b5ea
S_SAVEDBOXESCHECKSUM:: ds 1 ; ba4c
S_SAVEDBOXESCHECKSUM2:: ds 6 ; ba4d