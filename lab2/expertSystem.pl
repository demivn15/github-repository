% Knowledge base.

% Number of players.

isSingleplayer(assassins_creed).
isSingleplayer(grand_theft_auto).
isSingleplayer(batman_arkham).
isSingleplayer(far_cry).
isSingleplayer(dont_starve_together).
isSingleplayer(watch_dogs).
isSingleplayer(minecraft).
isSingleplayer(splinter_cell).
isSingleplayer(prince_of_persia).
isSingleplayer(inscryption).

isMultiplayer(grand_theft_auto).
isMultiplayer(among_us).
isMultiplayer(dont_starve_together).
isMultiplayer(watch_dogs).
isMultiplayer(minecraft).
isMultiplayer(call_of_duty).

% Level type.

isOpenWorld(assassins_creed).
isOpenWorld(grand_theft_auto).
isOpenWorld(batman_arkham).
isOpenWorld(far_cry).
isOpenWorld(watch_dogs).
isOpenWorld(minecraft).
isOpenWorld(dont_starve_together).

isLinear(splinter_cell).
isLinear(prince_of_persia).
isLinear(inscryption).

isMapBased(among_us).
isMapBased(call_of_duty).

% Characteristics.

isShooter(grand_theft_auto).
isShooter(far_cry).
isShooter(watch_dogs).
isShooter(splinter_cell).
isShooter(call_of_duty).

isSurvival(far_cry).
isSurvival(dont_starve_together).
isSurvival(minecraft).
isSurvival(among_us).

hasResManagement(far_cry).
hasResManagement(dont_starve_together).
hasResManagement(minecraft).

isTurnBased(inscryption).

isCombatBased(assassins_creed).
isCombatBased(batman_arkham).
isCombatBased(prince_of_persia).

isStealthBased(assassins_creed).
isStealthBased(batman_arkham).
isStealthBased(splinter_cell).
isStealthBased(far_cry).
isStealthBased(watch_dogs).
isStealthBased(among_us).

% Rules.

isActionBased(X) :- isShooter(X); isCombatBased(X).
isAdventureBased(X) :- (isSurvival(X), hasResManagement(X)); isCombatBased(X).
isStrategyBased(X) :- isStealthBased(X); isTurnBased(X).
isSandbox(X) :- isSurvival(X), hasResManagement(X), not(isShooter(X)).

% Interactive questions.

ask(Question, Options, Answer) :- 
    write(Question), 
    nl, 
    write(Options), 
    nl, 
    read(Answer).

% Ask for videogame genre.

videogameGenre(X, Genre, GenreVideogames) :- 
    ask('', 'action, adventure, strategy, sandbox', Genre), (
    (Genre == action -> 
        findall(X, isActionBased(X), GenreVideogames))
    ;
    (Genre == adventure -> 
        findall(X, isAdventureBased(X), GenreVideogames))
    ;
    (Genre == strategy -> 
        findall(X, isStrategyBased(X), GenreVideogames))
    ;
    (Genre == sandbox -> 
        findall(X, isSandbox(X), GenreVideogames))
    ).

% Ask for videogame mode.

videogameMode(X, Mode, VideogameMode) :-
    ask('', 'singleplayer, multiplayer', Mode), (
    (Mode == singleplayer ->
        findall(X, isSingleplayer(X), VideogameMode))
    ;
    (Mode == multiplayer ->
        findall(X, isMultiplayer(X), VideogameMode))
    ).

% Ask for videogame level design.

videogameLevel(X, Level, VideogameLevel) :-
    ask('', 'open_world, linear, map_based', Level), (
    (Level == open_world ->
        findall(X, isOpenWorld(X), VideogameLevel))
    ;
    (Level == linear ->
        findall(X, isLinear(X), VideogameLevel))
    ;
    (Level == map_based ->
        findall(X, isMapBased(X), VideogameLevel))
    ).

% Ask for videogame level characteristics.

videogameCharacteristic(X, Characteristic, VideogameCharacteristic) :-
    ask('', 'shooter, survival, resource_management, turn_based, combat, stealth', Characteristic), (
    (Characteristic == shooter ->
        findall(X, isShooter(X), VideogameCharacteristic))
    ;  
    (Characteristic == survival ->
        findall(X, isSurvival(X), VideogameCharacteristic))
    ;  
    (Characteristic == resource_management ->
        findall(X, hasResManagement(X), VideogameCharacteristic))
    ;  
    (Characteristic == turn_based ->
        findall(X, isTurnBased(X), VideogameCharacteristic))
    ;  
    (Characteristic == combat ->
        findall(X, isCombatBased(X), VideogameCharacteristic))
    ;  
    (Characteristic == stealth ->
        findall(X, isStealthBased(X), VideogameCharacteristic))
    ).

% Inference engine.

videogameFilter(X, Filter, A, Subfilter, Results) :- 
    ask('Select a filter:', 'all, genre, number_of_players, level_type, characteristics', Filter), (
    (Filter == all -> 
        findall(X, (isOpenWorld(X); isLinear(X); isMapBased(X)), Results))
    ;
    (Filter == genre -> 
        videogameGenre(A, Subfilter, Results))
    ;
    (Filter == number_of_players -> 
        videogameMode(A, Subfilter, Results))
    ;
    (Filter == level_type -> 
        videogameLevel(A, Subfilter, Results))
    ;
    (Filter == characteristics -> 
        videogameCharacteristic(A, Subfilter, Results))
    ).