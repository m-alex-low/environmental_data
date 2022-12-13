require(here)

ginkgos <- data.frame(read.csv(here("data","ginkgo_data_2022.csv")))

summary(ginkgos)
trees_seeds <- data.frame(subset(ginkgos, select = c("site_id","seeds_present")))
trees_with_seeds <- data.frame(unique(trees_seeds$site_id[trees_seeds$seeds_present==TRUE]))
