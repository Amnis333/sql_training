--各行の最大値を取得し、それを列として表示する

create table Greatests(k char(10), x int, y int, z int);
insert into Greatests('A', 1, 2, 3), ('B', 5, 5, 2), ('C', 4, 7, 1), ('D', 3, 3, 5);


select
	k,
	case
		when x < y then y
		else x
	end as greatest
from
	greatests ;

select
	k,
	case
		when (x <= y
		and y <= z)
		or (y <= x
		and x <= z) then z
		else (case 
			when (x <= z
			and z <= y)
			or (z <= x
			and x <= y) then y
			else x
		end)
	end greatest
from
	greatests;
