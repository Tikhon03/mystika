:Namespace cat_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

CAT∆01_TEST←{_←X 16⍪0⍪(8⍴16)⊤⍪⍳24 ⋄ M.cat 16⍪0⍪(8⍴16)⊤⍳24}
CAT∆02_TEST←{_←X 16⍪0⍪(8⍴16)⊤5 3⍴⍳15 ⋄ M.cat 16⍪0⍪(8⍴16)⊤5 3⍴⍳15}
CAT∆03_TEST←{_←X 16⍪0⍪(8⍴16)⊤¯2⊖(7 3⍴⍳15) ⋄ (16⍪0⍪(8⍴16)⊤2 3⍴⍳15) M.cat 16⍪0⍪(8⍴16)⊤5 3⍴⍳15}
CAT∆04_TEST←{_←X 16⍪0⍪(8⍴16)⊤¯12⌽36⍴(⍳24) ⋄ (16⍪0⍪(8⍴16)⊤⍳12) M.cat 16⍪0⍪(8⍴16)⊤⍳24}

:EndNamespace
