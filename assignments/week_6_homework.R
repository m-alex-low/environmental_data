rm(list = ls())

#Polyscias fulva (pol)
pol_n_predation = 26
pol_n_no_predation = 184
pol_n_total = pol_n_predation + pol_n_no_predation
pol_predation_rate = pol_n_predation/pol_n_total
pol_list = list("species" = "Polyscias fulva", "Any taken" = pol_n_predation, "None taken" = pol_n_no_predation,
                "N" = pol_n_total, "Predation rate" = pol_predation_rate)

#Pseudospondias microcarpa (psd)
psd_n_predation = 25
psd_n_no_predation = 706
psd_n_total = psd_n_predation + psd_n_no_predation
psd_predation_rate = psd_n_predation/psd_n_total
psd_list = list("species" = "Pseudospondias microcarpa", "Any taken" = psd_n_predation, "None taken" = psd_n_no_predation,
                "N" = psd_n_total, "Predation rate" = psd_predation_rate)

filled_table = matrix(c(pol_list, psd_list), ncol=5, byrow=TRUE)
colnames(filled_table) = c("species","Any taken","None taken","N", "Predation rate")
filled_table

seed_ratio = pol_predation_rate / psd_predation_rate
seed_ratio
