﻿# Mystika

The Mystika project seeks to deliver an industrial quality, high-performance cryptographic library with forward-looking features and very high-level code. The idea is to deliver a cryptographic foundation for critical software that consists of a small, efficient, and easy to audit code base built on very high-level coding practices. Here are some key goals:

* Demonstrably Reliable
* Safe and future-worthy cryptography only
* Protocol level compatibility with existing standards when possible
* Easy to use

## Dictionary

Here are the verbs, nouns, adverbs, and conjunctions provided by this project.

### Data Structures

    BA  ⍝ Bignum Array
    PA  ⍝ Bigpoly Array
    bf  ⍝ Bignum Function
    NBA ⍝ Nested Bignum Array
    NCA ⍝ Nested Character Array
    A01 ⍝ Binary Array

A bignum array is an array where the 0th axis is used for the places of a number in a given base, and the first 3 elements of that axis are reserved for metadata.
The metadata has the following format:

* the 0th element specifies the base, which must have the form B for a real bignum or 0JB for a complex bignum where B<2*16
* the 1st element indicates the number of places that the radix point is shifted to the left (a negative number indicates that the radix point is shifted to the right)
* the 2nd element is 1 for a negative real bignum and zero otherwise (even in the complex case).

The remaining elements provide the base B expansion of the abslute value of the number in the real case (i.e. B complement notation is not used), and the base 0JB expans of the number in the complex case.

A bigpoly array is a special type of bignum array in which the 1st axis is reserved for the coefficients of a polynomial in one variable, say x, such that the ith element is the coefficient of the ith power of x.

### APL Primitive Functions

    BA←ima BA           ⍝ 11○ over bignums
    BA←rea BA           ⍝ 9○ over bignums
    BA←cnj BA           ⍝ monadic + over bignums
    BA←BA add BA        ⍝ dyadic + over bignums
    BA←{BA} sub BA      ⍝ - over bignums
    BA←BA mul BA        ⍝ dyadic × over bignums
    BA←{BA} cat BA      ⍝ ⍪ over bignums
    BA←rav BA           ⍝ , over bignums (monadically: , also works).
    BA←{A} trn BA       ⍝ ⍉ over bignums
    BA←{A} rot BA       ⍝ ⌽ over bignums
    BA←{A} rof BA       ⍝ ⊖ over bignums
    BA←{A} pic BA       ⍝ ⊃ over bignums
    BA←{A} sqd BA       ⍝ ⌷ over bignums
    A←BA eql BA         ⍝ = over Bignums
    A←BA neq BA         ⍝ ≠ over Bignums
    A←BA leq BA         ⍝ ≤ over Bignums
    A←BA geq BA         ⍝ ≥ over Bignums
    A←BA gth BA         ⍝ > over Bignums
    A←BA lth BA         ⍝ < over Bignums
    BA←flo BA           ⍝ monadic ⌊ over bignums
    BA←cel BA           ⍝ monadic ⌈ over bignums
    BA←BA min BA        ⍝ dyadic ⌊ over bignums
    BA←BA max BA        ⍝ dyadic ⌈ over bignums
    BA←abs BA           ⍝ monadic | over bignums
    BA←{A} rho BA       ⍝ ⍴ over bignums
    BA←{BA} eps BA      ⍝ ∊ over bignums
    BA←BA ind BA        ⍝ dyadic ⍳ over bignums
    BA←rol BA           ⍝ monadic ? over bignums
    BA←tke BA           ⍝ dyadic ↑ over bignums
    BA←drp BA           ⍝ dyadic ↓ over bignums 
    BA←spl BA           ⍝ monadic ↓ over bignums
    BA←mix NBA          ⍝ monadic ↑ over bignums
    BA←{BA} div BA      ⍝ ÷ over bignums
    BA←BA mod BA        ⍝ | over bignums
    BA←snh BA           ⍝ 5○ over bignums
    BA←cis BA           ⍝ 12○ over bignums
    BA←tan BA           ⍝ 3○ over bignums
    BA←sin BA           ⍝ 1○ over bignums
    NCA←dec BA          ⍝ ⊥ over bignums
    BA←enc NCA          ⍝ ⊤ over bignums
    BA←exp BA           ⍝ monadic * over bignums
    BA←pie BA           ⍝ modadic ○ over bignums
    BA←tal BA           ⍝ modadic , over bignums 

### APL Primitive Operators

    BA←BA bf dot bf BA  ⍝ f.g over bignums
    BA←BA bf out BA     ⍝ ∘.f over bignums
    BA←bf red BA        ⍝ f/ over bignums
    BA←bf scn BA        ⍝ f\ over bignums
    BA←bf rdf BA        ⍝ f⌿ over bignums
    BA←bf scf BA        ⍝ f⍀ over bignums
    BA←BA bf pop bg BA  ⍝ f⍣g over bignums
    BA←{BA}bf rop k BA  ⍝ f⍤k over bignums

### Numerical Algorithms
    
    PA←PA pmul PA       ⍝ × over bigpolys
    BA←mrp BA           ⍝ Miller-Rabin primality test
    BA←sgp BA           ⍝ Sophie-Germain primality test
    BA←{BA}rsg BA       ⍝ Creates random Sophie-Germain prime
    BA←{BA}rpr BA       ⍝ creates random prime
    BA←BA gcd BA        ⍝ extended binary gcd
    BA←BA (BA mex) BA   ⍝ modular exponentiation, exp (mod mex) base
    
### Hashing

    A01←sha A01  ⍝ sha3

### Cyphers

    ⍺ ⍵←key message ⋄ A←A AES.ecr A ⍝AES encrypt
    ⍺ ⍵←key message ⋄ A←A AES.dcr A ⍝AES decrypt

### Protocols

### Application Utilities

    H←{B} hex A
    A or BA←b64 BA or A ⍝ base 64
    BA←A mov BA         ⍝ move the floating point
    BA←n pla BA         ⍝ change number of places

Converts an integer array S into a hexadecimal string representing the data in row major order. Each element is assumed to represent B bits of data. If B is not provided, then the largest value in the array is used to calculate the number of bits to use per element.

## Developer's Guide

Working with the Mystika code base involves writing tests in the `tests/` directory and writing code in the `[a-z].cd` files in the root directory. Code is loaded into the `mystika` workspace using the `LOAD` function. The `UT` and `util` namespaces provide testing harness and utility function support for developers.

### Useful Developer Functions

    util.test <name> ⍝ Run the <name>_tests.dyalog test in tests/
    util.TEST        ⍝ Run all tests in tests/
    util.pp          ⍝ Equivalent to ⊢ but with a display as a side-effect
    LOAD             ⍝ Load the latest mystika source into the workspace
