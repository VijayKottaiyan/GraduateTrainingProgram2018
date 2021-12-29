#1
select a.m_name from musician a inner join concert b on a.m_no = b.concert_orgniser 
where con_date > '1997-02-31' and b.concert_venue = "Assembly Rooms";

#2
select a.* from musician a inner join performer b on a.m_no = b.perf_is inner join place c on a.born_in = c.place_no
where (b.instrument = "guitar" or b.instrument = "violin") and c.place_country = "England";

#3
select a.m_name, c.place_town, c.place_country, b.con_date from musician a inner join concert b on a.m_no = b.concert_orgniser
inner join place c on b.concert_in = c.place_no 
where place_country = "USA";

#4
select con_date,c_title,concert_venue
from 
musician join composer on m_no=comp_is 
join has_composed on comp_no=cmpr_no 
join composition on c_no=cmpn_no 
join performance p on c_no=performed 
join concert on performed_in=concert_no 
where m_name='Andy Jones';

#5
select instrument, count(perf_is) from instrument_data group by instrument;

#6
select m_name, born, instrument from musician join performer on m_no=perf_is 
where died is null and
instrument in 
(
select instrument from performer where perf_is = ( select m_no from musician where m_name like 'Theo%')
);

#7
select band_name, no_of_players 
from band inner join 
(select band_id, count(player) as no_of_players from plays_in group by band_id) a 
on band_no = band_id
where no_of_players > (select avg(no_of_players) as avg_players from (select band_id, count(player) as no_of_players from plays_in group by band_id) b);

#8
select distinct musician.* from 
musician join place on living_in = place_no
join composer on m_no = comp_is
join performance on m_no = conducted_by
where place_country = "England";


#9

