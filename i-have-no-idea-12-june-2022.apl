⍝ https://scholarworks.iu.edu/dspace/bitstream/handle/2022/24749/Hsu%20Dissertation.pdf


⍝ dct :: Connectors (Get dlk Join) Formatted_Children
⍝ -> Connected_Children
⍝ Joins connectors on a rendered child tree along edge given by Get dct←{⍺[(2×2≠/n,0)+(1↑⍨≢m)+m+n←⌽∨\⌽m←' '≠⍺⍺ ⍵]⍵⍵ ⍵}

⍝ dlk :: Parent (Connector dlk Axis) Connected_Children -> Subtree
⍝ Links a parent with its prepared children using Connector along Axis dlk←{((x⌷⍴⍵)↑[x←2|1+⍵⍵]⍺),[⍵⍵]⍺⍺@(⊂0 0)⍣('┌'=⊃⍵)⊢⍵}

⍝ dwh :: Children Parent -> Subtree
⍝ Horizontally render a parent and its children
dwh←{⍵('┬'dlk 1)' │├┌└─'(0⌷⍉)dct,⊃⍪/((≢ ̈⍺), ̈⊂⌈/≢∘⍉ ̈⍺)↑ ̈⍺}

⍝ dwv :: Children Parent -> Subtree
⍝ Vertically render a parent and its children
dwv←{k←⊃{⍺,' ',⍵}/(1+⌈/≢ ̈⍺){⍺↑⍵⍪⍨'│'↑⍨≢⍉⍵} ̈⍺
 ⍵('├'dlk 0)' ─┬┌┐│'(0⌷⊢)dct(⊣⍪1↓⊢)k}

⍝ pp3 :: [Labels] (draw pp3) Parent -> Tree_Diagram
⍝ Pretty print a tree given node labels and a parent vector using draw pp3←{⍺←'○' ⋄ d←(⍳≢p)≠p←⍵ ⋄ _←⍵{z⊣d+←⍵≠z←⍺[⍵]}⍣≡⍵
 lyr←{i←⍸⍺=d ⋄ k v←↓⍉p[i],∘⊂⌸i ⋄ (⍵∘{⍺[⍵]} ̈v)⍺⍺ ̈@k⊢⍵}
 (p=⍳≢p)⌿⊃⍺⍺ lyr⌿(1+⍳⌈/d),⊂⍉∘⍪∘⍕ ̈(≢⍵)⍴⍺}