CREATE DATABASE pokemon;

use pokemon;

# myPokemon table 생성
create table myPokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);
show tables;

insert into myPokemon(number, name, type)
values(10, "caterpie", "bug"),
	(25, "pikachu", "electric"),
    (133, "eevee", "normal");
    
# myNewPokemon table 생성    
create table myNewPokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);
show tables;

insert into myNewPokemon(number, name, type)
values(77, "포니타", "불꽃"),
	(132, "메타몽", "노말"),
    (151, "뮤", "에스퍼");
    
    
# table명 수정
alter table myPokemon rename myOldPokemon;
show tables;    
    
# column명 수정    
alter table myOldPokemon
change column name eng_nm VARCHAR(20);

alter table myNewPokemon
change column name kor_nm VARCHAR(20);

# show tables;
# myOldPokemon 테이블 값만 지우기
truncate table myOldPokemon;

# myNewPokemon 테이블 전부 지우기
drop table if exists myNewPokemon;
show tables;


create table myPokemon(
	number INT,
    name VARCHAR(20),
    type VARCHAR(10)
);
show tables;

insert into myPokemon(number, name, type)
values(10, "caterpie", "bug"),
	(25, "pikachu", "electric"),
    (133, "eevee", "normal");

use pokemon;

# select 문
# selec 모든 쿼리에 필수 (가져올 데이터 선택)

# SHOW TABLES; >> 테이블 없어서 에러
# SCHEMAS(구조) 에 있는 tables 보여줘

SELECT 123;
SELECT 1+2+3;
SELECT "ABC";

select name
from myPokemon;

select *
from myPokemon;
# select 뒤 * >> 모든 값 조회

# as 사용하기 
# 가져온 데이터에 별칭을 만들어줌
# >> 실제 테이블의 컬럼명(원 데이터)은 바뀌지 않음
select number as national_number
from myPokemon;

# limit
# 	: 가져올 데이터의 로우(row, 행) 개수를 지정하는 키워드
select number, name
from myPokemon
limit 2;


select *
from myPokemon;

# distinct
select distinct type
from myPokemon;




    
    
    
    
    