draw_to_screen:
    move.l #0, d0
    lea.l jumptable, a0
    lea.l screen, a5

    move.l (a0,d0.l), a1
    jsr (a1)

    add.l #40*2, a5
    add.l #4, d0

    move.l (a0,d0.l), a1
    jsr (a1)

    add.l #40*2, a5
    add.l #4, d0

    move.l (a0,d0.l), a1
    jsr (a1)

    rts

init_jumptable:
    lea.l jumptable, a0

    lea.l draw_one, a1
    move.l a1, (a0)

    lea.l draw_two, a1
    move.l a1, 4(a0)

    lea.l draw_three, a1
    move.l a1, 8(a0)

    rts

draw_one:
    move.w #$ffff, (a5)
    move.w #$ffff, 2(a5)
    rts

draw_two:
    move.w #$ff00, (a5)
    move.w #$00ff, 2(a5)
    rts

draw_three:
    move.w #$8000, (a5)
    move.w #$0001, 2(a5)
    rts

jumptable:
    dc.l $00000000
    dc.l $00000000
    dc.l $00000000
    dc.l $00000000
    dc.l $00000000