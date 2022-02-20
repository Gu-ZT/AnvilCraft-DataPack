function anc:s3_io/pointer/read
scoreboard players remove #loop tmp 1
execute if score #loop tmp matches 0.. if score succ tmp matches 1 if data storage anc:temp obj.p run function anc:s3_io/pointer/rread/loop