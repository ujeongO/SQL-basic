DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
number int,
name varchar(20),
type varchar(10),
attack int,
defense int
);
INSERT INTO mypokemon (number, name, type, attack, defense)
VALUES (10, 'caterpie', 'bug', 30, 35),
(25, 'pikachu', 'electric', 55, 40),
(26, 'raichu', 'electric', 90, 55),
(125, 'electabuzz', 'electric', 83, 57),
(133, 'eevee', 'normal', 55, 50),
(137, 'porygon', 'normal', 60, 70),
(152, 'chikoirita', 'grass', 49, 65),
(153, 'bayleef', 'grass', 62, 80),
(172, 'pichu', 'electric', 40, 15),
(470, 'leafeon', 'grass', 110, 130);


select *
from mypokemon;

# mission_1
select name, if (number < 150, 'old', 'new') as 'age'
from mypokemon;

# mission_2
select name,
if((attack + defense) < 100, 'weak', 'strong') as 'ability'
from mypokemon;

# mission_3
select type,
if (avg(attack) >= 60, True, False) as 'is_strong_type'
from mypokemon
group by type;

# mission_4
select name,
case
	when (attack > 100) and (defense > 100) then 1
    else 0
end as 'ace'
from mypokemon;

# mission_4-1
select name, if(attack > 100 and defense > 100, True, False) as ace
from mypokemon;

# mission_5
select name,
case
	when number < 100 then '<100'
    when number < 200 then '<200'
    when number < 500 then '<500'
end as 'number_bin'
from mypokemon;

# mission_6
select name,
case
	when (number >= 150) and (attack >= 50) then 'new_strong'
    when (number >= 150) and (attack < 50) then 'new_weak'
    when (number < 150) and (attack >= 50) then 'old_strong'
    when (number < 150) and (attack < 50) then 'old_weak'
end as 'age_attack'
from mypokemon;

# mission_6-1
select name, number, attack,
case
	when (number >= 150) and (attack >= 50) then 'new_strong'
    when (number >= 150) and (attack < 50) then 'new_weak'
    when (number < 150) and (attack >= 50) then 'old_strong'
    when (number < 150) and (attack < 50) then 'old_weak'
end as 'age_attack'
from mypokemon;

# mission_7
select type, 
case 
	when count(type) = 1 then 'solo'
    when count(type) < 3 then 'minor'
    # when count(type) >= 3 then 'major' 
    else 'major'
end as 'count_by_type'
from mypokemon
group by type;








