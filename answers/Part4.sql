# Part 4: Final Report
SELECT p.name 'Pokemon Name', t.trainername 'Trainer Name',
pt.pokelevel 'Level', pr.name 'Primary Type',
sec.name 'Secondary Type'
FROM pokemon_trainer pt
JOIN pokemons p ON pt.pokemon_id=p.id
JOIN trainers t ON t.trainerId=pt.trainerID
JOIN types pr ON pr.id=p.primary_type
JOIN types sec ON sec.id=p.secondary_type;
ORDER BY pt.defense DESC, pt.attack DESC, pt.hp DESC;

# did defense first so won't die as quick, then attack, and then hp