⍝ none of this was written by me, I mostly don't understand it, just trying to comprehend via practice
sax←'def,    fac x,  if,      = x 0,    1,  * x,  fac,  - x 1,,let foo,  + 1 2,let bar,  + 3 4,+ foo bar'
⊢sav←↑','(≠⊆⊢)sax
dv←+/^\' '=sav
ddv←{⊃⍴∊⍵}¨⌽⊃{(⊂⍺,(⍺≥⊃⍵)/⊃⍵),⍵}/⌽dv
⍝ while writing this line I learned how to use the local keyboard 1 menu, yes I am noob but also YAY
inp←(^\≢⊢)⍤1⊢' '=⌽dv⌽⍤1 2⊢sav
∊⍤1(('('/⍨¨inp⌈-),sav,')'/⍨¨(inp>0⌈-)+0⌈⊢)2-/ddv,0