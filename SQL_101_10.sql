DROP DATABASE IF EXISTS pokemon;
CREATE DATABASE pokemon;
USE pokemon;
CREATE TABLE mypokemon (
	number INT,
	name VARCHAR(20)
);
INSERT INTO mypokemon (number, name)
VALUES (10, 'caterpie'),
		(25, 'pikachu'),
		(26, 'raichu'),
		(133, 'eevee'),
		(152, 'chikoirita');
CREATE TABLE ability (
	number INT,
	type VARCHAR(10),
	height FLOAT,
	weight FLOAT,
	attack INT,
	defense INT,
	speed int
);
INSERT INTO ability (number, type, height, weight, attack, defense, speed)
VALUES (10, 'bug', 0.3, 2.9, 30, 35, 45),
		(25, 'electric', 0.4, 6, 55, 40, 90),
		(26, 'electric', 0.8, 30, 90, 55, 110),
		(133, 'normal', 0.3, 6.5, 55, 50, 55),
		(152, 'grass', 0.9, 6.4, 49, 65, 45);


select * from mypokemon;
select * from ability;


# sub query
# SELECT, FROM, WHERE

# SELECT 절 서브 쿼리
select number, name
from mypokemon
where name = 'pikachu';

select number, name,
	(select height
     from ability
     where number = 25) as height
from mypokemon
where name = 'pikachu';
# select절의 서브 쿼리는 반드시 결과값이 하나의 값 이어야 한다.


# FROM 서브 쿼리
# from절의 서브 쿼리는 반드시 결과값이 하나의 테이블 이어야 한다.
# 반드시 별명 가져야 함!

# 키 순위가 3순위인 포켓몬의 번호와 키 순위를 가져와 주세요.
select number, height_rank
from (select number, rank() over(order by height desc) as height_rank 
	from ability) as A		# 테이블이라 이름을 지정해준 것, 딱히 의미는 없음
where height_rank = 3;

/*
select number, height_rank
from (select number, rank() over(order by height desc) as height_rank 
	from ability)
where height_rank = 3;
>> 아무 일도 발생 안 함
*/

select number, rank() over(order by height desc) as height_rank 
from ability;


# WHERE (중첩 서브쿼리)
# 반드시 겨로가값이 하나의 컬럼 (EXISTS 제외)
# 연산자와 함께 사용 컬 ~ 연서 
# >> WHERE 컬럼, 연산자, 서브쿼리
# 비교 연산자만 사용시, WHERE 절 서브쿼리는 반드시 결과 값이 하나의 값이어야 함

# 키가 평균 키보다 작은 포켓몬의 번호를 가져와 주세요.
select number
from ability
where height < (select avg(height) from ability);

select avg(height)
from ability;

# 공격력이 모든 전기 포켓몬의 공격력보다 작은 포켓몬의 번호를 가져와 주세요.

select attack
from ability
where type = 'electric';

select number
from ability
where attack < all(select attack
					from ability
					where type = 'electric');

# 방어력이 모든 전기 포켓몬의 공격력보다 하나라도 큰 포켓몬의 번호를 가져와 주세요.
select number
from ability
where defense > any(select attack
					from ability
                    where type = 'electric');
                    

# EXISTS / NOT EXISTS

# bug 타입 포켓몬이 있다면 모든 포켓몬의 번호를 가져와 주세요.

select * from ability;

select number 
from ability
where exists(select *
			 from ability
             where type='bug');































