import random

# Constants || Target phrase to be matched, num of individuals in pop, probability of mutation
TARGET_PHRASE = "Hello, World!"
POPULATION_SIZE = 100
MUTATION_RATE = 0.01

# Generate initial population
def generate_population():
    population = []
    for _ in range(POPULATION_SIZE):
        individual = ''.join(random.choice('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ,.!') for _ in range(len(TARGET_PHRASE)))
        population.append(individual)
    return population

