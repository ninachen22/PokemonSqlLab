# Part 3: Joins and Groups
# What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM types JOIN pokemons ON types.id = secondary_type;

# What is Rufflet's secondary type?
SELECT types.name FROM types JOIN pokemons ON types.id = secondary_type WHERE pokemons.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name FROM pokemons JOIN pokemon_trainer ON pokemons.id = pokemon_id WHERE trainerID = 303;

# How many pokemon have a secondary type Poison
SELECT COUNT(*) secondary_type FROM pokemons JOIN types ON types.id = pokemons.secondary_type WHERE types.name = 'Poison';

# What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(*) FROM pokemons JOIN types ON pokemons.primary_type = types.id GROUP BY primary_type;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT trainerID, COUNT(*) FROM pokemon_trainer WHERE pokelevel > 99 GROUP BY trainerID;

# How many pokemon only belong to one trainer and no other?
SELECT pokemons.name, COUNT(*) FROM pokemon_trainer JOIN pokemons
ON pokemon_trainer.pokemon_id = pokemons.id
GROUP BY pokemon_id HAVING COUNT(trainerID) = 1;