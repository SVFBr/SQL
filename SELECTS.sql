select * from PWX.GLB_DOMAIN_KEY order by KEY;
select * from PWX.S7_TYPICAL_DIRECTIONS;

select * from PLV.AUFTSTAT;
select * from PLV.AUFTSTAT where ORDERNUMBER = 10000;
select * from PLV.LINEREC ;
select * from PLV.LINEREC where ORDERNUMBER = 9584;
select * from PLV.ORDERREC ;
select * from PLV.ORDERREC o JOIN PWX.ORDER_HEADER oh on oh.ORDER_CODE = to_char(o.ORDERNUMBER);
select * from PLV.ORDERREC where ORDERNUMBER = 9584 ;
select * from PWX.LOCATION_GROUP;
select * from PWX.LOCATION_GROUP where LG_ID = 100024;
select * from PWX.ORDER_HEADER;
select * from PWX.ORDER_HEADER where ORDER_CODE = 10000;
select * from PWX.ORDER_HEADER where ORQ_ID = 124266;
select * from PWX.ORDER_LINE;
select * from PWX.ORDER_LINE where OH_ID = 117356; 
select * from PWX.ORDER_LINE_FULFILLMENT ;
select * from PWX.ORDER_LINE_FULFILLMENT where OL_ID = 226957;
select * from PWX.ORDER_REQUEST ;
select * from PWX.ORDER_REQUEST  where ORDER_CODE = 10000;
select * from PWX.OL_BIUR_STATUS;

-- RETORNA TODAS AS TABELAS
SELECT owner, table_name FROM dba_tables where owner = 'PWX';
  
SELECT * FROM SKU_LOCATION_MAP WHERE SKU_ID LIKE '100001%' ;
  
SELECT * FROM LOCATION ORDER BY GEOCODE;

-- RETORNA TODOS GEOCODEs 
SELECT GEOCODE FROM LOCATION ORDER BY GEOCODE;

-- RETORNA SKU_CODE | GEOCODE
SELECT SKU_CODE, GEOCODE FROM SKU , SKU_LOCATION_MAP SLM, LOCATION L WHERE SLM.L_ID = L.L_ID AND SKU.SKU_ID = SLM.SKU_ID  ORDER BY GEOCODE;

SELECT lg.lg_code, l.geocode, sku_code FROM location_group_member_def lgmd, location_group lg,location l,sku_location_map slm, sku WHERE lgmd.l_id = l.l_id AND lgmd.lg_id_in = lg.lg_id AND slm.l_id = l.l_id AND slm.sku_id = sku.sku_id  AND LG_CODE LIKE 'PBL01%';

SELECT SKU_CODE, GEOCODE FROM SKU , SKU_LOCATION_MAP SLM, LOCATION L WHERE SLM.L_ID = L.L_ID AND SKU.SKU_ID = SLM.SKU_ID  ORDER BY GEOCODE;

SELECT COUNT(*) FROM LOCATION ORDER BY GEOCODE; 

SELECT lg.lg_code, l.geocode, sku_code FROM location_group_member_def lgmd, location_group lg,location l,sku_location_map slm, sku WHERE LG_CODE LIKE 'PBL01%';

select STATION_NAME, TECH_STATION_NAME, FP from s7_station_config order by fp;

select * from S7_TYPICAL_DIRECTIONS;

--select * from  S7_TYPICAL_DIRECTIONS;
--desc S7_TYPICAL_DIRECTIONS;
--desc ALL_KEYS
--select station_name, tech_station_name, FP from s7_station_config order by station_name asc

update s7_station_config outer
set fp = (
    select rnum from (
      select STATION_NAME, row_number() over (order by STATION_NAME asc)*3 rnum 
      from s7_station_config) inner
      where inner.STATION_NAME = outer.STATION_NAME);
      
select * from s7_station_config order by FP;   
select * from s7_station_config where STATION_NAME like 'PBLA2%';
select * from s7_station_config where STATION_NAME like 'MS%';

select * from s7_station_config where STATION_NAME like 'JPT%';
    
    update s7_station_config set STATION_NAME = 'JPT02' where STATION_NAME = 'PBLA21'
    
    update s7_station_config set STATION_NAME = 'PBLA20' where STATION_NAME = 'JPT02'
        
    update s7_station_config set TECH_STATION_NAME = substr(TECH_STATION_NAME,0,8)||FP where FP >= 100
    
    select substr(TECH_STATION_NAME,0,8) from s7_station_config;
    
select * from s7_station_config order by FP asc;

commit;

SELECT * FROM USER_OBJECTS; -- vai mostrar todos objetos criados pelo próprio usuário. 
SELECT * FROM ALL_OBJECTS; -- todos objetos que o usuário tem acesso. 
select * from ALL_TAB_COLUMNS; -- mostra as tabelas e suas colunas 
select * from ALL_TABLES; -- todas tabelas 
select * from DBA_JOBS; -- todos jobs do banco 

SELECT * FROM USER_SOURCE WHERE TYPE IN('PROCEDURE','TRIGGER'); --esssa query aqui você vai ver os objetos procedures e triggers do seu owner.

select OBJECT_NAME(parent_id) as tabela,* from sys.triggers where OBJECT_NAME(parent_id) = 'sua_tabela';

select * from ALL_TRIGGERS where table_name = 'ROUTES';
select * from DBA_TRIGGERS where table_name = 'ROUTES';
select * from USER_TRIGGERS where table_name = 'ROUTES';