# Do Quality Indicators Prefer Particular Multi-Objective Search Algorithms in Search-Based Software Engineering?

## Description
In Search-based Software Engineering (SBSE), users typically select a set of Multi-Objective Search Algorithms (MOSAs) for their experiments without any justification, or they simply choose a MOSA because of its popularity (e.g., NSGA-II). On the other hand, users know certain characteristics of solutions they are interested in. Such characteristics are typically measured with Quality Indicators (QI) that are commonly used to evaluate the quality of solutions produced by a MOSA. Consequently, these QIs are often employed to empirically evaluate a set of MOSAs for a particular search problem to find the best MOSA. Thus, to guide SBSE users in choosing a MOSA that represents the solutions measured by a specific QI they are interested in, we present an empirical evaluation with a set of SBSE problems to study the relationships among commonly used QIs and MOSAs in SBSE. Our aim, by studying such relationships, is to identify whether there are certain characteristics of QIs that are preferred by a certain MOSA. Such preferences are then used to provide insights and suggestions to SBSE users in selecting a MOSA, given that they know which quality aspects of solutions they are looking for.

## Experimental Design
![Process](https://github.com/mosaselection/mosaselectiongecco/blob/master/design.png)

## Repository content
This repository contains: 
* Raw data about preferences results (results of steps 4 and 5)
* R script for statistical analysis of the preferences (steps 4-5)
* Results of statistical analysis

  


