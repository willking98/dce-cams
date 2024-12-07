# Make conjoint surveys using the cbcTools package

# Install packages
# install.packages("remotes")
# install.packages("tidyverse")
# remotes::install_github("jhelvy/cbcTools")

# Load libraries
library(here)
library(cbcTools)
library(tidyverse)

# Define profiles with attributes and levels
profiles <- cbc_profiles(
    type      = c('Black Diamond Camalot', 'DMM Dragon', 'Wild Country Friend', 'Totem Cam'),
    price     = c(30, 40, 50, 60, 70), # $ per pound
    condition = c('New', 'Lightly Used', 'Heavily Used'),
    delivery = c('Next Day', 'Two Working Days', 'One Week')
)

# Make a basic survey using the full factorial of all profiles
design <- cbc_design(
    profiles = profiles,
    n_resp   = 1000, # Number of respondents
    n_alts   = 3,    # Number of alternatives per question
    n_q      = 10     # Number of questions per respondent
)

head(design) # preview

# Add image names matched to the apple type
# (we'll use these to display images in the survey)
image_names <- data.frame(
    type      = c('Black Diamond Camalot', 'DMM Dragon', 'Wild Country Friend', 'Totem Cam'),
    image = c('bd-cam.jpg', 'dragon.jpg', 'wc-friend.jpg', 'totem.jpg')
)
design <- design %>%
    left_join(image_names, by = "type")
head(design) # preview

# Save design
write_csv(design, here("data", "choice_questions.csv"))
