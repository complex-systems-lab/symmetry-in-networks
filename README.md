These codes are used for finding the duplicate nodes of a network.

A) Code 'Nodes_condition_1_for_all.m' takes input as file which are:

    (i) Network (size N) in the form of its adjacency matrix (NxN) [Matrix.dat]
    (ii) Degree vector of N nodes [Degree.dat]

  It gives output:

    (i) Eigenvalues of adjacency matrix [Eigenvalue.dat]
    (ii) Two column file consisting of pairs of complete duplicate nodes [Nodes_condition_1]


B) Code 'Nodes_condition_2_for_all.m' takes input as :

    (i)    Adjacency matrix of the network (NxN) [Matrix.dat]
    (ii)   Output [Nodes_condition_1] from the code (A)

   It gives output:

    (i)    One column file consisting of index of partially duplicate nodes


To run this code, compile using MATLAB.

References:
1) Loic Marrec and Sarika Jalan*. Analysing degeneracies in networks spectra, EPL 117, 48001 (2017) 
   DOI: 10.1209/0295-5075/117/48001

2) Alok Yadav and Sarika Jalan*. Origin and implications of zero degeneracy in networks spectra. Chaos 25, 043110 (2015) 
   DOI: 10.1063/1.4917286

3) Pramod Shinde, Loic Marrec, Aparna Rai, Alok Yadav, Rajesh Kumar, Alexey Zaikin, and Sarika Jalan*. Symmetry in disease networks           
   Identified:Proposal for multi-cancer biomarkers (Under Review) (2019)

FEEL FREE TO CONTACT US IN CASE OF ANY DOUBT.
sarika@iiti.ac.in
