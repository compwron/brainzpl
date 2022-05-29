⍝ none of this was written by me, I mostly don't understand it, just trying to comprehend via practice
sax←'def,    fac x,  if,      = x 0,    1,  * x,  fac,  - x 1,,let foo,  + 1 2,let bar,  + 3 4,+ foo bar'
⊢sav←↑','(≠⊆⊢)sax
dv←+/^\' '=sav
ddv←{⊃⍴∊⍵}¨⌽⊃{(⊂⍺,(⍺≥⊃⍵)/⊃⍵),⍵}/⌽dv
⍝ while writing this line I learned how to use the local keyboard 1 menu, yes I am noob but also YAY
inp←(^\≢⊢)⍤1⊢' '=⌽dv⌽⍤1 2⊢sav
∊⍤1(('('/⍨¨inp⌈-),sav,')'/⍨¨(inp>0⌈-)+0⌈⊢)2-/ddv,0


⍝ approach 2
{⊃⍴∊⍵}¨⌽⊃{(⊂⍺,(⍺≥⊃⍵)/⊃⍵),⍵}/⌽dv
⌽⌊\⌽5↑dv
(⊢=⌊\)⌽5↑dv
(⊢=⌊\)⍤⌽¨,\5↑dv
(+/⊢=⌊\)⍤⌽¨,\5↑dv
(+/⊢=⌊\)⍤⌽¨,\dv
ddv≡(+/⊢=⌊\)⍤⌽¨,\dv

⍝ ",[.5]" is how you spell "concat along dimension that wasn't there before"
⍝ whoops, what is sim? undefined
sim↑'if' '  flag' '  + 1' '    2' 'other'
'('⍪')',[0.5]sim
⍪⍉'('⍪')',[0.5]⍨⍉sim

⍝ more on concat
1 2 ⍴⎕A
'|',[.5]2 2 ⍴⎕A
⍉'|',[0.5]⍉2 2⍴⎕A
⍪⍉'|',[.5]⍉2 2⍴⎕A