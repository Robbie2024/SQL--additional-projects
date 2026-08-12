https://mystery.knightlab.com/

Select * 
From crime_scene_report
Where date = 20180115 and type = "murder"

20180115	murder	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City

select *
From get_fit_now_member
Where name like "Ann%"

90081	16371	Annabel Miller	20160208	gold

select * 
From person
Where id = 16371

16371 Annabel Miller490173103Franklin Ave 318771143

select * 
From interview
Where person_id = 16371

16371I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.

select * 
From person
Where address_street_name like "Northwestern%"
order by address_number desc;

14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949

select * 
From interview
Where person_id = 14887

14887- - -I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".

Select *
From drivers_license as dl
inner join person as p
on dl.id = p.license_id
inner join get_fit_now_member as gg
on p.id = gg.person_id
Where dl.plate_number like "%H42W%" AND gg.id like "48Z%"

423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS	67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279	48Z55	67318	Jeremy Bowers	20160101	gold


Select *
From interview 
Where person_id = 67318

67318	I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.

Select *
From facebook_event_checkin as fb
inner join person as p
on fb.person_id = p.id
inner join drivers_license as dl
on p.license_id = dl.id 
Where dl.hair_color like "%red%" AND fb.event_name like "%SQL%" AND  dl.car_make like "%Tesla%"

99716	1143	SQL Symphony Concert	20171206	99716	Miranda Priestly	202298	1883	Golden Ave	987756388	202298	68	66	green	red	female	500123	Tesla	Model
