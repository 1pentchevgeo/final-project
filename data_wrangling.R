# DATA FOR 2018-2019

raw_1819 <- read_xlsx("raw_data/1819_data.xlsx")

clean_1819 <- raw_data %>% 
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

clean_1718 <- raw_data %>% 
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

clean_1617 <- raw_data %>% 
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

clean_1516 <- raw_data %>% 
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

clean_1415 <- raw_data %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1415, "clean_1415.rds")

# DATA FOR 2013-2014

raw_1314 <- read_xlsx("raw_data/1314_data.xlsx")

clean_1314 <- raw_data %>% 
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

clean_1213 <- raw_data %>% 
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

clean_1112 <- raw_data %>% 
  mutate(Grade = factor(Grade, levels = c("Grade 9",
                                          "Grade 10",
                                          "Grade 11",
                                          "Grade 12")),
         Enrolment = as.double(Enrolment),
         `Pathway or Destination` = as.factor(`Pathway or Destination`)) %>% 
  drop_na(Grade)

write_rds(clean_1112, "clean_1112.rds")

