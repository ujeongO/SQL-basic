use pokemon;

select *
from mypokemon;

# in 사용예제
select name
from mypokemon
where type in ('bug', 'normal');
# in ('bug', 'normal') >> 'bug' or 'normal'

# like 사용예제
# 특정 문자열이 포함된 데이터 선택
select name
from mypokemon
where name like'%chu';

select name
from mypokemon
where name like '%a%';

select name
from mypokemon
where name like '%_a';

select *
from mypokemon;

insert into mypokemon(name, type)
values('kkobugi', '');
# '' >> 공백(null X)

select *
from mypokemon;

# IS NULL
select name
from mypokemon
# where number = null; # 실행 결과 없음(사용 불가)
where number IS NULL;

# IS NOT NULL
select name
from mypokemon
where number is not null;

select name
from mypokemon
where type is not null;
# kkobugi 는 어디서 온거지? >> 공백에서 나왔지!

























