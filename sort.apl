⍝ based on https://twitter.com/dabeaz/status/1569286183116746752 Sort this list according to the second value in the inner tuple.

⊢points←(0 0) (1 8) (8 2) (3 5) (9 7)
⍋points ⍝ 1 2 4 3 5
points[⍋points]
2⊃¨points ⍝ 0 8 2 5 7
⍋2⊃¨points ⍝ 1 3 4 5 2
points[⍋2⊃¨points]

⍝ ┌───┬───┬───┬───┬───┐
⍝ │0 0│8 2│3 5│9 7│1 8│
⍝ └───┴───┴───┴───┴───┘
      


(⊂∘⍋⌷⊢)'ASSORTED' ⍝ ADEORSST