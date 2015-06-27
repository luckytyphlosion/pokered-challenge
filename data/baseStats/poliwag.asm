PoliwagBaseStats: ; 38a52 (e:4a52)
db DEX_POLIWAG ; pokedex id
db 40 ; base hp
db 50 ; base attack
db 40 ; base defense
db 90 ; base speed
db 40 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 77 ; base exp yield
INCBIN "pic/bmon/poliwag.pic",0,1 ; 55, sprite dimensions
dw PoliwagPicFront
dw PoliwagPicBack
; attacks known at lvl 0
db HYPNOSIS
db WATER_GUN
db ROLLING_KICK
db BODY_SLAM
db 3 ; growth rate
; learnset
db %10100000
db %00111111
db %00001000
db %11010000
db %10000010
db %00101000
db %00010010
db 0 ; padding
