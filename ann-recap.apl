⍝ from https://github.com/ghosthamlet/ann.apl

	  l0 ← 4 3 ⍴ 0 0 1  0 1 1  1 0 1  1 1 1
      y ← 4 1 ⍴ 0 0 1 1
      syn0 ← 3 1 ⍴ 0.5069797399 0.5703818579 0.9265880619
      e ← 2.718281828459045
      output ← { d ← l0 +.× ⍵ ⋄ 1 ÷ 1 + e * 0 - d }
      train ← { l1 ← output ⍵ ⋄ l1_err ← y - l1 ⋄ l1_delta ← l1_err × l1 × 1 - l1 ⋄ ⍵ + (⍉ l0) +.× l1_delta }
      syn0 ← (train⍣1000) syn0
      l1 ← output syn0
      l1
⍝ 0.03190672532
⍝ 0.02573526752
⍝ 0.979111759  
⍝ 0.974071711       

⍝ ok but uh what is it for