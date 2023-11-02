--
# create table idol(
	# name VARCHAR(20),
    # age INT,
    # group VARCHAR(50) 
# );

CREATE DATABASE pokemon;
# 데이터베이스 생성

USE pokemon;
# 사용할 데이터베이스 지정

show databases;
# 현재 있는 데이터베이스 목록


create table idol(
	name VARCHAR(20),
    age INT,
    그룹 VARCHAR(50)
);
# 테이블 생성(***) 컬럼명과 데이터타입 사이 띄어쓰기(반드시 데이터타입 지정)

show tables;
# 현재 DB에 있는 TABLE 보여줌

# 테이블 이름 변경
alter table idol rename 슈퍼스타;
show tables;

alter table 슈퍼스타 add column 경력년수 INT;
alter table 슈퍼스타 add column 키 INT;
# 테이블에 접근, 컬럼 추가

alter table 슈퍼스타 modify column 키 FLOAT;
# 기존 컬럼에 데이터 타입 변경 (int >> float)

alter table 슈퍼스타 
change column 키 몸무게 float;
# 기존 컬럼에 이름과 데이터타입 모두 변경

alter table 슈퍼스타 drop column 몸무게;


drop table 슈퍼스타;
# table 삭제
truncate table 슈퍼스타;
# table 값만 삭제

drop database 슈퍼스타;
# db 삭제

drop database if exists 슈퍼스타; # 테이블 이름이 슈퍼스타가 아님 >> 지워지지 않음
drop table if exists 슈퍼스타;

# table 값 삽입 > row 단위로 여러 개 데이터 (행 단위) 삽입
insert into 슈퍼스타(name, age, 소속)
values("Jennie", 28, "Black Pink"),
	("Jisoo", 29, "Black Pink"),
    ("Lisa", 27, "Black Pink"),
    ("Rose", 27, "Black Pink");
    
delete from 슈퍼스타
where 소속;
# 조건에 따라 데이터 삭제

update 슈퍼스타
set age = 24
where name = "Jennie";
# 데이터 수정하기

drop database if exists pokemon;
