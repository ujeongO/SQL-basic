use pokemon;

select * 
from mypokemon;


# 규칙만들기_함수

# IF (조건, True 값, False 값)
# as ~: 출력되는 새로운 이름의 열
select name, IF(attack >= 60, 'strong', 'weak') as attack_class
from mypokemon;

# IFNULL()
# NULL 일 때, 특정 값 반환
# cf) ISNULL(): 데이터가 Null인지 아닌지 확인하는 함수

select name, IFNULL(name, 'unknow') as full_name
from mypokemon;

# CASE (조건이 여러 개일 때)
# 형식 1
# CASE 
# 	WHEN 조건 1 THEN 결과값 1
#	WHEN 조건 2 THEN 결과값 2
#	ELSE 결과값 3
# END

# 형식 2
# CASE 컬럼이름
# 	WHEN 조건 1 THEN 결과값 1
#	WHEN 조건 2 THEN 결과값 2
#	ELSE 결과값 3
# END 

select * 
from mypokemon;

select name,
case
	when attack >= 100 then 'VERY STRONG'
    when attack >= 60 then 'STRONG'
    else 'WEAK'
end as attack_class
from mypokemon;

select name,
case
	when attack >= 100 then 'VERY STRONG'
    when attack >= 60 then 'STRONG'
end as attack_class
from mypokemon;
# 해당 조건이 없으면(ELSE 구문 삭제 시), NULL 값 반환

select name, type,
case type
	when 'bug' then 'grass'
    when 'electric' then 'water'
    when 'grass' then 'bug'
end as rival_type
from mypokemon;

select name, type,
case type
	when 'bug' then 'grass'
    when 'electric' then 'water'
    when 'grass' then 'bug'
    else 'NONE'
end as rival_type
from mypokemon;


# 함수 Function

delimiter //

create function getAbility(attack int, defense int)
	returns int
    
begin
	declare a int;
    declare b int;
    declare ability int;
    set a = attack;
    set b = defense;
    select a+b into ability;
    return ability;
end

delimiter ;

# 수정 ver
delimiter //

create function getAbility(attack int, defense int)
	returns int
    
begin
    declare ability int;
    set ability = attack + defense
    return ability;
end

delimiter ;

# DELIMITER
# >> 쿼리 구문의 끝을 나타내기 위해 사용되는 기호를 변경하는 명령어