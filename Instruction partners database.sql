select * from all_data;
create table output_report (
Number_schools INT, 
Number_districts INT, 
Average_rating INT,
Number_facilitators INT
);
insert into output_report values (
(select count(distinct School) from all_data),
(select count(distinct School_system) from all_data),
(select avg(Likely_recommend) from all_data),
(select count(distinct Primary_facilitator) from all_data)
);
