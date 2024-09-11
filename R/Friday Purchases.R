library(dplyr)
library(readxl)
library(lubridate)
df <- read_excel('E:\\Data_analysis_projects\\Friday Purchases\\dataset\\Friday Purchases.xlsx')
fridays_q1 <- df %>%
  filter(day_name == 'Friday' & month(date) <= 3)

fridays_q1 <- fridays_q1 %>%
  mutate(week_number = isoweek(date)) %>%
  group_by(week_number) %>%
  summarise(average_amount_spent = mean(amount_spent))

print(fridays_q1)
