:Namespace rdf_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika 

RDF∆01_TEST←{_←X  16 0 0⍪(8⍴16)⊤+/2906258 11575550 222852 246055 ⋄ M.add M.rdf 16⍪0⍪0⍪(8⍴16)⊤2906258 11575550 222852 246055}
RDF∆02_TEST←{_←X  16 0 0⍪(8⍴16)⊤×/188 63 57 ⋄ M.mul M.rdf 16⍪0⍪0⍪(8⍴16)⊤188 63 57}
RDF∆03_TEST←{_←X  16 0 0⍪(8⍴16)⊤135×170 ⋄ M.add M.rdf 16⍪0⍪0⍪(8⍴16)⊤135⍴170}
RDF∆04_TEST←{_←X  16 0 0⍪(8⍴16)⊤11*7 ⋄ M.mul M.rdf 16⍪0⍪0⍪(8⍴16)⊤7⍴11}
RDF∆05_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤246 155 139 ⋄ M.add M.rdf 16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 212 55 94}
RDF∆06_TEST←{_←X  16⍪0⍪0⍪(8⍴16)⊤7208 5500 4230 ⋄ M.mul M.rdf 16⍪0⍪0⍪(8⍴16)⊤2 3⍴34 100 45 212 55 94}
RDF∆07_TEST←{_←X  65552 0 0,32↑16,⍨22⍴15 ⋄ M.add M.rdf 65552⍪0⍪0⍪0,15,⍪¯32↑1}
RDF∆08_TEST←{_←X  65552 0 0,32↑0 ⋄ M.add M.rdf 65552⍪0⍪0 1 0⍪0,15,⍪¯32↑1}
RDF∆09_TEST←{_←X  16 ¯1 0,24↑1 ⋄ M.add M.rdf 16⍪0⍪0⍪0,15,⍪¯24↑1}
RDF∆10_TEST←{_←X  16 0 0,24↑0 ⋄ M.add M.rdf 16⍪0⍪0 1 0⍪0,15,⍪¯24↑1}

:EndNamespace
