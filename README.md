# Do Quality Indicators Prefer Particular Multi-Objective Search Algorithms in Search-Based Software Engineering?

## Description
In Search-based Software Engineering (SBSE), users typically select a set of MOSAs for their experiments without any justification, or they choose a MOSA because of its popularity. However, the users, indeed, know the Quality Indicators (QI) that they want to use to evaluate the quality of solutions produced by a multi-objective search algorithm (MOSA). Consequently, these QIs are often employed to empirically evaluate a set of MOSAs for a particular search problem to find the best MOSA. Thus, to guide SBSE users in choosing a MOSA that represents the solutions measured by a specific QI they are interested in, we present an empirical evaluation with a set of SBSE problems to study the relationships among commonly used QIs and MOSAs in SBSE. Our aim, by studying such relationships, is to identify whether there are certain characteristics of QIs that are preferred by a certain MOSA. Such preferences are then used to provide insights and suggestions to SBSE users in selecting a MOSA, given that they know which quality aspects of solutions they are looking for.

## Experimental Design
![Process](https://github.com/mosaselection/mosaselectiongecco/blob/master/design.png)

## Repository content
This repository contains: 
* Raw data about agreement results (result of step A2)
* R script for statistical analysis of the raw agreement data (for performing steps A3-A8)
* Results of statistical analysis
* Java code for producing *Single Representative* (SR) and *Minimum Representative Set* (MRS) for:
  * *All*: without any specification of MOSA or SBSE problem characteristics
  * *SingleAlgorithm*: for one specific MOSA
  * *PairAlgorithms*: for a given pair of MOSAs
  


