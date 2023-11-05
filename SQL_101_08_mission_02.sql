use pokemon;

select * from mypokemon;
select * from ability;

# mission_01
select type, avg(height)
from mypokemon
inner join ability
on mypokemon.number = ability.number
group by type;

select type, round(avg(height), 2) as 'avg_height'
from mypokemon
left join ability
on mypokemon.number = ability.number
group by type;

# mission_02
select type, avg(weight)
from mypokemon
inner join ability
on mypokemon.number = ability.number
group by type;

select type, round(avg(weight), 2) as 'avg_weight'
from mypokemon
left join ability
on mypokemon.number = ability.number
group by type;

# mission_03
select type, avg(height), avg(weight)
from mypokemon
inner join ability
on mypokemon.number = ability.number
group by type;

select type, round(avg(height), 2) as 'avg_height', round(avg(weight), 2) as 'avg_weight'
from mypokemon
left join ability
on mypokemon.number = ability.number
group by type;

# mission_04
select mypokemon.number, name, attack, defense
from mypokemon
inner join ability
on mypokemon.number = ability.number
where mypokemon.number >= 100;

select mypokemon.number, name, attack, defense
from mypokemon
left join ability
on mypokemon.number = ability.number
where mypokemon.number >= 100;

# mission_05
select name
from mypokemon
left join ability
on mypokemon.number = ability.number
where attack is not null
order by (attack+defense) desc;

select name
from mypokemon
left join ability
on mypokemon.number = ability.number
order by (attack + defense) desc;

# mission_06
select name, speed
from mypokemon
left join ability
on mypokemon.number = ability.number;

select name
from mypokemon
left join ability
on mypokemon.number = ability.number
order by ability.speed desc
limit 1;


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
CREATE TABLE friendpokemon (
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
		(133, 'eevee', 'normal', 55, 50),
		(152, 'chikoirita', 'grass', 49, 65);
INSERT INTO friendpokemon (number, name, type, attack, defense)
VALUES (26, 'raichu', 'electric', 80, 60),
		(125, 'electabuzz', 'electric', 83, 57),
		(137, 'porygon', 'normal', 60, 70),
		(153, 'bayleef', 'grass', 62, 80),
		(172, 'pichu', 'electric', 40, 15),
		(470, 'leafeon', 'grass', 110, 130);

# UNION / UNION ALL

select * from mypokemon;
select * from friendpokemon;

select name
from mypokemon
union all
select name
from friendpokemon;

select name
from mypokemon
union
select name
from friendpokemon;

select number, name, attack
from mypokemon
union
select number, name, attack
from friendpokemon
order by number;

# ORDER BY number
# >> 쿼리 가장 마지막 작성
# >> 쿼리 A 테이블에서 가져온 컬럼만 가능

# 교집합 INTERSECT
# >> INNER JOIN 활용

select A.name
from mypokemon as A
inner join friendpokemon as B
on A.name = B.name;

select A.name
from mypokemon as A
inner join friendpokemon as B
on (A.number = B.number) and (A.name = B.name) and
(A.type = B.type) and (A.attack = B.attack) and (A.defense = B.defense);
# 결과값이 나오지 않음

# 차집합
# >> A에는 있지만 B에는 없는 것
# >> WHERE ~ IS NULL 확인

select A.name
from mypokemon as A
left join friendpokemon as B
on A.number = B.number
where B.name is null;
# 이름(name) 만으로 포켓몬 구별

select A.name
from mypokemon as A
left join friendpokemon as B
on (A.number = B.number) and (A.name = B.name) and
(A.type = B.type) and (A.attack = B.attack) and (A.defense = B.defense)
where B.name is null;
# 모든 속성 고려해서 구별




















