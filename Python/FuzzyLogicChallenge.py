import numpy as np
import skfuzzy as fuzz

# Accept user input
user_input = input("Enter a value between 0 and 10: ")
input_value = float(user_input)

# Input variable; Range 0-10
x = np.arange(0, 11, 1)

# Define fuzzy sets for input variable
low = fuzz.trimf(x, [0, 0, 5])
medium = fuzz.trimf(x, [2, 5, 8])
high = fuzz.trimf(x, [5, 10, 10])

# Get membership values for input_value
low_degree = fuzz.interp_membership(x, low, input_value)
medium_degree = fuzz.interp_membership(x, medium, input_value)
high_degree = fuzz.interp_membership(x, high, input_value)

# Define fuzzy rules
rule1 = np.fmax(low_degree, medium_degree)
rule2 = np.fmin(medium_degree, high_degree)

# Apply fuzzy rules to determine the fuzzy relation between input and output
relation = np.fmax(rule1, rule2)

# Aggregate the fuzzy relation using the maximum operator
aggregated = np.fmax(low, relation)
activated = np.fmin(aggregated, medium)

# Defuzzify the activated fuzzy relation to obtain a crisp output
output = fuzz.defuzz(x, activated, 'centroid')

# Display the crisp output
print("Output: ", output)
