DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
number INT,
name VARCHAR(20),
type VARCHAR(10),
attack INT,
defense INT,
capture_date DATE
);
INSERT INTO mypokemon (number, name, type, attack, defense, capture_date)
VALUES (10, 'caterpie', 'bug', 30, 35, '2019-10-14'),
(25, 'pikachu', 'electric', 55, 40, '2018-11-04'),
(26, 'raichu', 'electric', 90, 55, '2019-05-28'),
(125, 'electabuzz', 'electric', 83, 57, '2020-12-29'),
(133, 'eevee', 'normal', 55, 50, '2021-10-03'),
(137, 'porygon', 'normal', 60, 70, '2021-01-16'),
(152, 'chikoirita', 'grass', 49, 65, '2020-03-05'),
(153, 'bayleef', 'grass', 62, 80, '2022-01-01');

USE pokemon;
select * from mypokemon;

# mission_01
select right(name, 3) as 'last_char'
from mypokemon;

# mission_02
select left(name, 2) as 'left2'
from mypokemon;

# mission_03
select replace(name,'o', 'O') as 'bigO'
from mypokemon
where name like '%o%';

# mission_04
select name, upper(concat(left(type, 1), right(type,1))) as type_code
from mypokemon;

# mission_04-2 >> 겹치는 type_code 제거
select distinct upper(concat(left(type, 1), right(type,1))) as type_code
from mypokemon;

# mission_05
select *
from mypokemon
where length(name) > 8;

# mission_06
select round(avg(attack), 0) as 'avg_of_attack'
from mypokemon;

# mission_07
select floor(avg(defense)) as 'avg_of_defense'
from mypokemon;

# mission_08
select name, power(attack, 2) as 'attack2'
from mypokemon
where length(name) < 8;

# mission_09
select name, mod(attack, 2) as 'div2'
from mypokemon;

# mission_10
select name, abs(attack - defense)
from mypokemon
where attack <= 50;

# mission_11
select current_date() as 'now_date', current_time() as 'now_time';

select * from mypokemon;
# mission_12
select month(capture_date) as month_num, monthname(capture_date) as month_eng
from mypokemon;

# mission_13
select dayofweek(capture_date) as day_num, dayname(capture_date) as day_eng
from mypokemon;

# mission_14
select year(capture_date) as 'year', 
	month(capture_date) as 'month',
	day(capture_date) as 'day'
from mypokemon;




















