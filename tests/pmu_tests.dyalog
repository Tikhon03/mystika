:Namespace fof_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

FOF∆01_TEST←{_←X 16 0 0⍪(8⍴16)⊤2 ⋄ (16⍪0⍪0⍪ (8⍴16)⊤4 9 4 2)M.fof 16 0 0⍪(8⍴16)⊤0}
FOF∆02_TEST←{_←X 16 0 0⍪(8⍴16)⊤19 ⋄ (16⍪0⍪0⍪ (8⍴16)⊤4 9 4 2)M.fof 16 0 0⍪(8⍴16)⊤1} 
FOF∆03_TEST←{_←X 16 0 1⍪(8⍴16)⊤¯3 ⋄ (16⍪0⍪0⍪ (8⍴16)⊤4 9 4 2)M.fof 16 0 1⍪(8⍴16)⊤¯1}

:EndNamespace
