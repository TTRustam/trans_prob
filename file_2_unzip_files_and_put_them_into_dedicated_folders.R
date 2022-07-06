# unzip fles and put them in dedicated directories
setwd("Data/RAW")
dir.create("Data/unzipped")

# unzip all top level** folders into unzipped folder
# ** folders primarily contain data zipped into folder within the top folder and some more files i.e. "usuario"

for(i in 1:length(list.files())) {
  
  unzip(zipfile = list.files()[i], 
        exdir = "../unzipped")
}

setwd("../unzipped")
dir.create("guides")

# copy all usuario files to dedicated folder
file.copy(from = list.files()[str_detect(list.files(), "usuario")],
          to   = "guides")

# remove them from folder unzipped.
file.remove(list.files()[str_detect(list.files(), "usuario")])
dir.create("DATA_RAW")

# unzip all remaining folder that presumably should contain only data**
# unfortunately they contain more then the data. There are R files txt and csv files and more rubish
for(i in 1:length(list.files()[str_detect(list.files(), ".zip")])) {
  
  unzip(zipfile = list.files()[str_detect(list.files(), ".zip")][i], 
        exdir = "DATA_RAW")
}

# now move all .csv files to teh folder DATA_RAV and remove them from this folder
# copy all usuario files to dedicated folder
file.copy(from = list.files()[str_detect(list.files(), ".csv")],
          to   = "DATA_RAW")

# remove them from folder unzipped.
file.remove(list.files()[str_detect(list.files(), ".csv")])

# My plan now is to separate the files by their extension (.csv, .txt, .R etc.) into dedicated folders
# CSV directory already created. Apparently existed in one of the files MESS :-(
setwd("DATA_RAW")
dir.create("TXT")
dir.create("XLSX")

# csv
file.copy(from = list.files()[str_detect(list.files(), ".csv")],
          to   = "CSV")

# remove them from folder unzipped.
file.remove(list.files()[str_detect(list.files(), ".csv")])

# txt
file.copy(from = list.files()[str_detect(list.files(), ".txt")],
          to   = "TXT")

# remove them from folder unzipped.
file.remove(list.files()[str_detect(list.files(), ".txt")])

# xlsx
file.copy(from = list.files()[str_detect(list.files(), ".xlsx")],
          to   = "TXT")

# remove them from folder unzipped.
file.remove(list.files()[str_detect(list.files(), ".xlsx")])

# THERE IS ONE FOLDER of .7z format that maybe failed to unzip due to strange format