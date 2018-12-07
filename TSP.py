# -*- coding: utf-8 -*-
"""
Created on Thu Dec  6 23:08:37 2018

@author: Sony
"""

import pandas as pd

import numpy as np
data=pd.read_excel('F:/TSP/Cities30.xlsx.xlsx')
data = np.array(data)
citylist = list(data[1:,0])

lencity=len(citylist)+1

#%%################## distance matrix
distmatrix=np.zeros((lencity,lencity))

for i in range(lencity):
    for j in range(lencity):
        distmatrix[i,j]=np.sqrt(np.square(data[j,1]-data[i,1])+np.square(data[j,1]-data[i,1]))

################### computeindividual (route) and fitness
import random    
    
def createroute(citylist,lencity):
    route = random.sample(citylist,lencity-1)
    route= [0]+route+[0]
    return route

def computefitness(individual):
    sum=0
    for i in range(len(individual)-1):
        sum=sum+distmatrix[int(individual[i]),int(individual[i+1])]
    return sum
 
################### create population (city routes)        
pop_size=10
num_parents_mating = 4
population=[]

def createpopulation(citylist, lencity, pop_size):
    for i in range(pop_size):
        population.append(createroute(citylist, lencity))

    return population

new_population=np.array(createpopulation(citylist, lencity, pop_size))

#################### create fitness of population
fitness=[]
def populationfitness(new_population, pop_size):
    for i in range(pop_size):
        sample=new_population[i]
        fitness.append(computefitness(sample))
        
    return fitness    
        
fitness=np.array(populationfitness(new_population,pop_size))        
        
################## select best parents through ranking 

def select_mating_pool(pop, fitness, num_parents):
    # Selecting the best individuals in the current generation as parents for producing the offspring of the next generation.
    parents = np.empty((num_parents, pop.shape[1]))
    for parent_num in range(num_parents):
        max_fitness_idx = np.where(fitness == np.min(fitness))
        max_fitness_idx = max_fitness_idx[0][0]
        parents[parent_num, :] = pop[max_fitness_idx, :]
        fitness[max_fitness_idx] = +99999999999
    return parents       

parents = select_mating_pool(new_population, np.array(fitness), 
                                      num_parents_mating)
        
################ generating next generatio

def crossover(parents, offspring_size):
    offspring = numpy.empty(offspring_size)
    # The point at which crossover takes place between two parents. Usually it is at the center.
    crossover_point = numpy.uint8(offspring_size[1]/2)

    for k in range(offspring_size[0]):
        # Index of the first parent to mate.
        parent1_idx = k%parents.shape[0]
        # Index of the second parent to mate.
        parent2_idx = (k+1)%parents.shape[0]
        # The new offspring will have its first half of its genes taken from the first parent.
        offspring[k, 0:crossover_point] = parents[parent1_idx, 0:crossover_point]
        # The new offspring will have its second half of its genes taken from the second parent.
        offspring[k, crossover_point:] = parents[parent2_idx, crossover_point:]
    return offspring        
        
offspring_crossover = crossover(parents, offspring_size=(pop_size[0]-parents.shape[0]))        
