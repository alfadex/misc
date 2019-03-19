; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v2 on Sun Mar 17 2019 11:56:28 GMT-0700 (Pacific Daylight Time)
G91                                  ; relative positioning

G1 Z5 F6000 S2                       ; lift Z relative to current position

G90                                  ; absolute positioning
G1 X20 Y20 F6000 ; go to first probe point

;M558 A1 F400 ; Set single probing at faster feed rate
M558 A1 F800 ; Set single probing at faster feed rate
G30                                  ; home Z by probing the bed

M558 A1 F100	 ; Set multi probing at slower feed rate
G30 ; Probe again to get a more accurate position

; Uncomment the following lines to lift Z after probing
;G91                                 ; relative positioning
;G1 S2 Z5 F100                       ; lift Z relative to current position
;G90                                 ; absolute positioning

