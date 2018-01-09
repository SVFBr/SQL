xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
						LIBERAR STATUS PARA START DE PEDIDO
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

--ONE ORDER
UPDATE PWX.ORDER_HEADER SET OH_STATUS = '5' WHERE ORDER_CODE = '91000001';
UPDATE PLV.ORDERREC SET STATE ='100' WHERE ORDERNUMBER = '9100001';

--ALL
UPDATE PWX.ORDER_HEADER SET OH_STATUS = 5 WHERE OH_STATUS = 0;
UPDATE PLV.ORDERREC SET STATE = 100 WHERE STATE = 1;

SELECT * FROM PWX.ORDER_HEADER;
SELECT * FROM PLV.ORDERREC;

SELECT * FROM PWX.GLB_DOMAIN_KEY ORDER BY KEY;
MAKE_REF

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

--ROLLBACK PEDIDO APÓS STARTSERVER--------------------------------------------------------------

SELECT * FROM ORDER_HEADER WHERE ORDER_CODE = '0474748'; -- pegar orq_id 54321

--DELETE ORDER_LINE WHERE OH_ID = 0474999;
--DELETE ORDER_HEADER WHERE ORDER_CODE = '12345'; 

--DELETE LINEREC WHERE ORDERNUMBER = '12345' AND PAGE = '1';
--DELETE ORDERREC WHERE ORDERNUMBER = '12345' AND PAGE = '1';

--DELETE ORDER_LINE_REQUEST WHERE ORQ_ID = 54321;
--DELETE ORDER_REQUEST WHERE ORQ_ID = 54321;               

--restart_process startserver         
               
--UPDATE ORDER_HEADER SET TU_CODE = '' WHERE OH_ID = 12345;                        
--UPDATE ORDER_HEADER SET TU_ID = NULL, TU_CODE = NULL WHERE OH_ID = 12345;
  
--DESOCUPAÇÂO DE CANAIS--------------------------------------------------------------------------

SELECT T.*, T.ROWID FROM CHANNELS T WHERE T.PRODNUMBER = '0000132308';
SELECT * FROM SKU ;WHERE SKU_CODE = '0000132308';
SELECT * FROM SKU_LOCATION_MAP WHERE SKU_ID = 105857; -- setar o status do canal para 99

--UPDATE SKU_LOCATION_MAP SET SLM_STATUS = 99 WHERE SKU_ID = 105857 AND LG_ID = 100024;

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
									SEQUENCE
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE = 'SEQUENCE';
SELECT * FROM ALL_SEQUENCES WHERE SEQUENCE_NAME LIKE 'SKU_SEQ';
SELECT * FROM USER_SEQUENCES;

--UPDATE ALL_SEQUENCES SET LAST_NUMBER = 100001  WHERE SEQUENCE_NAME LIKE 'SKU_SEQ';

SKURC_SEQ
SKU_SEQ  // 101422 //

SELECT SKU_SEQ.CURRVAL FROM SKU;


SELECT SKU_SEQ.CURRVAL FROM DUAL

CREATE SEQUENCE SEQ;
SELECT SEQ.NEXTVAL FROM DUAL;
SELECT SEQ.CURRVAL FROM DUAL;
ALTER SEQUENCE SEQ INCREMENT BY -VAL;
SELECT SEQ.NEXTVAL FROM DUAL;
ALTER SEQUENCE SEQ INCREMENT BY 1;

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


SELECT * FROM PWX.YANBOG_USER_REG;

INSERT INTO PWX.YANBOG_USER_REG (USERID, USER_NAME, PBL04, PBL05, PBL06, PBL07, PBL08, PBL09, PBL10, PBL11, PBL12, PBL13, PBL14, PBL15, PBL16, PBL17, PBL18, PBL19)
VALUES('0003', 'Oras II', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false', 'false');