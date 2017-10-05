
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