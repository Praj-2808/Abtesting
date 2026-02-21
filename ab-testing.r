# Load required library for data manipulation
library(dplyr)

# View structure of the dataset
# Shows column names, data types, and sample values
str(ab_data)

# View first 6 rows of the dataset
# Helps quickly inspect how data looks
head(ab_data)

# Count number of users in each group (control vs treatment)
# Shows frequency distribution
table(ab_data$group)

# Calculate percentage split between groups
# Helps check if experiment is balanced (e.g., ~50-50 split)
prop.table(table(ab_data$group)) * 100

# Count missing values in each column
# Helps identify data quality issues
colSums(is.na(ab_data))


# Identify misaligned users:
# Case 1: User is in treatment group but sees old_page (wrong)
notaligned_user <- ab_data %>% 
  filter(group == "treatment" & landing_page == "old_page")

# Case 2: User is in control group but sees new_page (wrong)
notaligned_user2 <- ab_data %>% 
  filter(group == "control" & landing_page == "new_page")

# Combine both misaligned cases into one dataset
notaligned_user_all <- rbind(notaligned_user, notaligned_user2)

# Check number of misaligned rows (users with incorrect assignment)
dim(notaligned_user_all)


# Create clean dataset by keeping only correctly aligned users:
# control group → old_page
# treatment group → new_page
clean_data <- ab_data %>%
  filter(
    (group == "control" & landing_page == "old_page") |
      (group == "treatment" & landing_page == "new_page")
  )

# View cleaned dataset
clean_data


# Check number of duplicate user_ids
# Each user should appear only once in A/B testing
sum(duplicated(clean_data$user_id))


# View duplicate users
# Helps investigate data integrity issues
duplicate_users <- clean_data %>%
  filter(duplicated(user_id))

duplicate_users


# Remove duplicate users
# Keep only first occurrence of each user_id
clean_data <- clean_data %>%
  distinct(user_id, .keep_all = TRUE)


# Verify duplicates are removed
sum(duplicated(clean_data$user_id))

# Count users in each group
clean_data %>%
  group_by(group) %>%
  summarise(
    users = n(),
    conversions = sum(converted),
    conversion_rate = mean(converted)
  )

# conversions per group
conversions <- clean_data %>%
  group_by(group) %>%
  summarise(conversions = sum(converted)) %>%
  pull(conversions)

# total users per group
users <- clean_data %>%
  group_by(group) %>%
  summarise(users = n()) %>%
  pull(users)

conversions
users

#two prop z test
ab_test <- prop.test(conversions, users)

ab_test

ab_test$p.value

#Calculate and Display the conversion rate for each group. 
clean_data %>%
  group_by(group) %>%
  summarise(
    conversion_rate = round(mean(converted)*100, 2)
  )
