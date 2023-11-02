use pokemon;

# ORDER BY
select number, name
from mypokemon
order by number;

select number, name, attack, defense
from mypokemon
order by attack desc, defense;

select number, name, attack, defense
from mypokemon
order by 3 desc, 4;


# RANK, DENSE_RANK, ROW_NUMBER

select name, attack,
	rank() over(order by attack desc) as attack_rank
from mypokemon;

select name, attack,
	dense_rank() over(order by attack desc) as attack_rank
from mypokemon;

select name, attack,
	row_number() over(order by attack desc) as attack_rank
from mypokemon;


# 한 번에 출력
select name, attack,
	rank() over(order by attack desc) as rank_rank,
    dense_rank() over(order by attack desc) as rank_denseRank,
    row_number() over(order by attack desc) as rank_rowNumber
from mypokemon;
# rank: 공동 순위 존재 시 >> 다음 순서로 건너뜀 ex) 1,2,2,4
# dense_rank: 공동 순위 존재 시 >> 다음 순서로 건너뛰지 않음 ex) 1,2,2,3
# row_number: 공동 순위 무시


select * from mypokemon;

DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
number int,
name varchar(20),
height float,
weight float,
friendship float
);
INSERT INTO mypokemon (number, name, height, weight, friendship)
VALUES (10, 'caterpie', 0.3, 2.9, -1.455),
(25, 'pikachu', 0.4, 6, 124.78),
(26, 'raichu', 0.8, 30, 30.289),
(125, 'electabuzz', 1.1, 30, -10.67),
(133, 'eevee', 0.3, 6.5, 15.988),
(137, 'porygon', 0.8, 36.5, -0.245),
(152, 'chikoirita', 0.9, 6.4, 67.164),
(153, 'bayleef', 1.2, 15.8, 9.756),
(172, 'pichu', 0.3, 2, 872.1),
(470, 'leafeon', 1, 25.5, 3.42);

USE pokemon;
select * from mypokemon;

select locate("A", "ABC");

select name, friendship, round(abs(friendship),2)
from mypokemon;

select name, friendship, ceiling(friendship) as f_ceiling, floor(friendship) as f_floor
from mypokemon;

select name, friendship, round(friendship, 1) as rnd, truncate(friendship, 1) as trnc
from mypokemon;

select name, friendship, round(friendship, 0) as rnd, truncate(friendship, 0) as trnc
from mypokemon;
# 정수로 반환 희망시, 0 입력

select name, number, power(number, 2) as power_2
from mypokemon;

select name, number as num, mod(number, 2) as mod_2
from mypokemon;
# MOD: number 를 다른 숫자로 나눈 나머지 반환


select now(), current_date(), current_time();

select now(), year(now()), monthname(now());

select now(), dayname(now()), dayofweek(now()), week(now());

select now(), hour(now()), minute(now()), second(now());

select date_format('2023-11-02 16:49:42', '%Y년 %m월 %d일 %H시 %i분 %s초') as Korean_date;

select datediff('2023-11-02 16:49:42', '2024-03-22 17:59:49') as date_diff,
	   timediff('2023-11-02 16:49:42', '2024-03-22 17:59:49') as time_diff;





















