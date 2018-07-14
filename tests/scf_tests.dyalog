:Namespace scf_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

SCF∆01_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤+⍀2906258 11575550 222852 246055 ⋄ M.add M.scf 16⍪0⍪0⍪(8⍴16)⊤2906258 11575550 222852 246055}
SCF∆02_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤×⍀188 63 57 ⋄ M.mul M.scf 16⍪0⍪0⍪(8⍴16)⊤188 63 57}
SCF∆03_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤170×1+⍳135 ⋄ M.add M.scf 16⍪0⍪0⍪(8⍴16)⊤135⍴170}
SCF∆04_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤11*1+⍳7 ⋄ M.mul M.scf 16⍪0⍪0⍪(8⍴16)⊤7⍴11}
SCF∆05_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 246 155 139 ⋄ M.add M.scf 16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 212 55 94}
SCF∆06_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 7208 5500 4230 1096040 ⋄ M.mul M.scf 16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 212 55 94}
SCF∆07_TEST←{_←X  65552⍪0⍪0⍪0,15,⍪32↑16,⍨22⍴15 ⋄ M.add M.scf 65552⍪0⍪0⍪0,15,⍪¯32↑1}
SCF∆08_TEST←{_←X  65552⍪0⍪0 1 0⍪0,15,⍪32↑0 ⋄ M.add M.scf 65552⍪0⍪0 1 0⍪0,15,⍪¯32↑1}
SCF∆09_TEST←{_←X  16⍪0 0 ¯1⍪0⍪0,15,⍪24↑1 ⋄ M.add M.scf 16⍪0⍪0⍪0,15,⍪¯24↑1}
SCF∆10_TEST←{_←X  16⍪0⍪0 1 0⍪24 3⍴0 15 0 ⋄ M.add M.scf 16⍪0⍪0 1 0⍪0,15,⍪¯24↑1}

:EndNamespace
