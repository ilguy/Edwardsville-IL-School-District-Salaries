# Data Import
library(tidyverse)
library(pdftools)

path <- 'http://ecusd7.org/wp-content/uploads/bsk-pdf-manager/2021/09/EIS-Admin-and-Tchr-sal-and-beneifts-FY2021.pdf'

data <- pdf_text(pdf = '2022_salaries.pdf') %>%
  read_lines()
view(data)

data <- as_data_frame(data)
