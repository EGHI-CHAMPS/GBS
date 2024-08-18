library(eulerr)

VennDiag <- euler(c(
  "Meningitis" = 2.5, 
  "Pneumonia" = 1.3, 
  "Sepsis" = 79.7, 
  'Meningitis&Sepsis' = 8.9,
  'Pneumonia&Sepsis' = 3.8,
  'Meningitis&Pneumonia' = 0,
  'Meningitis&Pneumonia&Sepsis' = 3.8
))


plot(VennDiag)