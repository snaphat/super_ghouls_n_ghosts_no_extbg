lorom

; Empty space start.
org $16B6D0

; Enable BG1 instead of BG2.
pushpc
{
    org $00BB04 : db $11
}
pullpc

; Mask off high bit of tiles.
pushpc
{
    org  $00DBE4 : fillbyte $20
    fill 16
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
