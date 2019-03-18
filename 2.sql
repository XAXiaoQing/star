select s.sn,s.name,a.c1,a.c2 from(
    select sn,
        max(if(cn="01",score,0))as c1,
        max(if(cn="02",score,0))as c2
    from sc
    group by sn)a
join student s on (a.sn=s.sn)
where a.c1 > a.c2;
