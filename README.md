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
  
## Tool
* In order to perform new statistical analyses on new data, a user can run the R script [computeAgreementQIs.R](https://github.com/ERATOMMSD/QIsAgreementMOSAs/blob/master/statisticalTests/computeAgreementQIs.R). Input data must be added to this 
[csv file](https://github.com/ERATOMMSD/QIsAgreementMOSAs/blob/master/statisticalTests/inputData/inputData.csv) using the format
   ```
   CaseStudy;A;B;HV;IGD;EP;GD;GS;ED;PFS;C
   CaseStudyName;MOSA1;MOSA2;B;B;B;A;A;A;A;ND
   ```
   where the first line is the header of the file, and the second line is an example of entry; *CaseStudyName* is the name of the search problem, *MOSA1* and *MOSA2* the names of the two compared MOSAs (*A* and *B* in the header), and the remaining columns tell whether a given quality indicator (reported in the table header) prefers *A* (i.e., *MOSA1*), *B* (i.e., *MOSA2*), or there is no difference (*ND*) for the indicator. 

* The observations can be generated using the tool GenObs provided as jar file: [GenObs.jar](https://github.com/ERATOMMSD/QIsAgreementMOSAs/blob/master/code/generatorReprSets/GenObs.jar?raw=true)
  * The tool must me invoked as follows:
     ```
     java -jar GenObs.jar TypeOfMOSA TypeOfObservation
     - TypeOfMOSA: all, single, or pairs
     - TypeOfObservation: SR, or MRS
     ```

## How to contribute to the project
Our observations are based on 11 search problems, taken from different domains.
Should the paper be accepted, we will make them publicly available (in any case, they can be already produced with the tool).

We will also actively update the observations when more data are available and analyzed.
In order to enlarge the evaluation, we encourage researchers to send us data from their experiments, so that we can add it to our repository and so obtain a more comprehensive evaluation. In order to do this, you should send us a link to a csv file having the structure described in the Tool section at the address arcaini@nii.ac.jp
Note that, at the current stage, we do not provide the computation of all the quality indicators and so you should compute the values of the quality indicators of your interest (i.e., step A1), and assess which MOSA is preferred by each of them (i.e., step A2). Should you not have such information, we still encourage you to contact us describing which kind of data you have.


## People
* Shaukat Ali https://www.simula.no/people/shaukat
* Paolo Arcaini http://group-mmm.org/~arcaini/
* Dipesh Pradhan https://www.simula.no/people/dipeshpr
* Safdar Aqeel Safdar https://www.simula.no/people/safdar
* Tao Yue https://www.simula.no/people/tao
