⍝ problem: something with minecraft? vectors?

⍝ i defined good ←{((⍵ distance top_ideal)<(bottom_real distance top_ideal))∧((⍵ distance bottom_ideal)>(bottom_real distance bottom_ideal))}
⍝ and found a tuple for which it returned 1

distance←{(+/(⍺-⍵)*2)*0.5}
top_ideal ←280 121 376
bottom_ideal ←312 78 384
bottom_real ← 279 60 347
⍝ find top_new such that:
⍝ (top_new distance top_ideal) < (bottom_real distance top_ideal)
⍝ (top_new distance bottom_ideal) > (bottom_real distance bottom_ideal)


⍝ i need an array of 3-vectors
⍝ i.e. (0 0 0) (0 0 1) (0 0 2) (0 1 0) (0 1 1) (0 1 2) ... (2 2 2)
⎕IO←0 ⋄ ,⍳3 3 3
↓⍉3 3 3⊤⎕IO-⍨⍳27

⍝ sums of each item in the (000) (001)...
{+/⍵}¨,⍳3 3 3
⍝ 3 4 5 4 5 6 5 6 7 4 5 6 5 6 7 6 7 8 5 6 7 6 7 8 7 8 9

⍝ honestly I feel like the way you deal with good is
bot_min top_min ← bot_real top_real  dist¨  bot_ideal top_ideal
tries ← (⊂offset) + ,⍳width height depth
bot_dist top_dist ← ↓ bot_ideal top_ideal ∘.dist tries
tries /¨ ⊃ top_dist bot_min top_min ∧.< bot_dist bot_dist top_dist
⍝ (or well fit the whole thing to be a matrix not list of points, but)

