use pokemon;

select * from mypokemon;
select * from ability;

# mission_1
select height, weight, (select name
						from mypokemon
                        where number = 133) as name
from ability;

# 01_solution
select name, 
	(select height from ability where number = 133) as height,
	(select weight from ability where number = 133) as weight
from mypokemon
where name = 'eevee';

select height
from ability
where number = 133;

# mission_2
select number, speed
from ability
where speed = (select max(speed)
			   from ability);

# 02_solution
select number, speed
from ability;

select number, speed
from (select number, speed, rank() over(order by speed desc) as speed_rank 
	  from ability) as A
where speed_rank = 2;


# mission_3
select name
from mypokemon;

# 03_solution
select name
from mypokemon
where number in (select number 
				from ability 
                where defense > all(select defense 
									from ability 
                                    where type = 'electric'));


