import pandas as pd

data = pd.read_csv(r'c:/Users/Jeff/Downloads/grades.csv')

# Average Grade for each student
average_grades = data.groupby('Student Name')['Grade'].mean()

# Calculate & display max grade in class
max_grade = data['Grade'].max()
print('Highest grade in the class: ', max_grade)

# Calculate & display min grade in class
min_grade = data['Grade'].min()
print('Lowest grade in the class: ', min_grade)

# Calcualte & display overall class average
class_average = data['Grade'].mean()
print('Average grade of the class: ', class_average)

# Create new colum called 'Pass/Fail'
data['Pass/Fail'] = data['Grade'].apply(lambda x: 'Pass' if x >= 60 else 'Fail')
print(data)

# Count number of students that passed & failed
pass_count = data[data['Pass/Fail'] == 'Pass'].shape[0]
fail_count = data[data['Pass/Fail']  == 'Fail'].shape[0]
print('Number of students passed: ', pass_count)
print('Number of students failed: ', fail_count)
