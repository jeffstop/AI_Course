import random

# Constants || Target phrase to be matched, num of individuals in pop, probability of mutation
TARGET_PHRASE = "Perfection is achieved not when there is nothing more to add, but rather when there is nothing more to take away."
POPULATION_SIZE = 250
MUTATION_RATE = 0.02

# Generate initial population
def generate_population():
    population = []
    for _ in range(POPULATION_SIZE):
        individual = ''.join(random.choice('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ,.!') for _ in range(len(TARGET_PHRASE)))
        population.append(individual)
    return population

# Calculate fitness score
def calculate_fitness(individual):
    score = 0
    for i in range(len(TARGET_PHRASE)):
        if individual[i] == TARGET_PHRASE[i]:
            score += 1
    return score

# Select parents based on fitness
def select_parents(population):
    parents = []
    for _ in range(2):
        parents.append(max(population, key=calculate_fitness))
    return parents

# Create offspring through crossover
def crossover(parents):
    offspring = ""
    crossover_point = random.randint(0, len(TARGET_PHRASE) - 1)
    for i in range(len(TARGET_PHRASE)):
        if i <= crossover_point:
            offspring += parents[0][i]
        else:
            offspring += parents[1][i]
    return offspring

# Mutate offspring
def mutate(offspring):
    mutated_offspring = ""
    for i in range(len(offspring)):
        if random.random() < MUTATION_RATE:
            mutated_offspring += random.choice('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ,.!')
        else:
            mutated_offspring += offspring[i]
    return mutated_offspring

# Main genetic algorithm
def genetic_algorithm():
    population = generate_population()
    generation = 1

    while True:
        print(f"Generation {generation} - Best Fit: {max(population, key=calculate_fitness)}")

        if TARGET_PHRASE in population:
            break

        new_population = []
        for _ in range(POPULATION_SIZE // 2):
            parents = select_parents(population)
            offspring = crossover(parents)
            mutated_offspring = mutate(offspring)
            new_population.extend([offspring, mutated_offspring])

        population = new_population
        generation += 1

# Run the algorithm
genetic_algorithm()