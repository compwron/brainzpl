⍝ https://problems.tryapl.org/psets/2021.html?goto=P2_Index_Of_Modified
⍝ Write a function that behaves like the APL index-of function R←X⍳Y except that it returns 0 instead of 1+≢X for elements of Y not found in X.
⍝ 'DYALOG' (your_function) 'APL'
⍝ 3 0 4      
⍝ (5 5⍴⎕A) (your_function) ↑'UVWXY' 'FGHIJ' 'XYZZY'
⍝ 5 2 0

'DYALOG' ⍳ 'APL'