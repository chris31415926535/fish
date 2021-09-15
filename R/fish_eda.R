library(tidyverse)

# load the data
ReefFish <- read_csv("data/HW 3 CRCP_Reef_Fish_Surveys_Hawaii_expanded.csv")

# set up a vector of species of interest
species_of_interest <- c("Vanderbilt's chromis", "Agile chromis", "Brown surgeonfish", "Spotted surgeonfish", "Yellow tang", "Common bluestripe snapper", "Arc-eye hawkfish", "Hawaiian bicolor chromis", "Whitebar surgeonfish", "Saddle wrasse", "Striated wrasse", "Pebbled butterflyfish")

# create a filtered sub-set of the fish, just species of interest
fish_filtered <- ReefFish %>%
  filter(commonname %in% species_of_interest)

# make a facet-wrapped plot of the fish of interest
fish_filtered %>%
  ggplot(mapping = aes(y = count, x = depth)) +
  geom_point() +
  facet_wrap(~commonname, scales = "free") +
  geom_smooth()

