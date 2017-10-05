SELECT
	orq.ORQ_ID,
	orq.order_code,
	s.sku_code,
	l.geocode,
	l.geocode_device
FROM
	pwx.order_request orq
JOIN pwx.order_line_request olr ON
	olr.orq_id = orq.orq_id
JOIN pwx.sku s ON
	s.sku_id = olr.sku_id
JOIN pwx.sku_location_map slm ON
	slm.sku_id = olr.sku_id
JOIN pwx.location l ON
	l.l_id = slm.l_id
WHERE
	orq.order_code IN(
		'92000001'
	)
ORDER BY
	1	;
	

----------------------------------------------------------------------------------------------------- 104649

SELECT
	OH.ORQ_ID,
	OL.OL_ID,
	OH.ORDER_CODE,
	OH.TU_CODE,
	S.SKU_CODE,
	L.GEOCODE,
	LG.LG_CODE,
	OL.REQUESTED,
	OL.FULFILLED,
	OL.OL_STATUS,
	OH.OH_STATUS
FROM
	ORDER_REQUEST ORQ
LEFT JOIN ORDER_HEADER OH ON
	OH.ORQ_ID = ORQ.ORQ_ID
LEFT JOIN ORDER_LINE OL ON
	OL.OH_ID = OH.OH_ID
JOIN SKU S ON
	S.SKU_ID = OL.SKU_ID
JOIN LOCATION L ON
	L.L_ID = OL.L_ID
JOIN LOCATION_GROUP LG ON
	LG.LG_ID = OL.LG_ID;
WHERE
OH.TU_CODE = '';

-----------------------------------------------------------------------------------------------------

SELECT
	O.BOXNUMBER,
	O.STATE,
	A.STATID,
	A.STATUS
FROM
	ORDERREC O
JOIN AUFTSTAT A
		USING(
		ORDERNUMBER,
		PAGENUMBER
	);
WHERE O.BOXNUMBER = 200000001;

-----------------------------------------------------------------------------------------------------

SELECT
	*
FROM
	PWX.LOCATION
WHERE
	L_ID NOT IN(
		SELECT
			L_ID
		FROM
			PWX.LOCATION_GROUP_MEMBER_DEF
	)
	AND 
	 LT_ID = 1011
	 ORDER BY L_ID
	;
