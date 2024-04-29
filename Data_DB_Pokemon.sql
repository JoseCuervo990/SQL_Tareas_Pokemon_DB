-- Inserción de datos en la tabla Jugadores
INSERT INTO Jugadores (Nombre, Correo_Electronico, Fecha_Registro, Nivel) VALUES
('Red', 'red@example.com', '2022-01-10', 20),
('Blue', 'blue@example.com', '2022-01-15', 19),
('Leaf', 'leaf@example.com', '2022-02-20', 18),
('Lance', 'lance@elitefour.com', '2022-03-05', 22),
('Brock', 'brock@pewtercity.com', '2022-03-10', 15),
('Misty', 'misty@cerulean.com', '2022-04-06', 17),
('Erika', 'erika@celadon.com', '2022-05-08', 16),
('Koga', 'koga@fuchsia.com', '2022-06-12', 18),
('Sabrina', 'sabrina@saffron.com', '2022-07-14', 21),
('Blaine', 'blaine@cinnabar.com', '2022-08-18', 20);

-- Inserción de datos en la tabla Cartas
INSERT INTO Cartas (Nombre, Tipo, Rareza, Puntos_Poder, Expansion) VALUES
('Bulbasaur', 'Grass', 'Common', 40, 'Base'),
('Ivysaur', 'Grass', 'Uncommon', 60, 'Base'),
('Charmander', 'Fire', 'Common', 50, 'Base'),
('Charmeleon', 'Fire', 'Uncommon', 80, 'Base'),
('Squirtle', 'Water', 'Common', 40, 'Base'),
('Wartortle', 'Water', 'Uncommon', 70, 'Base'),
('Pikachu', 'Electric', 'Rare', 60, 'Base'),
('Raichu', 'Electric', 'Rare', 90, 'Base'),
('Jigglypuff', 'Fairy', 'Common', 60, 'Jungle'),
('Wigglytuff', 'Fairy', 'Uncommon', 100, 'Jungle'),
('Meowth', 'Normal', 'Common', 50, 'Base'),
('Persian', 'Normal', 'Uncommon', 70, 'Base'),
('Machop', 'Fighting', 'Common', 50, 'Base'),
('Machoke', 'Fighting', 'Uncommon', 80, 'Base'),
('Machamp', 'Fighting', 'Rare', 100, 'Base');

-- Inserción de datos en la tabla Decks
INSERT INTO Decks (ID_Jugador, Nombre, Fecha_Creacion) VALUES
(1, 'Bulba Beatdown', '2022-08-25'),
(2, 'Char Flame', '2022-08-26'),
(3, 'Squirtle Squad', '2022-08-27'),
(4, 'Elec Shock', '2022-08-28'),
(5, 'Fairy Dance', '2022-08-29'),
(6, 'Normal Guys', '2022-08-30'),
(7, 'Fist Fury', '2022-08-31'),
(8, 'Grass Growers', '2022-09-01'),
(9, 'Fire Frenzy', '2022-09-02'),
(10, 'Water Works', '2022-09-03');

-- Inserción de datos en la tabla Deck_Carta (asumiendo que las ID de las cartas van del 1 al 15)
INSERT INTO Deck_Carta (ID_Deck, ID_Carta, Cantidad) VALUES
(1, 1, 3),
(1, 2, 2),
(2, 3, 3),
(2, 4, 2),
(3, 5, 3),
(3, 6, 2),
(4, 7, 3),
(4, 8, 2),
(5, 9, 3),
(5, 10, 2),
(6, 11, 3),
(6, 12, 2),
(7, 13, 3),
(7, 14, 2),
(8, 1, 3),
(9, 3, 3),
(10, 5, 3);

-- tabla Partida
INSERT INTO Partida (ID_Jugador1, ID_Jugador2, Fecha, Duracion, Ganador) VALUES
(1, 2, '2024-04-28', 30, 1),
(3, 4, '2024-04-29', 25, 3),
(5, 6, '2024-04-30', 45, 6),
(7, 8, '2024-05-01', 20, 7),
(9, 10, '2024-05-02', 35, 9),
(2, 3, '2024-05-03', 40, 3),
(4, 5, '2024-05-04', 55, 4),
(6, 7, '2024-05-05', 50, 7),
(8, 9, '2024-05-06', 60, 8),
(10, 1, '2024-05-07', 42, 1);


-- tabla Turno
INSERT INTO Turno (ID_Partida, ID_Jugador, Numero_Turno, Accion, Fecha_Hora) VALUES
(1, 1, 1, 'Player draws a card', '2024-04-28 10:00:00'),
(1, 2, 1, 'Player draws a card', '2024-04-28 10:05:00'),
(1, 1, 2, 'Player places a Basic Pokémon on the Bench', '2024-04-28 10:10:00'),
(1, 2, 2, 'Player evolves a Pokémon', '2024-04-28 10:15:00'),
(1, 1, 3, 'Player attaches an Energy card', '2024-04-28 10:20:00'),
(1, 2, 3, 'Player attacks', '2024-04-28 10:25:00'),
(1, 1, 4, 'Player uses a Trainer card', '2024-04-28 10:30:00'),
(1, 2, 4, 'Player retreats Pokémon', '2024-04-28 10:35:00'),
(1, 1, 5, 'Player activates Ability', '2024-04-28 10:40:00'),
(1, 2, 5, 'Player ends turn without action', '2024-04-28 10:45:00');

-- tabla Efecto
INSERT INTO Efecto (Nombre, Descripcion, Tipo) VALUES
('Poison', 'Pokémon is Poisoned', 'Condition'),
('Burn', 'Pokémon is Burned', 'Condition'),
('Sleep', 'Pokémon is Asleep', 'Condition'),
('Paralysis', 'Pokémon is Paralyzed', 'Condition'),
('Confusion', 'Pokémon is Confused', 'Condition'),
('Energy Boost', 'Pokémon gains additional energy', 'Buff'),
('Healing', 'Pokémon recovers HP', 'Buff'),
('Damage Increase', 'Pokémon attack deals more damage', 'Buff'),
('Draw Extra', 'Player draws extra cards', 'Buff'),
('Defense Boost', 'Pokémon defense increases', 'Buff');

-- tabla Turno_Efecto
INSERT INTO Turno_Efecto (ID_Turno, ID_Efecto, Descripcion_Efecto) VALUES
(2, 1, 'Squirtle is now poisoned'),
(3, 3, 'Pikachu is asleep and cannot attack or retreat'),
(4, 4, 'Bulbasaur is paralyzed and cannot attack or retreat'),
(5, 2, 'Charmander is burned, flip a coin for burn damage'),
(6, 6, 'Blastoise gains an additional water energy'),
(7, 8, 'Charizard deals 30 more damage this turn'),
(8, 9, 'Player draws two more cards'),
(9, 7, 'Venusaur recovers 20 HP'),
(10, 5, 'Machamp is confused, flip a coin to attack'),
(10, 10, 'Onix gets a defense boost');
