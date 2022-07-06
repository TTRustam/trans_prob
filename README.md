# trans_prob
Transition probabilities for multistate models
Thus far I have made the following
1) Downloaded the data
2) Unzipped ot.
The zipped data are quite complicated some folders contain the .csv files, some .txt, some .xlsx. There is also some R, SAS and SPSS code in some folders (all code is comented is Spanish). SOme folders contain the files directly while some have ziped folders within the folders. Also folders contain "Usuario" files, also some zipped and some as a plain text. I recon these are explanatory files written in Spanish.
3) Upon Unizpping files, I have reshuffles them into dedicated folders based on their extension (i.e. .csv).
The way I understand it, the next step is to read the necessary information from each file (we probably do not need all variables right?), then to tidy the information and bind files together (if the data will be too big, this step could be avoided and we will work data in chunks). The way I see the final data is something like data frame (or 3d array if you wish) nested by years (or more generally by correscponding time units), where rows will corespond to individuals and columns to their transitions from one state to another. After this, we can calculate the transition probabilities themselves and corresponding multistate model. The way I see it, this will comprise the most laborious part of the work. Upon completing this part, we do the following:
1) Transforming the transition probabilities with approariate compositional transformation. SHould be laborious but not particularly difficult.
2) Choose the forecasting method to apply (many possible options, most of which are already implemented in R).
3) Forecast the data and check forecast adequacy. The most pleasant and simple part of the job.
