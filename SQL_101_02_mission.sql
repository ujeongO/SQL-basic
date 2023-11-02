# MISSION
 
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
       
select 1=0;
# 0 >> False

select number
from mypokemon
where name='pikachu';

select name
from mypokemon
where speed>50;

select name
from mypokemon
where type!='electric';

select name
from mypokemon
where (speed<=100) and (type='electric');

select name
from mypokemon
where type='bug' or type='normal';

select name
from mypokemon
where speed<=100 and type='bug';

# NOT 사용
select name
from mypokemon
where speed<=100 and type!='bug';

# where ~ between A and B
select name
from mypokemon
where speed between 50 and 100;
# speed>=50 and speed<=100

select name
from mypokemon
where (speed>=50) and (speed<=100);


# mission_1
select 123 * 456;

# mission_2
select 2310 / 30;

# mission_3
select '피카츄' as 포켓몬;

# mission_4
select *
from mypokemon;

# mission_5
select name
from mypokemon;

# mission_6
select name, height, weight
from mypokemon;

# mission_7
select distinct height
from mypokemon;

# mission_7(1)
select distinct name, height
from mypokemon;

select attack from mypokemon;
# mission_8
select name, attack*2 as attack2
from mypokemon;

# mission_9
select name as 이름
from mypokemon;

select attack, defense from mypokemon;
# mission_10
select attack as '공격력', defense as '방어력'
from mypokemon;

select height from mypokemon;
# mission_11
select height*100 as 'height(cm)'
from mypokemon;

# mission_11-1
select round(height*100, 2) as 'height(cm)'
from mypokemon;

# mission_12
select *
from mypokemon
limit 1;

# mission_13
select name as 영문명, 
	 height as "키(m)", 
	 weight as '몸무게(kg)'
from mypokemon
limit 2;

select * from mypokemon;
# mission_14
select name, (attack+defense+speed) as total
from mypokemon;

# mission_15
select name, round((weight/(height^2)),2) as BMI
from mypokemon;


























