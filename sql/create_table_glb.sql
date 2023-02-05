SELECT glb.date, glb.zone, glb.tempc AS glb_temp,
       nh.zone, nh.tempc AS nh_temp,
	   sh.zone, sh.tempc AS sh_temp
FROM glb
INNER JOIN nh
  ON glb.date = nh.date
INNER JOIN sh
  ON glb.date = sh.date
WHERE glb.year > 2020
LIMIT 10