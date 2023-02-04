SELECT jtd,
  jtd - LAG(jtd,1) OVER (
	  ORDER BY YEAR
  ) diff
FROM global
;

