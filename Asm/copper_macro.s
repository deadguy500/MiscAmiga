wait    set     $2c07
        rept    256
        dc.w    wait, $fffe
        dc.w    $01fe, $0000
wait    set     (wait+$100)&$ffff
        endr