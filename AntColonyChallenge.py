import numpy as np

# Define the distance matrix
distance_matrix = np.array([
    [0, 2, 4, 3, 5],
    [2, 0, 6, 7, 8],
    [4, 6, 0, 1, 3],
    [3, 7, 1, 0, 2],
    [5, 8, 3, 2, 0]
])

# Number of cities
num_cities = distance_matrix.shape[0]