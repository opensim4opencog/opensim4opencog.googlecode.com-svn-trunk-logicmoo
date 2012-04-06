; woodworking 'choose one' task with 9 parts
; Machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 704726

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder0 - grinder
    glazer0 - glazer
    immersion-varnisher0 - immersion-varnisher
    planer0 - planer
    highspeed-saw0 - highspeed-saw
    spray-varnisher0 - spray-varnisher
    saw0 - saw
    green white red mauve blue black - acolour
    beech oak - awood
    p0 p1 p2 p3 p4 p5 p6 p7 p8 - part
    b0 b1 b2 b3 b4 b5 - board
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (= (total-cost) 0)
    (has-colour glazer0 blue)
    (has-colour glazer0 natural)
    (has-colour glazer0 black)
    (has-colour glazer0 green)
    (has-colour glazer0 white)
    (has-colour glazer0 red)
    (has-colour immersion-varnisher0 blue)
    (has-colour immersion-varnisher0 natural)
    (has-colour immersion-varnisher0 mauve)
    (has-colour immersion-varnisher0 black)
    (has-colour immersion-varnisher0 green)
    (has-colour immersion-varnisher0 white)
    (has-colour immersion-varnisher0 red)
    (empty highspeed-saw0)
    (has-colour spray-varnisher0 blue)
    (has-colour spray-varnisher0 natural)
    (has-colour spray-varnisher0 mauve)
    (has-colour spray-varnisher0 black)
    (has-colour spray-varnisher0 green)
    (has-colour spray-varnisher0 white)
    (has-colour spray-varnisher0 red)
    (unused p0)
    (= (goal-size p0) 7)
    (= (glaze-cost p0) 12)
    (= (grind-cost p0) 21)
    (= (plane-cost p0) 14)
    (unused p1)
    (= (goal-size p1) 5)
    (= (glaze-cost p1) 10)
    (= (grind-cost p1) 15)
    (= (plane-cost p1) 10)
    (unused p2)
    (= (goal-size p2) 7)
    (= (glaze-cost p2) 12)
    (= (grind-cost p2) 21)
    (= (plane-cost p2) 14)
    (unused p3)
    (= (goal-size p3) 6)
    (= (glaze-cost p3) 11)
    (= (grind-cost p3) 18)
    (= (plane-cost p3) 12)
    (unused p4)
    (= (goal-size p4) 5)
    (= (glaze-cost p4) 10)
    (= (grind-cost p4) 15)
    (= (plane-cost p4) 10)
    (unused p5)
    (= (goal-size p5) 8)
    (= (glaze-cost p5) 13)
    (= (grind-cost p5) 24)
    (= (plane-cost p5) 16)
    (unused p6)
    (= (goal-size p6) 13)
    (= (glaze-cost p6) 18)
    (= (grind-cost p6) 39)
    (= (plane-cost p6) 26)
    (unused p7)
    (= (goal-size p7) 9)
    (= (glaze-cost p7) 14)
    (= (grind-cost p7) 27)
    (= (plane-cost p7) 18)
    (unused p8)
    (= (goal-size p8) 5)
    (= (glaze-cost p8) 10)
    (= (grind-cost p8) 15)
    (= (plane-cost p8) 10)
    (= (board-size b0) 22)
    (wood b0 beech)
    (surface-condition b0 rough)
    (available b0)
    (= (board-size b1) 27)
    (wood b1 beech)
    (surface-condition b1 rough)
    (available b1)
    (= (board-size b2) 26)
    (wood b2 oak)
    (surface-condition b2 rough)
    (available b2)
    (= (board-size b3) 25)
    (wood b3 oak)
    (surface-condition b3 rough)
    (available b3)
    (= (board-size b4) 34)
    (wood b4 oak)
    (surface-condition b4 rough)
    (available b4)
    (= (board-size b5) 32)
    (wood b5 oak)
    (surface-condition b5 smooth)
    (available b5)
  )
  (:goal
    (and
      (preference g_p0_0 (and
          (wood p0 oak)
          (surface-condition p0 smooth)
          (available p0)
      ))
      (preference g_p0_1 (and
          (colour p0 green)
          (wood p0 oak)
          (surface-condition p0 verysmooth)
          (available p0)
      ))
      (preference g_p0_2 (and
          (colour p0 black)
          (wood p0 beech)
          (surface-condition p0 smooth)
          (available p0)
      ))
      (preference g_p1_0 (and
          (colour p1 natural)
          (wood p1 beech)
          (surface-condition p1 smooth)
          (treatment p1 varnished)
          (available p1)
      ))
      (preference g_p1_1 (and
          (surface-condition p1 smooth)
          (treatment p1 glazed)
          (available p1)
      ))
      (preference g_p1_2 (and
          (colour p1 black)
          (wood p1 beech)
          (surface-condition p1 smooth)
          (treatment p1 varnished)
          (available p1)
      ))
      (preference g_p1_3 (and
          (wood p1 oak)
          (surface-condition p1 smooth)
          (available p1)
      ))
      (preference g_p2_0 (and
          (colour p2 blue)
          (wood p2 oak)
          (surface-condition p2 smooth)
          (treatment p2 varnished)
          (available p2)
      ))
      (preference g_p2_1 (and
          (colour p2 natural)
          (surface-condition p2 verysmooth)
          (treatment p2 varnished)
          (available p2)
      ))
      (preference g_p2_2 (and
          (wood p2 oak)
          (treatment p2 glazed)
          (available p2)
      ))
      (preference g_p3_0 (and
          (colour p3 white)
          (wood p3 oak)
          (available p3)
      ))
      (preference g_p3_1 (and
          (colour p3 blue)
          (wood p3 oak)
          (surface-condition p3 verysmooth)
          (treatment p3 varnished)
          (available p3)
      ))
      (preference g_p3_2 (and
          (colour p3 natural)
          (wood p3 oak)
          (surface-condition p3 verysmooth)
          (treatment p3 varnished)
          (available p3)
      ))
      (preference g_p3_3 (and
          (colour p3 natural)
          (surface-condition p3 smooth)
          (treatment p3 varnished)
          (available p3)
      ))
      (preference g_p4_0 (and
          (colour p4 natural)
          (surface-condition p4 verysmooth)
          (treatment p4 varnished)
          (available p4)
      ))
      (preference g_p4_1 (and
          (colour p4 white)
          (wood p4 beech)
          (surface-condition p4 smooth)
          (treatment p4 varnished)
          (available p4)
      ))
      (preference g_p4_2 (and
          (colour p4 natural)
          (wood p4 oak)
          (surface-condition p4 smooth)
          (treatment p4 glazed)
          (available p4)
      ))
      (preference g_p5_0 (and
          (colour p5 white)
          (wood p5 oak)
          (surface-condition p5 smooth)
          (treatment p5 varnished)
          (available p5)
      ))
      (preference g_p5_1 (and
          (colour p5 red)
          (wood p5 oak)
          (surface-condition p5 verysmooth)
          (available p5)
      ))
      (preference g_p6_0 (and
          (colour p6 blue)
          (wood p6 beech)
          (treatment p6 varnished)
          (available p6)
      ))
      (preference g_p6_1 (and
          (colour p6 blue)
          (wood p6 oak)
          (surface-condition p6 smooth)
          (treatment p6 varnished)
          (available p6)
      ))
      (preference g_p7_0 (and
          (colour p7 mauve)
          (wood p7 oak)
          (treatment p7 varnished)
          (available p7)
      ))
      (preference g_p7_1 (and
          (colour p7 red)
          (wood p7 oak)
          (surface-condition p7 smooth)
          (treatment p7 varnished)
          (available p7)
      ))
      (preference g_p7_2 (and
          (wood p7 oak)
          (surface-condition p7 verysmooth)
          (treatment p7 varnished)
          (available p7)
      ))
      (preference g_p7_3 (and
          (colour p7 blue)
          (wood p7 beech)
          (available p7)
      ))
      (preference g_p8_0 (and
          (colour p8 red)
          (wood p8 oak)
          (surface-condition p8 verysmooth)
          (treatment p8 glazed)
          (available p8)
      ))
      (preference g_p8_1 (and
          (colour p8 mauve)
          (wood p8 beech)
          (surface-condition p8 verysmooth)
          (treatment p8 varnished)
          (available p8)
      ))
    )
  )
  (:metric maximize
    (- 1981
      (+ (total-cost)
         (* (is-violated g_p0_0) 69)
         (* (is-violated g_p0_1) 74)
         (* (is-violated g_p0_2) 67)
         (* (is-violated g_p1_0) 70)
         (* (is-violated g_p1_1) 66)
         (* (is-violated g_p1_2) 76)
         (* (is-violated g_p1_3) 62)
         (* (is-violated g_p2_0) 76)
         (* (is-violated g_p2_1) 76)
         (* (is-violated g_p2_2) 65)
         (* (is-violated g_p3_0) 45)
         (* (is-violated g_p3_1) 84)
         (* (is-violated g_p3_2) 78)
         (* (is-violated g_p3_3) 71)
         (* (is-violated g_p4_0) 62)
         (* (is-violated g_p4_1) 85)
         (* (is-violated g_p4_2) 62)
         (* (is-violated g_p5_0) 99)
         (* (is-violated g_p5_1) 101)
         (* (is-violated g_p6_0) 56)
         (* (is-violated g_p6_1) 104)
         (* (is-violated g_p7_0) 66)
         (* (is-violated g_p7_1) 88)
         (* (is-violated g_p7_2) 93)
         (* (is-violated g_p7_3) 52)
         (* (is-violated g_p8_0) 66)
         (* (is-violated g_p8_1) 68)
  )))
)