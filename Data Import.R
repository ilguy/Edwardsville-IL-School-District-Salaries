# Data Import
library(tidyverse)
library(pdftools)
library(data.table)
library(textreadr)

path <- 'http://ecusd7.org/wp-content/uploads/bsk-pdf-manager/2021/09/EIS-Admin-and-Tchr-sal-and-beneifts-FY2021.pdf'

data <- pdf_text(pdf = '2022_salaries.pdf')

data2 <- read_pdf(path, remove.empty = TRUE, trim = TRUE)
data2[1, "text"]
text <- str_split(data2$text, "\n")
text[[2]][1]
