# I did not write this
# I do not understand this
# https://dev.to/thepracticaldev/daily-challenge-59-snail-sort-1a6n


- ⍬≡,⍵:,⍵⋄ if prod is nil the input as a flat vector is the empty vector, return that
- ,1↑⍵ take the first row, again as a vector
- 1↓⍵ and the rest of the matrix ⍉⌽ rotated 90 degrees
- ∇ gets snalied recursively
- , and appended to aforementioned first row 
thus {⍬≡,⍵:,⍵⋄(,1↑⍵),∇⍉⌽1↓⍵}
also
why are they calling this a "sort"
oh and for the last line - see this is why the grade operator is useful
- take a plain 6 by 6 matrix from 1 to 36
- snail it to get 1 2 3 4 5 6 12 18 etc
- sort that to get a permutation vector
- 6 by 6 it again to draw a snail path, back-deriving the last example input
- (if I snail it again i.e. use it as an input, 1 2 3 ... 36 in fact comes out)


{⍬≡,⍵:,⍵⋄(,1↑⍵),∇⍉⌽1↓⍵}

------


      ⊢w←5
5
      ⊢w←5 5⍴⍳25
 1  2  3  4  5
 6  7  8  9 10
11 12 13 14 15
16 17 18 19 20
21 22 23 24 25

{⍬≡,⍵:,⍵⋄(,1↑⍵),∇⍉⌽1↓⍵}w

1 2 3 4 5 10 15 20 25 24 23 22 21 16 11 6 7 8 9 14 19 18 17 12 13
    

      6 6⍴⍋{⍬≡,⍵:,⍵⋄(,1↑⍵),∇⍉⌽1↓⍵}6 6⍴⍳36
 1  2  3  4  5  6
20 21 22 23 24  7
19 32 33 34 25  8
18 31 36 35 26  9
17 30 29 28 27 10
16 15 14 13 12 11
