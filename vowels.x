      (your_function) 'COOLAPL'
3
      (your_function) ''          ⍝ empty argument
0
      (your_function) 'NVWLSHR'   ⍝ no vowels here
0

http://help.dyalog.com/latest/#Language/Primitive%20Functions/Membership.htm

      {+/,⍵∊'AEIOU'}'ACAB'
2
     

      {,⍵∊'AEIOU'}'ACAB'
1 0 1 0

      {,∊'AEIOU'}'ACAB'
AEIOU

      {,⍵'AEIOU'}'ACAB'
┌────┬─────┐
│ACAB│AEIOU│
└────┴─────┘


      {,⍵∊'C'}'ACAB'
0 1 0 0

      +/{,⍵∊'C'}'ACAB'
1
      +/{,⍵∊'C'}'CC'
2

      -/{,⍵∊'C'}'CC'
0
      
      +/{,⍵∊'C'}'ACAB'
1
      +/{,⍵∊'C'}'CC'
2
      -/{,⍵∊'C'}'CC'
0
      {+/{,⍵∊'C'}'CC'} 'CCACC'
2
      {+/{,⍵∊'C'}'CC'} 'CCA'
2
      {+/{,⍵∊'C'}'C'} 'CCA'
1
      {+/{,⍵∊'C'}'C'} 'CCACC'
1


hmm

      {+/,⍵∊'C'}'C'
1
      {+/,⍵∊'C'}'CC'
2
      {+/,⍵∊'CC'}'CC'
2
      {+/,⍵∊'CC'}'C'
1

fair enough, no dupe letter chains handled
