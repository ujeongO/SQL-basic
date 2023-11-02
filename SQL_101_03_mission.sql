DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
number int,
name varchar(20),
type varchar(20),
height float,
weight float,
attack float,
defense float,
speed float
);
INSERT INTO mypokemon (number, name, type, height, weight, attack, defense, speed)
VALUES (10, 'caterpie', 'bug', 0.3, 2.9, 30, 35, 45),
(25, 'pikachu', 'electric', 0.4, 6, 55, 40, 90),
(26, 'raichu', 'electric', 0.8, 30, 90, 55, 110),
(133, 'eevee', 'normal', 0.3, 6.5, 55, 50, 55),
(152, 'chikoirita', 'grass', 0.9, 6.4, 49, 65, 45);

select * 
from mypokemon;

# mission_1
select type
from mypokemon
where name='eevee';

# mission_2
select attack, defense
from mypokemon
where name='caterpie';

# mission_3
select *
from mypokemon
where weight > 6;

# mission_4
select name
from mypokemon
where (height > 0.5) and (weight >= 6);

# mission_5
select name as 'weak_pokemon'
from mypokemon
where (attack < 50) or (defense < 50);

# mission_6
select *
from mypokemon
where type != 'normal';

# mission_7
select name, type
from mypokemon
where type in ('normal', 'fire', 'water', 'grass');

# mission_8
select name, attack
from mypokemon
where attack between 40 and 60;

# mission_9
select name
from mypokemon
where name like '%e%';

# mission_10
select *
from mypokemon
where (name like '%i%') and (speed <= 50);

# mission_11
select name, height, weight
from mypokemon
where name like '%chu';

# mission_12
select name, defense
from mypokemon
where (name like '%e') and (defense < 50);

# mission_13
select name, attack, defense
from mypokemon
where abs(attack-defense) >= 10;

# mission_14
select name, (attack+defense+speed) as total
from mypokemon
where (attack+defense+speed) >= 150;












