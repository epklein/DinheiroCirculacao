library(RCurl)
library(readr)

data <- read_csv2("http://www.bcb.gov.br/adm/mecir/dadosabertos/MeioCirculante_DadosAbertos.csv",
                  col_names = c("Data", "Familia", "Denom", "Quant"))

data$Data <- as.Date(data$Data, format="%d/%m/%Y")
data$Denom <- as.numeric(data$Denom)

save(data, file="bcb.RData")