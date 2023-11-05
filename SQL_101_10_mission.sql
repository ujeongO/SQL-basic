use pokemon;

select * from mypokemon;
select * from ability;

/* mission_1
내 포켓몬 중에 몸무게가 가장 많이 나가는 포켓몬의 번호를 가져와 주세요.
*/
select number
from (select number, rank() over(order by weight desc) as weight_rank
	from ability) as A
where weight_rank = 1;

select number, rank() over(order by weight desc) as weight_rank
from ability;

# solution
select max(weight)
from ability;

select number
from ability
where weight = (select max(weight)
				from ability);

/* mission_2
속도가 모든 전기 포켓몬의 공격력보다 하나라도 작은 포켓몬의 번호를 가져와 주세요.
*/
select number
from ability
where speed < any(select attack 
				  from ability
                  where type = 'electric');
                  
/* mission_3
공격력이 방어력보다 큰 포켓몬이 있다면 모든 포켓몬의 이름을 가져와 주세요.
*/
select name
from mypokemon
where exists(select *
			 from ability
             where attack > defense);


