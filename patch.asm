lorom

; Empty space start.
org $16B6D0

; Enable BG1 instead of BG2.
pushpc
{
     org $00BB04 : db $11 ; lvl 4.1
     org $00BB05 : db $11 ; lvl 4.2
pullpc

; Mask off high bit of tiles.
pushpc
{
    ; lvl 4.1
    org  $00DBE4 : fillbyte $20 : fill 16
    ; lvl 4.2
    org  $00DC25 : fillbyte $30 : fill 27
    org  $00DC44 : fillbyte $20 : fill 16
    org  $00DC56 : fillbyte $40 : fill 06
}
pullpc

; Increase priority of sprites.
sprite_priority_increase:
{
    ora #$1000
    sta $7e2006, x
    rtl
}

; increase priority of sprites
pushpc
{
    ; Change mask off value from $FC to $FF.
    org $0187DB : db $FF

    ; Jump to new code.
    org $058140
    jsl sprite_priority_increase

}
pullpc
