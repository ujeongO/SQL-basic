DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon
(
number INT,
name VARCHAR(20),
type VARCHAR(10)
);
INSERT INTO mypokemon (number, name, type)
VALUES (10, 'caterpie', 'bug'),
(25, 'pikachu', 'electric'),
(26, 'raichu', 'electric'),
(133, 'eevee', 'normal'),
(152, 'chikoirita', 'grass');
CREATE TABLE ability (
number INT,
height FLOAT,
weight FLOAT,
attack INT,
defense INT,
speed int
);
INSERT INTO ability (number, height, weight, attack, defense, speed)
VALUES (10, 0.3, 2.9, 30, 35, 45),
(25, 0.4, 6, 55, 40, 90),
(125, 1.1, 30, 83, 57, 105),
(133, 0.3, 6.5, 55, 50, 55),
(137, 0.8, 36.5, 60, 70, 40),
(152, 0.9, 6.4, 49, 65, 45),
(153, 1.2, 15.8, 62, 80, 60),
(172, 0.3, 2, 40, 15, 60),
(470, 1, 25.5, 110, 130, 95);


select * from mypokemon;
select * from ability;

# mission_01
select name, attack, defense
from mypokemon
left join ability
on mypokemon.number = ability.number;

# mission_02
# 기준이 mypokemon이기 때문에 ability.number 를 명시해주는 게 좋음!
select ability.number, name
from mypokemon
right join ability
on ability.number = mypokemon.number;













