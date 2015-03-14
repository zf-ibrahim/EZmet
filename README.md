## EZmet

Simple tools for compilation and transformation of raw Malaysia air pollution &  meteorology data.
Manual download [here](https://app.box.com/s/sodqm2yf6qne9r69yh6r7e8dgqanhh11)


####Installation

To install any packages from GitHub, first install devtools from CRAN-R

```R
install.packages("devtools")
```

To install EZmet
```R
library(devtools)

install_github("zf-ibrahim/EZmet")
```

####DEMO 

Standard format that has been set in a workbook of excel provided from Deparment of Environment containing 1 pollutant per sheet and 1 meteorological parameter such temperature also per sheet. Each of workbook only containing 1 month data of pollutant and meteorological data for specified station.  

<img src="int/asma data.png" alt="asma data" width="100%" />

EZmet able to compile and transform the data per column for complete 1 year set of data
```R
jan = loadWorkbook(file.choose(), create = TRUE)
feb = loadWorkbook(file.choose(), create = TRUE)
....
DEMO <- metdata(date, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec)
head(DEMO)

date   co    o3 pm10    no   no2   so2 temp humidity  ws  wd
1 2010-01-01 01:00:00 0.52 0.009   57 0.001 0.007 0.001 25.4       87 5.3  29
2 2010-01-01 02:00:00 0.54 0.009   54 0.000 0.007 0.001 25.1       87 4.5  12
3 2010-01-01 03:00:00 0.48 0.010   51 0.000 0.005 0.001 25.1       89 3.5   7
4 2010-01-01 04:00:00   NA 0.004   54 0.003 0.009 0.001 24.6       90 5.9 300
5 2010-01-01 05:00:00 0.58 0.005   52 0.001 0.009    NA 24.5       91 6.6  13
6 2010-01-01 06:00:00 0.61 0.005   53 0.000 0.007 0.001 24.3       91 4.6 352
```

