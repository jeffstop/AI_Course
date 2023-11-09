import numpy as np
import skfuzzy as fuzz

# Input variable; Range 0-10
x = np.arange(0, 11, 1)

# Define fuzzy sets for input variable
low = fuzz.trimf(x, [0, 0, 5])
medium = fuzz.trimf(x, [2, 5, 8])
high = fuzz.trimf(x, [5, 10, 10])

# Define fuzzy rules
rule1 = np.fmax(low, medium)
rule2 = np.fmin(medium, high)

# Apply fuzzy rules to determine the fuzzy relation between input and output
relation = np.fmax(rule1, rule2)

# Defuzzify the relation to obtain a crisp output
output = fuzz.defuzz(x, relation, 'centroid')

# Display the crisp output
print("Output: ", output)
