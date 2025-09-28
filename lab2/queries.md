# Queries

## Expert system

1 ?- \[expertSystem\].  
true.  

### Filter: all

2 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: all.  

Filter = all,  
Results = \[assassins_creed, grand_theft_auto, batman_arkham, far_cry, watch_dogs, minecraft, dont_starve_together, splinter_cell, prince_of_persia|...\].  

### Filter: genre

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: genre.  

action, adventure, strategy, sandbox  
|: action.  

Filter = genre,  
Subfilter = action,  
Results = \[grand_theft_auto, far_cry, watch_dogs, splinter_cell, call_of_duty, assassins_creed, batman_arkham, prince_of_persia\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: genre.  

action, adventure, strategy, sandbox  
|: adventure.  

Filter = genre,  
Subfilter = adventure,  
Results = \[far_cry, dont_starve_together, minecraft, assassins_creed, batman_arkham, prince_of_persia\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: genre.  

action, adventure, strategy, sandbox  
|: strategy.  

Filter = genre,  
Subfilter = strategy,  
Results = \[assassins_creed, batman_arkham, splinter_cell, far_cry, watch_dogs, among_us, inscryption\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: genre.  

action, adventure, strategy, sandbox  
|: sandbox.  

Filter = genre,  
Subfilter = sandbox,  
Results = \[dont_starve_together, minecraft\].  

### Filter: number_of_players

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: number_of_players.  

singleplayer, multiplayer  
|: singleplayer.  

Filter = number_of_players,  
Subfilter = singleplayer,  
Results = \[assassins_creed, grand_theft_auto, batman_arkham, far_cry, dont_starve_together, watch_dogs, minecraft, splinter_cell, prince_of_persia|...\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: number_of_players.  

singleplayer, multiplayer  
|: multiplayer.   

Filter = number_of_players,  
Subfilter = multiplayer,  
Results = \[grand_theft_auto, among_us, dont_starve_together, watch_dogs, minecraft, call_of_duty\].  

### Filter: level_type

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: level_type.  

open_world, linear, map_based  
|: open_world.  

Filter = level_type,  
Subfilter = open_world,  
Results = \[assassins_creed, grand_theft_auto, batman_arkham, far_cry, watch_dogs, minecraft, dont_starve_together\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: level_type.  

open_world, linear, map_based  
|: linear.  

Filter = level_type,  
Subfilter = linear,  
Results = \[splinter_cell, prince_of_persia, inscryption\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: level_type.  

open_world, linear, map_based  
|: map_based.  

Filter = level_type,  
Subfilter = map_based,  
Results = \[among_us, call_of_duty\].

### Filter: characteristics

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: shooter.  

Filter = characteristics,  
Subfilter = shooter,  
Results = \[grand_theft_auto, far_cry, watch_dogs, splinter_cell, call_of_duty\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: survival.  

Filter = characteristics,  
Subfilter = survival,  
Results = \[far_cry, dont_starve_together, minecraft, among_us\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: resource_management.  

Filter = characteristics,  
Subfilter = resource_management,  
Results = \[far_cry, dont_starve_together, minecraft\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).   
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: turn_based.  

Filter = characteristics,  
Subfilter = turn_based,  
Results = \[inscryption\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: combat.  

Filter = characteristics,  
Subfilter = combat,  
Results = \[assassins_creed, batman_arkham, prince_of_persia\].  

3 ?- videogameFilter(X, Filter, A, Subfilter, Results).  
Select a filter:  
all, genre, number_of_players, level_type, characteristics  
|: characteristics.  

shooter, survival, resource_management, turn_based, combat, stealth  
|: stealth.  

Filter = characteristics,  
Subfilter = stealth,  
Results = \[assassins_creed, batman_arkham, splinter_cell, far_cry, watch_dogs, among_us\].  