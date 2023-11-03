USE pokemon;

select * from mypokemon;

/* mission_01 
포켓몬 타입 별 키의 평균을 가져와 주세요.
*/
select type, round(avg(height), 2)
from mypokemon
group by type;

/* mission_02
포켓몬의 타입 별 몸무게의 평균을 가져와 주세요.
*/
select type, round(avg(weight), 2)
from mypokemon
group by type;

/* mission_03
포켓몬의 타입 별 키의 평균과 몸무게의 평균을 함께 가져와 주세요.
*/
select type, round(avg(height), 2), round(avg(weight), 2)
from mypokemon
group by type;

/* mission_04
키의 평균이 0.5 이상인 포켓몬의 타입을 가져와 주세요.
*/
select type
from mypokemon
group by type
having avg(height) >= 0.5;

/* mission_05
몸무게의 평균이 20 이상인 포켓몬의 타입을 가져와 주세요.
*/
select type
from mypokemon
group by type
having avg(weight) >= 20;

/* mission_06
포켓몬의 type 별 번호(number)의 합을 가져와 주세요.
*/
select type, sum(number)
from mypokemon
group by type;

/* mission_07
키가 0.5 이상인 포켓몬이 포켓몬의 type 별로 몇 개씩 있는지 가져와 주세요.
*/
select type, count(1)
from mypokemon
where height >= 0.5
group by type;

/* mission_08
포켓몬 타입 별 키의 최솟값을 가져와 주세요.
*/
select type, min(height)
from mypokemon
group by type;

/* mission_09
포켓몬 타입 별 몸무게의 최댓값을 가져와 주세요.
*/
select type, max(weight)
from mypokemon
group by type;

/* mission_10
키의 최솟값이 0.5보다 크고 몸무게의 최댓값이 30보다 작은 포켓몬의 타입을 가져와 주세요.
*/
select type
from mypokemon
group by type
having (min(height) > 0.5) and (max(weight) < 30);


























