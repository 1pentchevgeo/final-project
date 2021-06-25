# DATA FOR 2018-2019

raw_1819 <- read_xlsx("raw_data/1819_data.xlsx")

clean_1819 <- raw_1819 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1819, "clean_1819.rds")

# DATA FOR 2017-2018

raw_1718 <- read_xlsx("raw_data/1718_data.xlsx")

clean_1718 <- raw_1718 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1718, "clean_1718.rds")

# DATA FOR 2016-2017

raw_1617 <- read_xlsx("raw_data/1617_data.xlsx")

clean_1617 <- raw_1617 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1617, "clean_1617.rds")

# DATA FOR 2015-2016

raw_1516 <- read_xlsx("raw_data/1516_data.xlsx")

clean_1516 <- raw_1516 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1516, "clean_1516.rds")

# DATA FOR 2014-2015

raw_1415 <- read_xlsx("raw_data/1415_data.xlsx")

clean_1415 <- raw_1415 %>%
  select(-4) %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or destination` = as.factor(`Pathway or destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1415, "clean_1415.rds")

# DATA FOR 2013-2014

raw_1314 <- read_xlsx("raw_data/1314_data.xlsx")

clean_1314 <- raw_1314 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1314, "clean_1314.rds")

# DATA FOR 2012-2013

raw_1213 <- read_xlsx("raw_data/1213_data.xlsx")

clean_1213 <- raw_1213 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1213, "clean_1213.rds")

# DATA FOR 2011-2012

raw_1112 <- read_xlsx("raw_data/1112_data.xlsx")

clean_1112 <- raw_1112 %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1112, "clean_1112.rds")

# DATA FOR DIFFERENCES

all_years <- clean_1415 %>% 
  rename(`Pathway or Destination` = `Pathway or destination`,
         `Course Description` = `Course description`) %>% 
  inner_join(clean_1112,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination"),
             suffix = c(".1415", ".1112")) %>% 
  inner_join(clean_1213,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination")) %>% 
  inner_join(clean_1314,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination"),
             suffix = c(".1213", ".1314")) %>% 
  inner_join(clean_1516,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination")) %>% 
  inner_join(clean_1617,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination"),
             suffix = c(".1516", ".1617")) %>% 
  inner_join(clean_1718,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination")) %>% 
  inner_join(clean_1819,
             by = c("Course Code",
                    "Course Description",
                    "Grade",
                    "Pathway or Destination"),
             suffix = c(".1718", ".1819")) %>% 
  arrange(desc(Enrolment.1819)) %>% 
  slice(1:20) %>% 
  drop_na(Grade)

clean_diff <- all_years %>% 
  mutate(zeroth = 0,
         first = Enrolment.1213 - Enrolment.1112,
         second = Enrolment.1314 - Enrolment.1112,
         third = Enrolment.1415 - Enrolment.1112,
         fourth = Enrolment.1516 - Enrolment.1112,
         fifth = Enrolment.1617 - Enrolment.1112,
         sixth = Enrolment.1718 - Enrolment.1112,
         seventh = Enrolment.1819 - Enrolment.1112) %>% 
  select(-(3:12)) %>%
  select(-1) %>% 
  pivot_longer(-1) %>% 
  pivot_wider(names_from = 1, values_from = value)

write_rds(clean_diff, "clean_diff.rds")

