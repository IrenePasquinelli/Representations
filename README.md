# Representations of Deligne-Mostow lattices into PGL(3,C)
**Authors:** 
* [E. Falbel](https://webusers.imj-prg.fr/~elisha.falbel/), Sorbonne Université, IMJ-PRG, EPI OURAGAN INRIA
* [I. Pasquinelli](https://people.maths.bris.ac.uk/~ip13935/), University of Bristol
* [A. Ucan-Puc](https://www.researchgate.net/profile/Alejandro-Ucan-Puc), CONACYT, Sorbonne Université

## Abstract

In the papers "Representations of Deligne-Mostow lattices into PGL(3,C)", part I and part II which can be found on the arxiv, 
we look at a large class of Deligne-Mostow lattices in PU(2,1), the Deligne-Mostow lattices with 3-fold symmetry (of type one in part I of the paper, of all other types in part II of the paper) and we classify their representations into PGL(3,C).
In particular, we show local rigidity for the representations where the generators we chose are of the same type as the generators of Deligne-Mostow lattices.

Many of the proofs in the paper are computer assisted. 
This repository contains the code for these proofs. 

## Implementation

The code is a Jupyter Notebook in sage. 
To open it, one should first [install sage](https://doc.sagemath.org/html/en/installation/index.html) 
and then [open Jupyter notebook](https://doc.sagemath.org/html/en/installation/launching.html). 
The [sage documentation](https://doc.sagemath.org/html/en/index.html) contains all the instruction to run the code. 
We recommend to use Sage version 9.2.

There is also a Maple file which can be executed.

## Organisation of the files

The Deligne-Mostow lattices are parametrised using 2 parameters (p,k) as explained in Section 4 of the paper. 
Each file contains the calculations for one of the lattices. 
The name of the file for the lattice (p,k) is RepresentationsDM(p,k). 
The file UF contains the main functions used throughout. 

The file named DMregularelliptics2.mw completes the calssification of all representations of Deligne-Mostow lattices of type 1 with 3-fold symmetry.
It describes representations with regular elliptic generators.

## Acknowledgments 

The second author was supported by the Fondation Sciences Mathematiques de Paris and by the EPSRC grant EP/T015926/1.

The third author was supported by CONACYT. 
