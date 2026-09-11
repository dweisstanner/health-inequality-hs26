
library(haven)
library(dplyr)
library(ggplot2)
library(scales)


ess11 <- read_dta("C:/Users/dweis/OneDrive - Universität Luzern/TEACHING/2026_Health Inequality and Public Policy/health-inequality-hs26-quarto/data/ESS11.dta")

dim(ess11)
names(ess11)
# dim() tells you how many rows and columns the dataset contains.
# In survey data, a row usually represents one respondent and a column represents one variable.
head(ess11)


## Step 3: Select Switzerland

table(ess11$cntry)

ch <- ess11 %>%
  filter(cntry == "CH")

## Step 4: Inspect self-rated health

table(ch$health, useNA = "ifany")

attr(ch$health, "labels")


ch <- ch %>%
  mutate(
    health_good = case_when(
      health %in% c(1, 2) ~ 1,
      health %in% c(3, 4, 5) ~ 0,
      TRUE ~ NA_real_
    )
  )
table(ch$health_good, useNA = "ifany")

mean(ch$health_good, na.rm = TRUE)
mean(ch$health_good, na.rm = TRUE) * 100

## Step 5: Inspect education

table(ch$eisced, useNA = "ifany")
attr(ch$eisced, "labels")


