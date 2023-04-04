
Dyalog APL/S-64 Version 18.0.40684
Serial number: UNREGISTERED - not for commercial use
+-----------------------------------------------------------------+
| Dyalog is free for non-commercial use but is not free software. |
| A non-commercial licence can be used for experiments and        |
| proof of concept until the point in time that it is of value.   |
| For further information visit                                   |
| https://www.dyalog.com/prices-and-licences.htm                  |
+-----------------------------------------------------------------+
Mon Apr  3 22:43:17 2023
      'a' 'bc' 'b' 'c' 'c' ''
a bc bcc  
      2 3⍴'a' 'bc' 'b' 'c' 'c' ''
a bc b 
c c    
      ↑('a' 'bc')('b' 'c')('c' '')
a bc 
b c  
c    
      2 3⍴'a' 'bc' 'b' 'c' 'c' ⍬
a bc b 
c c    
      ↑('a' 'bc')('b' 'c')('c' '')
a bc 
b c  
c    
      ]box on
Was OFF
      ↑('a' 'bc')('b' 'c')('c' '')
┌─┬──┐
│a│bc│
├─┼──┤
│b│c │
├─┼──┤
│c│  │
└─┴──┘
      inp←↑('a' 'bc')('b' 'c')('c' '')
      ⊣/inp
abc
      ns←,⊣/inp
      ns
abc
      ns cs←↓⍉↑('a' 'bc')('b' 'c')('c' '')
      ns
abc
      cs
┌──┬─┬┐
│bc│c││
└──┴─┴┘
      'c'⍳ns
RANK ERROR
      'c'⍳ns
         ∧
      'c'⍳⍨ns
3
      ns⍳'c'
3
      ns⍳'ac'
1 3
      ns⍳cs
4 3 4
      ns⍳⍤1 0⊢cs
4 3 4
      ns∘⍳¨'ac'
1 3
      ns∘⍳¨cs
┌───┬─┬┐
│2 3│3││
└───┴─┴┘
      ns,[.5]cs
┌──┬─┬─┐
│a │b│c│
├──┼─┼─┤
│bc│c│ │
└──┴─┴─┘
      ns,⍪cs
┌─┬──┐
│a│bc│
├─┼──┤
│b│c │
├─┼──┤
│c│  │
└─┴──┘
      ns,⍪ns∘⍳¨cs
┌─┬───┐
│a│2 3│
├─┼───┤
│b│3  │
├─┼───┤
│c│   │
└─┴───┘
      ⍳⍴ns
1 2 3
      (ns∘⍳¨cs)∊¨⊂⍳⍴ns
┌───┬─┬┐
│1 1│1││
└───┴─┴┘
      ∊¨⊂⍳⍴ns
┌─────┐
│1 2 3│
└─────┘
      (ns∘⍳¨cs)∊⍨¨⊂⍳⍴ns
┌─────┬─────┬─────┐
│0 1 1│0 0 1│0 0 0│
└─────┴─────┴─────┘
      ns,⍪ns∘⍳¨cs
┌─┬───┐
│a│2 3│
├─┼───┤
│b│3  │
├─┼───┤
│c│   │
└─┴───┘
      (⊂⍳⍴ns)∊¨ns,⍪ns∘⍳¨cs
┌─────┬─────┐
│0 0 0│0 1 1│
├─────┼─────┤
│0 0 0│0 0 1│
├─────┼─────┤
│0 0 0│0 0 0│
└─────┴─────┘
      (⊂⍳⍴ns)∊¨⍪ns∘⍳¨cs
┌─────┐
│0 1 1│
├─────┤
│0 0 1│
├─────┤
│0 0 0│
└─────┘
      ns∘=¨cs
LENGTH ERROR: Mismatched left and right argument shapes
      ns∘=¨cs
         ∧
      ns∘∊¨cs
┌─────┬─────┬─────┐
│0 1 1│0 0 1│0 0 0│
└─────┴─────┴─────┘
      ↓ns∘∊¨cs
┌───────────────────┐
│┌─────┬─────┬─────┐│
││0 1 1│0 0 1│0 0 0││
│└─────┴─────┴─────┘│
└───────────────────┘
      ↑ns∘∊¨cs
0 1 1
0 0 1
0 0 0
      ns,↑ns∘∊¨cs
a 0 1 1
b 0 0 1
c 0 0 0
      ↑('a' 'bc')('b' 'c')('c' '')
┌─┬──┐
│a│bc│
├─┼──┤
│b│c │
├─┼──┤
│c│  │
└─┴──┘
      ⊃cs
bc
      ns
abc
      ns∊⊃cs
0 1 1
      ns∊2⊃cs
0 0 1
      2⊃cs
c
      ns∊3⊃cs
0 0 0
      3⊃cs

      ⊂3⊃cs
┌┐
││
└┘
      ns∘∊⊃cs
0 1 1
      ns∊⊃cs
0 1 1
      (ns∘∊)¨cs
┌─────┬─────┬─────┐
│0 1 1│0 0 1│0 0 0│
└─────┴─────┴─────┘
      ↑(ns∘∊)¨cs
0 1 1
0 0 1
0 0 0
      ↑ns∘∊¨cs
0 1 1
0 0 1
0 0 0
      ↓⍉↑('a' 'bc')('b' 'c')('c' '')
┌───┬───────┐
│abc│┌──┬─┬┐│
│   ││bc│c│││
│   │└──┴─┴┘│
└───┴───────┘
      {↑⍺∘∊¨⍵}/↓⍉↑('a' 'bc')('b' 'c')('c' '')
┌─────┐
│0 1 1│
│0 0 1│
│0 0 0│
└─────┘
      ⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'bc')('b' 'c')('c' '')
0 1 1
0 0 1
0 0 0
      ⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' '')
0 1 0
0 0 1
0 0 0
      ⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'bd')('b' 'c')('c' 'c')('d' '')
0 1 0 1
0 0 1 0
0 0 1 0
0 0 0 0
      ∨.∧⍨⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'bd')('b' 'c')('c' 'c')('d' '')
0 0 1 0
0 0 1 0
0 0 1 0
0 0 0 0
      ∨.∧⍨⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'bd')('b' 'c')('c' '')('d' '')
0 0 1 0
0 0 0 0
0 0 0 0
0 0 0 0
      (⊢∨∨.∧⍨)⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'bd')('b' 'c')('c' '')('d' '')
0 1 1 1
0 0 1 0
0 0 0 0
0 0 0 0
      ⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'd')('d' '')
0 1 0 0
0 0 1 0
0 0 0 1
0 0 0 0
      (⊢∨∨.∧⍨)⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'd')('d' '')
0 1 1 0
0 0 1 1
0 0 0 1
0 0 0 0
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'd')('d' '')
0 1 1 1
0 0 1 1
0 0 0 1
0 0 0 0
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'd')('d' 'a')
1 1 1 1
1 1 1 1
1 1 1 1
1 1 1 1
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'd')('d' 'a')('e' '')
1 1 1 1 0
1 1 1 1 0
1 1 1 1 0
1 1 1 1 0
0 0 0 0 0
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1 1 1 0 1
1 1 1 0 1
1 1 1 0 1
0 0 0 0 0
1 1 1 0 1
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' '')
0 1 1 0 1
0 0 1 0 1
0 0 0 0 1
0 0 0 0 0
0 0 0 0 0
      (⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' '')
0 1 1 0 1
0 0 1 0 1
0 0 0 0 1
0 0 0 0 0
0 0 0 0 0
      1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' '')
0 0 0 0 0
      1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1 1 1 0 1
      1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'ea')('d' '')('e' '')
1 1 1 0 0
      ∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' '')
0
      ∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1
      {∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
LENGTH ERROR
      {∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a'
      )
            ∧
      ⊃{∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a'
SYNTAX ERROR
      ⊃{∨/1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a'
                                                                            ∧
      ⊃{1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1 1 1 0 1
      ⊃{⍺/⍨1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
abce
      ⊃{⍺/⍨1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'a')('d' '')('e' '')
abc
      ⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
#.[JSON object]
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
      a.qu
VALUE ERROR: Undefined name: qu
      a.qu
        ∧
      a.qualification_survey_start
foo
      ⎕json⍠'Format''M'⊢'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
DOMAIN ERROR: Invalid use of variant
      ⎕JSON⍠'Format''M'⊢'{"qualification_survey_start":"foo","foo":{"branches":
      [{"next":"foo"}]}}'
      ∧
      (⎕json⍠'Format' 'M')⊢'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
┌─┬──────────────────────────┬───┬─┐
│0│                          │   │1│
├─┼──────────────────────────┼───┼─┤
│1│qualification_survey_start│foo│4│
├─┼──────────────────────────┼───┼─┤
│1│foo                       │   │1│
├─┼──────────────────────────┼───┼─┤
│2│branches                  │   │2│
├─┼──────────────────────────┼───┼─┤
│3│                          │   │1│
├─┼──────────────────────────┼───┼─┤
│4│next                      │foo│4│
└─┴──────────────────────────┴───┴─┘
      a.⎕nl 2
qualification_survey_start
      a.foo
#.[JSON object].[JSON object]
      a.foo.branches
 #.[JSON object].[JSON object].[JSON object] 
      a.⎕nl 9
foo
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]},"bar":{"branches":[]}}'
      a.qualification_survey_start
foo
      a.⎕nl 9
bar
foo
      ⊃a.⎕nl 9
b
      ↓a.⎕nl 9
┌───┬───┐
│bar│foo│
└───┴───┘

      a.(⍎¨⎕NL 9)
⍎VALUE ERROR: Undefined name: b
      b
      ∧
      a.(⍎¨⎕NL ¯9)
 #.[JSON object].[JSON object]  #.[JSON object].[JSON object] 
      a.bar.branches

      a.foo.branches
 #.[JSON object].[JSON object].[JSON object] 
      a.foo.branches.next
┌───┐
│foo│
└───┘
      a.(⍎¨⎕NL ¯9).branches.next
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.next
      ∧
      a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────┐
││ #.[JSON object].[JSON object].[JSON object] │
└┴─────────────────────────────────────────────┘
      a.(⍎¨⎕NL ¯9).branches.('next')
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.('next')
      ∧
      a.(⍎¨⎕NL ¯9).branches⍎¨'next'
LENGTH ERROR
      a.(⍎¨⎕NL ¯9).branches⍎¨'next'
      ∧
      a.(⍎¨⎕NL ¯9).branches⍎¨⊂'next'
DOMAIN ERROR
      a.(⍎¨⎕NL ¯9).branches⍎¨⊂'next'
      ∧
      a.(⍎¨⎕NL ¯9).branches.(next)
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.(next)
      ∧
      bs←a.(⍎¨⎕NL ¯9).branches
      bs
┌┬─────────────────────────────────────────────┐
││ #.[JSON object].[JSON object].[JSON object] │
└┴─────────────────────────────────────────────┘
      bs[0].next
INDEX ERROR
      bs[0].next
        ∧
      bs[2].next
┌─────┐
│┌───┐│
││foo││
│└───┘│
└─────┘
      bs[1].next
SYNTAX ERROR
      bs[1].next
      ∧
      bs[2\].next
SYNTAX ERROR
      bs[2\].next
          ∧
      {⍵.next}¨bs
SYNTAX ERROR
      {⍵.next}¨bs
       ∧
      {⍵⍎'next'}¨bs
DOMAIN ERROR
      {⍵⍎'next'}¨bs
        ∧
      {⍵⍎'next'}¨¨bs
DOMAIN ERROR
      {⍵⍎'next'}¨¨bs
        ∧
      {⍵}¨¨bs
┌┬─────────────────────────────────────────────┐
││ #.[JSON object].[JSON object].[JSON object] │
└┴─────────────────────────────────────────────┘
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
      a.(⍎¨⎕NL ¯9).branches.next
┌─────┐
│┌───┐│
││foo││
│└───┘│
└─────┘
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"},{"next":"bar"}]}}'
      a.(⍎¨⎕NL ¯9).branches.next
┌─────────┐
│┌───┬───┐│
││foo│bar││
│└───┴───┘│
└─────────┘
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]},"bar":{"branches":[{"next":"bar"}]}}'
      a.(⍎¨⎕NL ¯9).branches.next
┌─────┬─────┐
│┌───┐│┌───┐│
││bar│││foo││
│└───┘│└───┘│
└─────┴─────┘
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"}]}}'
      a.(⍎¨⎕NL ¯9).branches.next
┌─────┐
│┌───┐│
││foo││
│└───┘│
└─────┘
      ↑a.(⍎¨⎕NL ¯9).branches.next
┌───┐
│foo│
└───┘
      ⊃{1 1⍉(⊢∨∨.∧⍨)⍣≡⊢↑⍺∘∊¨⍵}/↓⍉↑('ag' 'b')('b' 'c')('c' 'e')('d' '')('e' (⊂'ag'))
1 1 1 0 1
      ⍴↑a.(⍎¨⎕NL ¯9).branches.next
1 1
      a.(⎕NL ¯9)
┌───┐
│foo│
└───┘
      ks←a.(⎕NL ¯9)
      a⍎¨ks
 #.[JSON object].[JSON object] 
      ↑(a⍎¨ks).branches.next
┌───┐
│foo│
└───┘
      ks
┌───┐
│foo│
└───┘
      ⊢ks←a.(⎕NL ¯9)
┌───┐
│foo│
└───┘
      ⊢vs←↑(a⍎¨ks).branches.next
┌───┐
│foo│
└───┘
      ks∘∊¨vs
┌─┐
│0│
└─┘
      vs
┌───┐
│foo│
└───┘
      ⍴vs
1 1
      ks∘∊¨↓vs
┌─┐
│1│
└─┘
      ⍴ks∘∊¨↓vs
1
      ⊢vs←(a⍎¨ks).branches.next
┌─────┐
│┌───┐│
││foo││
│└───┘│
└─────┘
      ks∘∊¨vs
┌─┐
│1│
└─┘
      a←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"foo"},{"next":"bar"}]},"bar":{"branches":[]}}'
      a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────────────────────────────────────
││ #.[JSON object].[JSON object].[JSON object]  #.[JSON object].[JSON object].[
└┴─────────────────────────────────────────────────────────────────────────────

      ─────────────┐
      JSON object] │
      ─────────────┘
      ⎕nc a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      ⎕NC a.(⍎¨⎕NL ¯9).branches
      ∧
      ⎕nc¨ a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      ⎕NC¨a.(⍎¨⎕NL ¯9).branches
      ∧
      ⎕nc⊃ a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      ⎕NC⊃a.(⍎¨⎕NL ¯9).branches
      ∧
      ⊃ a.(⍎¨⎕NL ¯9).branches

      ⍴⊃a.(⍎¨⎕NL ¯9).branches
0
      {⎕nc⍵}¨ a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {⎕NC ⍵}¨a.(⍎¨⎕NL ¯9).branches
       ∧
      {⎕dr⍵}¨ a.(⍎¨⎕NL ¯9).branches
83 326
      a.(⍎¨⎕NL ¯9).branches.(⎕Nl)
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.(⎕NL)
      ∧
      (a.(⍎¨⎕NL ¯9).branches).(⎕NC)
SYNTAX ERROR
      (a.(⍎¨⎕NL ¯9).branches).(⎕NC)
      ∧
      (a.(⍎¨⎕NL ¯9).branches).(⎕NL ¯9)
SYNTAX ERROR
      (a.(⍎¨⎕NL ¯9).branches).(⎕NL ¯9)
      ∧
      a.(⍎¨⎕NL ¯9).branches.(⎕NL ¯9)
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.(⎕NL ¯9)
      ∧
      a.(⍎¨⎕NL ¯9).branches.⎕NL ¯9
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.⎕NL ¯9
      ∧
      {⍴ ⍵}¨ a.(⍎¨⎕NL ¯9).branches
┌─┬─┐
│0│2│
└─┴─┘
      {⍴ ⍵}¨¨ a.(⍎¨⎕NL ¯9).branches
┌┬───┐
││┌┬┐│
││││││
││└┴┘│
└┴───┘
      {⍵⍎'next'}¨¨ a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {⍵⍎'next'}¨¨a.(⍎¨⎕NL ¯9).branches
        ∧
      {'next'}¨¨ a.(⍎¨⎕NL ¯9).branches
┌┬───────────┐
││┌────┬────┐│
│││next│next││
││└────┴────┘│
└┴───────────┘
      {⍵}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────────────────────────────────────
││ #.[JSON object].[JSON object].[JSON object]  #.[JSON object].[JSON object].[
└┴─────────────────────────────────────────────────────────────────────────────

      ─────────────┐
      JSON object] │
      ─────────────┘
      {⊃⍵}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────────────────────────────────────
││ #.[JSON object].[JSON object].[JSON object]  #.[JSON object].[JSON object].[
└┴─────────────────────────────────────────────────────────────────────────────

      ─────────────┐
      JSON object] │
      ─────────────┘
      {⎕dr ⍵}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬───────┐
││326 326│
└┴───────┘
      {⍵.next}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {⍵.next}¨¨a.(⍎¨⎕NL ¯9).branches
       ∧
      {w←⍵⋄w.next}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.next}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄w.(⎕nl¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.(⎕NL ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
VALUE ERROR: Undefined name: w
      {w.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
       ∧
      {w←⍵⋄w.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄w}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────────────────────────────────────
││ #.[JSON object].[JSON object].[JSON object]  #.[JSON object].[JSON object].[
└┴─────────────────────────────────────────────────────────────────────────────

      ─────────────┐
      JSON object] │
      ─────────────┘
      {w←⍵⋄⍵.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ ⍵.(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄(¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────┐
││¯9 ¯9│
└┴─────┘
      (1 2).a
SYNTAX ERROR
      (1 2).a
      ∧
      w←(1 2)⋄w.a
SYNTAX ERROR
      w←(1 2) ⋄ w.a
                ∧
      {w←⍵⋄⎕nc 'w'}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────┐
││┌─┬─┐│
│││9│9││
││└─┴─┘│
└┴─────┘
      {w←⍵⋄⎕nc '⍵'}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────┐
││┌─┬─┐│
│││9│9││
││└─┴─┘│
└┴─────┘
      {w←⍵⋄w.⎕nc ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.⎕NC ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄a.⎕nc ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {w←⍵ ⋄ a.⎕NC ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄a.(⎕nc ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {w←⍵ ⋄ a.(⎕NC ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
                ∧
      {w←⍵⋄w.⎕nl ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.⎕NL ¯9}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄w.(⎕nl ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⍵ ⋄ w.(⎕NL ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      {w←⍵⋄a.(⎕nl ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────┐
││┌─────────┬─────────┐│
│││┌───┬───┐│┌───┬───┐││
││││bar│foo│││bar│foo│││
│││└───┴───┘│└───┴───┘││
││└─────────┴─────────┘│
└┴─────────────────────┘
      {w←⍵⋄w⍎'⎕nl ¯9')}¨¨a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {w←⍵ ⋄ w⍎'⎕nl ¯9')}¨¨a.(⍎¨⎕NL ¯9).branches
              ∧
      {w←⍵⋄⎕ns w)}¨¨a.(⍎¨⎕NL ¯9).branches
DOMAIN ERROR
      {w←⍵ ⋄ ⎕NS w)}¨¨a.(⍎¨⎕NL ¯9).branches
             ∧
      0⍴⎕ns⍬

      ⊃0⍴⎕ns⍬
NONCE ERROR
      ⊃0⍴⎕NS ⍬
      ∧
      1⍴0⍴⎕ns⍬
NONCE ERROR
      1⍴0⍴⎕NS ⍬
       ∧
      {w←⊃⍵⋄w.(⎕nl ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {w←⊃⍵ ⋄ w.(⎕NL ¯9)}¨¨a.(⍎¨⎕NL ¯9).branches
              ∧
      ⊃¨a.(⍎¨⎕NL ¯9).branches
0  #.[JSON object].[JSON object].[JSON object] 
      ⊃¨¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────────────────────────────────────────────────────────────────────────
││ #.[JSON object].[JSON object].[JSON object]  #.[JSON object].[JSON object].[
└┴─────────────────────────────────────────────────────────────────────────────

      ─────────────┐
      JSON object] │
      ─────────────┘
      {{⎕nc'⍵'}⍣(×⍴⍵)⍵}¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {{⎕NC'⍵'}⍣(×⍴⍵)⍵}¨a.(⍎¨⎕NL ¯9).branches
              ∧
      {{⍵}⍣(×⍴⍵)⍵}¨a.(⍎¨⎕NL ¯9).branches
SYNTAX ERROR
      {{⍵}⍣(×⍴⍵)⍵}¨a.(⍎¨⎕NL ¯9).branches
          ∧
      {{⎕nc'⍵'}⍣(×⍴⍵)⊢⍵}¨a.(⍎¨⎕NL ¯9).branches
RANK ERROR
      {{⎕NC'⍵'}⍣(×⍴⍵)⊢⍵}¨a.(⍎¨⎕NL ¯9).branches
              ∧
      {{⎕nc'⍵'}⍣(×≢⍵)⊢⍵}¨a.(⍎¨⎕NL ¯9).branches
┌┬─┐
││2│
└┴─┘
      {{⍵.next}⍣(×≢⍵)⊢⍵}¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      {~×≢⍵:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      a.(⎕NL ¯9)
┌───┬───┐
│bar│foo│
└───┴───┘
      (a.(⎕NL ¯9)),⍪{~×≢⍵:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
┌───┬─────────┐
│bar│         │
├───┼─────────┤
│foo│┌───┬───┐│
│   ││foo│bar││
│   │└───┴───┘│
└───┴─────────┘
      1 1⍉(⊢∨∨.∧⍨)⍣≡⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1 1 1 0 1
      (a.(⎕NL ¯9)),⍪{⍬≡⍵:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
┌───┬─────────┐
│bar│         │
├───┼─────────┤
│foo│┌───┬───┐│
│   ││foo│bar││
│   │└───┴───┘│
└───┴─────────┘
      (a.(⎕NL ¯9)),⍪{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
┌───┬─────────┐
│bar│         │
├───┼─────────┤
│foo│┌───┬───┐│
│   ││foo│bar││
│   │└───┴───┘│
└───┴─────────┘
      (a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
0 0
1 1
      1 1⍉(a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
0 1
      a.qualification_survey_start⍳⍨a.(⎕NL ¯9)
3 3 3
      a.qualification_survey_start⍳a.(⎕NL ¯9)
4 4
      a.qualification_survey_start
foo
      a.(⎕NL ¯9)⍳⊂a.qualification_survey_start
2
      qs←a.(⎕NL ¯9)⍳⊂a.qualification_survey_start
      qs qs⊃(a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
RANK ERROR
      qs qs⊃(a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬ ⋄ ⍵.next}¨a.(⍎¨⎕NL ¯9).branches
           ∧
      qs qs⌷(a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
1
      b←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"bar"}]},"bar":{"branches":[]}}'
      qs qs⌷(b.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨b.(⍎¨⎕NL ¯9).branches
0
      (b.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨b.(⍎¨⎕NL ¯9).branches
0 0
1 0
      qs qs⌷(⊢∨∨.∧⍨)⍣≡(b.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨b.(⍎¨⎕NL ¯9).branches
0
      qs qs⌷(⊢∨∨.∧⍨)⍣≡(a.(⎕NL ¯9)){↑⍺∘∊¨⍵}{⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
1
      {⍵≡⍬:⍬⋄⍵.next}¨a.(⍎¨⎕NL ¯9).branches
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵⋄⎕ns⍬}branches)
┌─────────────────────────────────────────┬────────────────────────────────────
│#.[JSON object].[JSON object].[Namespace]│ #.[JSON object].[JSON object].[JSON
└─────────────────────────────────────────┴────────────────────────────────────

      ──────────────────────────────────────────────────────┐
       object]  #.[JSON object].[JSON object].[JSON object] │
      ──────────────────────────────────────────────────────┘
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵⋄⎕ns⍬}branches).next
VALUE ERROR: Undefined name: next
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵ ⋄ ⎕NS ⍬}branches).next
                                             ∧
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵⋄(next:⍬)}branches).next
VALUE ERROR: Undefined name: next
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵ ⋄ (next:⍬)}branches).next
                              ∧
      ⎕se
⎕SE
      aa←⎕se
      ⎕se.Link.Array
 ⎕SE.Link .  ∇Array  
      '(a:1)'⎕se.Link.Array
┌─────┬────────────────────────────────────────────────────────────────────────
│(a:1)│{                                                                       
│     │     aa←⍺⍺                                                              
│     │     (1≡⊃⍵,1)Deserialise 1↓∊(⎕UCS 13),¨'^( *[\w∆⍙]+ *← *)?{( |\R)*|( |\R
│     │ }                                                                      
└─────┴────────────────────────────────────────────────────────────────────────

      ──────────────────────────────┐
                                    │
                                    │
      )*}\R*$'⎕R''⍠'Mode' 'D'⎕NR'aa'│
                                    │
      ──────────────────────────────┘
      ⎕SE.Dyalog.Utils.repObj ⎕ns⍬
DOMAIN ERROR: Cannot represent refs
      ⎕SE.Dyalog.Utils.repObj ⎕NS ⍬
      ∧
      ⎕SE.Link.Serialize ⎕ns⍬
VALUE ERROR: Undefined name: Serialize
      ⎕SE.Link.Serialize ⎕NS ⍬
               ∧
      aa.Link.Serialise ⎕ns⍬
(
)
      aa.Link.Deserialise '(⋄)'
⎕SE.Link.[Namespace]
      aa.Link.Deserialise '(a:1⋄)'
⎕SE.Link.[Namespace]
      ⎕json aa.Link.Deserialise '(a:1⋄)'
{"a":1}
      ⎕json aa.Link.Deserialise '(a:⍬⋄)'
{"a":[]}
      '(a:1)'⎕se.Link.Array⍬
      '{a:1}'⎕se.Link.Array⍬
      {a:1}⎕se.Link.Array⍬
1
      '^( *[\w∆⍙]+ *← *)?{( |\R)*|( |\R)*}\R*$'⎕R''⍠'Mode' 'D'⊢'{a:1}'
a:1
      '^( *[\w∆⍙]+ *← *)?{( |\R)*|( |\R)*}\R*$'⎕R''⍠'Mode' 'D'⊢'{(a:1)}'
(a:1)
      {(a:1)}⎕se.Link.Array⍬
⎕SE.Link.[Namespace]
      {(1 2⋄3 4)}⎕se.Link.Array⍬
┌───┬───┐
│1 2│3 4│
└───┴───┘
      {((1 2⋄3 4))}⎕se.Link.Array⍬
┌───┬───┐
│1 2│3 4│
└───┴───┘
      {(1 2⋄3 4⋄)}⎕se.Link.Array⍬
┌───┬───┐
│1 2│3 4│
└───┴───┘
      empty←{(next:⍬)}⎕se.Link.Array⍬
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵ ⋄ empty}branches).next
VALUE ERROR: Undefined name: empty
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵ ⋄ empty}branches).next
                             ∧
      a.(⍎¨⎕NL ¯9).({⍵≢⍬:⍵ ⋄ #.empty}branches).next
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      add_next←{{⍵≢⍬:⍵ ⋄{(next:⍬)}⎕se.Link.Array⍬}
SYNTAX ERROR
      add_next←{{⍵≢⍬:⍵ ⋄ {(next:⍬)}⎕SE.Link.Array ⍬}
      ∧
      fix_next←{⍵≢⍬:⍵ ⋄{(next:⍬)}⎕se.Link.Array⍬}
      a.(⍎¨⎕NL ¯9).(#fix_next branches).next
VALUE ERROR: Undefined name: fix_next
      a.(⍎¨⎕NL ¯9).(# fix_next branches).next
                      ∧
      a.(⍎¨⎕NL ¯9).(#.fix_next branches).next
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      ⎕jsona
SYNTAX ERROR: Invalid token
      ⎕jsona
      ∧
      ⎕json a
DOMAIN ERROR: JSON export: the right argument cannot be converte
d (⎕IO=1)
      ⎕JSON a
      ∧
      ⎕json b
DOMAIN ERROR: JSON export: the right argument cannot be converte
d (⎕IO=1)
      ⎕JSON b
      ∧
      ⎕json⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"bar"}]},"bar":{"branches":[]}}'
{"bar":{"branches":[]},"foo":{"branches":[{"next":"bar"}]},"qual

      ification_survey_start":"foo"}
      ⎕json⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"bar"}]},"bar":{"branches":[]}}'
{"bar":{"branches":[]},"foo":{"branches":[{"next":"bar"}]},"qualification_survey_start":"foo"}
      ⎕json b
DOMAIN ERROR: JSON export: the right argument cannot be converted (⎕IO=1)
      ⎕JSON b
      ∧
      b←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"bar"}]},"bar":{"branches":[]}}'
      ⎕json b
{"bar":{"branches":[]},"foo":{"branches":[{"next":"bar"}]},"qualification_survey_start":"foo"}
      b.foo
#.[JSON object].[JSON object]
      b.(foo)
#.[JSON object].[JSON object]
      b.(⊂foo)
#.[JSON object].[JSON object]
      a.(⍎¨⎕NL ¯9).branches.(#.fix_next).next
SYNTAX ERROR
      a.(⍎¨⎕NL ¯9).branches.(#.fix_next).next
      ∧
      a.(⍎¨⎕NL ¯9).(#.fix_next branches).next
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      fix_next←{⍵≢⍬:⍵ ⋄{(next:⍬)}⎕se.Link.Array⍬}
      a.(⍎¨⎕NL ¯9).(#.fix_next branches).next
┌┬─────────┐
││┌───┬───┐│
│││foo│bar││
││└───┴───┘│
└┴─────────┘
      a.((⍎¨⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─────────────────────────────┬─────────┐
│#.[JSON object].[JSON object]│         │
├─────────────────────────────┼─────────┤
│#.[JSON object].[JSON object]│┌───┬───┐│
│                             ││foo│bar││
│                             │└───┴───┘│
└─────────────────────────────┴─────────┘
      a.((⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌───┬─────────┐
│bar│         │
├───┼─────────┤
│foo│┌───┬───┐│
│   ││foo│bar││
│   │└───┴───┘│
└───┴─────────┘
      b.((⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌───┬─────┐
│bar│     │
├───┼─────┤
│foo│┌───┐│
│   ││bar││
│   │└───┘│
└───┴─────┘
      b.qualification_survey_start
foo
      b.((qualification_survey_start⍳(⎕NL ¯9)),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─┬─────┐
│4│     │
├─┼─────┤
│4│┌───┐│
│ ││bar││
│ │└───┘│
└─┴─────┘
      b.(((⊂qualification_survey_start)=(⎕NL ¯9)),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─────┬─────┐
│0 0 0│     │
├─────┼─────┤
│1 1 1│┌───┐│
│     ││bar││
│     │└───┘│
└─────┴─────┘
      b.(((⊂qualification_survey_start)=(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─────┬───┬─────┐
│0 0 0│bar│     │
├─────┼───┼─────┤
│1 1 1│foo│┌───┐│
│     │   ││bar││
│     │   │└───┘│
└─────┴───┴─────┘
      b.(((⊂qualification_survey_start)≡(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│0│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.((qualification_survey_start≡(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│0│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.(((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│1│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      a.(((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────────┐
│0│bar│         │
├─┼───┼─────────┤
│1│foo│┌───┬───┐│
│ │   ││foo│bar││
│ │   │└───┴───┘│
└─┴───┴─────────┘
      a.(((⊂qualification_survey_start)≡¨ns),ns,⍪(⍎¨ns←⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────────┐
│0│bar│         │
├─┼───┼─────────┤
│1│foo│┌───┬───┐│
│ │   ││foo│bar││
│ │   │└───┴───┘│
└─┴───┴─────────┘
      a.(((⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────────┐
│0│bar│         │
├─┼───┼─────────┤
│1│foo│┌───┬───┐│
│ │   ││foo│bar││
│ │   │└───┴───┘│
└─┴───┴─────────┘
      a.⎕nc
┌───┐
│⎕NC│
└───┘
      a.⎕nc ¯9
DOMAIN ERROR
      a.⎕NC ¯9
      ∧
      (a.⎕nc) ¯9
DOMAIN ERROR
      (a.⎕NC)¯9
      ∧
      a.(⎕NC ¯9)
DOMAIN ERROR
      a.(⎕NC ¯9)
         ∧
      a.⎕nl ¯9
┌───┬───┐
│bar│foo│
└───┴───┘
      a.⎕nl 9
bar
foo
      ⍴a.⎕nl 9
2 3
      ⍴a.⎕nl ¯9
2
      a.⎕nl ¯9
┌───┬───┐
│bar│foo│
└───┴───┘
      ,a.⎕nl 9
barfoo
      a.⎕nc 'foo''
SYNTAX ERROR: Invalid token
      a.⎕NC 'foo''
            ∧
      a.⎕nc 'foo'
9
      a.⎕nc 'foo' 'bar' 'qualification_survey_start'
9.1 9.1 2.1
      a.⎕nl -⍳9
┌───┬───┬─────┬──┬──────────────────────────┐
│bar│foo│nodes│ns│qualification_survey_start│
└───┴───┴─────┴──┴──────────────────────────┘
      a.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬─────┬───┬──────────────────────────┐
│9.1│9.1│2.1  │2.1│2.1                       │
├───┼───┼─────┼───┼──────────────────────────┤
│bar│foo│nodes│ns │qualification_survey_start│
└───┴───┴─────┴───┴──────────────────────────┘
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬──────────────────────────┐
│9.1│9.1│2.1                       │
├───┼───┼──────────────────────────┤
│bar│foo│qualification_survey_start│
└───┴───┴──────────────────────────┘
      b.({(⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)}⍬).(#.fix_next branches).next
VALUE ERROR: Undefined name: nodes
      b.({(⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)}⍬).(#.fix_next branches).next
                                         ∧
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬──────────────────────────┐
│9.1│9.1│2.1                       │
├───┼───┼──────────────────────────┤
│bar│foo│qualification_survey_start│
└───┴───┴──────────────────────────┘
      b.({(⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
VALUE ERROR: Undefined name: nodes
      b.({(⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
                                         ∧
      b.({(⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
SYNTAX ERROR
      b.({(⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
                                       ∧
      b.({((⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
SYNTAX ERROR
      b.({((⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
      ∧
      b.({((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
SYNTAX ERROR
      b.({((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
      ∧
      b.({(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
SYNTAX ERROR
      b.({(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬).(#.fix_next branches).next
      ∧
      b.(⍬).(#.fix_next branches).next
SYNTAX ERROR
      b.(⍬).(#.fix_next branches).next
      ∧
      b.(1).(#.fix_next branches).next
SYNTAX ERROR
      b.(1).(#.fix_next branches).next
      ∧
      b.({(⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬)
SYNTAX ERROR
      b.({(⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬)
                                       ∧
      b.({((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9)⊣⍵}⍬)
┌─┬───┬─────────────────────────────┐
│0│bar│#.[JSON object].[JSON object]│
├─┼───┼─────────────────────────────┤
│1│foo│#.[JSON object].[JSON object]│
└─┴───┴─────────────────────────────┘
      b.({((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9).(#.fix_next branches).next}⍬)
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│1│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬──────────────────────────┐
│9.1│9.1│2.1                       │
├───┼───┼──────────────────────────┤
│bar│foo│qualification_survey_start│
└───┴───┴──────────────────────────┘
      b.{((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9).(#.fix_next branches).next}⍬
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│1│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬──────────────────────────┐
│9.1│9.1│2.1                       │
├───┼───┼──────────────────────────┤
│bar│foo│qualification_survey_start│
└───┴───┴──────────────────────────┘
      b.(((⊂qualification_survey_start)≡¨(⎕NL ¯9)),(⎕NL ¯9),⍪(⍎¨nodes←⎕NL ¯9).(#.fix_next branches).next)
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│1│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬─────┬──────────────────────────┐
│9.1│9.1│2.1  │2.1                       │
├───┼───┼─────┼──────────────────────────┤
│bar│foo│nodes│qualification_survey_start│
└───┴───┴─────┴──────────────────────────┘
      b←⎕json'{"qualification_survey_start":"foo","foo":{"branches":[{"next":"bar"}]},"bar":{"branches":[]}}'
      b.{((⊂qualification_survey_start)≡¨nodes),nodes,⍪(⍎¨nodes←⎕NL ¯9).(#.fix_next branches).next}⍬
┌─┬───┬─────┐
│0│bar│     │
├─┼───┼─────┤
│1│foo│┌───┐│
│ │   ││bar││
│ │   │└───┘│
└─┴───┴─────┘
      b.((⎕nc,[.5]⊢) ⎕nl -⍳9)
┌───┬───┬──────────────────────────┐
│9.1│9.1│2.1                       │
├───┼───┼──────────────────────────┤
│bar│foo│qualification_survey_start│
└───┴───┴──────────────────────────┘
      (⊢∨∨.∧⍨)⍣2⊢⊃{↑⍺∘∊¨⍵}/↓⍉↑('a' 'b')('b' 'c')('c' 'e')('d' '')('e' 'a')
1 1 1 0 1
1 1 1 0 1
1 1 1 0 1
0 0 0 0 0
1 1 1 0 1
      