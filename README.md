# Representations of Deligne-Mostow lattices into PGL(3,C)
**Authors:** 
* [E. Falbel](https://webusers.imj-prg.fr/~elisha.falbel/), Sorbonne Université, IMJ-PRG, EPI OURAGAN INRIA
* [I. Pasquinelli](https://people.maths.bris.ac.uk/~ip13935/), University of Bristol
* [A. Ucan-Puc](https://www.researchgate.net/profile/Alejandro-Ucan-Puc), CONACYT, Sorbonne Université

## Abstract

We classify representations of a class of Deligne-Mostow lattices into $\pgl(3,\C)$.  In particular, we show local rigidity for a large class of representations (of 3-fold symmetric Deligne-Mostow lattices of type 1) including ones with generators in the same conjugacy class as the ones of Deligne-Mostow lattices.

In the paper "Representations of Deligne-Mostow lattices into PGL(3,C)", which can be found on the arxiv, 
we look at a large class of Deligne-Mostow lattices in PU(2,1), the Deligne-Mostow lattices with 3-fold symmetry and of first type and we classify their representations into PGL(3,C).
In particular, we show local rigidity of the representations which preserve the type of the generators.

Many of the proofs in the paper are computer assisted. 
This repository contains the code for these proofs. 

## Implementation

The code is a Jupyter Notebook in sage. 
To open it, one should first [install sage](https://doc.sagemath.org/html/en/installation/index.html) 
and then [open Jupyter notebook](https://doc.sagemath.org/html/en/installation/launching.html). 
The [sage documentation](https://doc.sagemath.org/html/en/index.html) contains all the instruction to run the code. 

## Organisation of the files

The Deligne-Mostow lattices are parametrised using 2 parameters (p,k) as explained in Section 4 of the paper. 
Each file contains the calculations for one of the lattices. 
The name of the file for the lattice (p,k) is RepresentationsDM(p,k). 

## Acknowledgments 

The second author was supported by the Fondation Sciences Mathematiques de Paris and by the EPSRC grant EP/T015926/1.

The third author was supported by CONACYT. 
