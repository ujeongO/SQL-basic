use pokemon;

select * from mypokemon;
select * from friendpokemon;

/* mission_01
내 포켓몬과 친구의 포켓문에 어떤 타입들이 있는지 중복 제외하고 같은 타입은 한 번 씩만 가져와 주세요.
*/
select type
from mypokemon
union
select type
from friendpokemon;

select type
from mypokemon
union
select distinct type
from friendpokemon;
# union 할 때 distinct 써주는 거 강추!

/* mission_02
내 포켓몬과 친구의 포켓몬 중에 풀(grass) 타입 포켓몬들의 포켓몬 번호와 이름을 중복 포함하여 전부 다 가져와 주세요.
*/
select number, name
from mypokemon
where type = 'grass'
union all
select number, name
from friendpokemon
where type = 'grass';

/*  
select number, name, "my" as whose
from mypokemon
where type = 'grass'
union all
select number, name, "friend's" as whose
from friendpokemon
where type = 'grass';
*/

/* mission_01
나도 가지고 있고, 친구도 가지고 있는 포켓몬의 이름을 가져와 주세요.
*/
select a.name
from mypokemon as a
inner join friendpokemon as b
on a.name = b.name;

select a.name
from mypokemon as a
inner join friendpokemon as b
on (a.name = b.name) and (a.number = b.number);


/* mission_02
나만 가지고 있고, 친구는 안 가지고 있는 포켓몬의 이름을 가져와 주세요.
*/
select a.name
from mypokemon as a
left join friendpokemon as b
on (a.name = b.name) and (a.number = b.number)
where b.name is null;




