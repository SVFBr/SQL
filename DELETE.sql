---------------------------------------------------------------------------------------------------- 

DELETE FROM PWX.ORDER_REQUEST;
DELETE FROM PWX.ORDER_HEADER;
DELETE FROM ORDERREC;
DELETE FROM PLV.LINEREC;
DELETE FROM PWX.ORDER_LINE;
DELETE FROM PLV.AUFTSTAT;
DELETE FROM PWX.TRANSPORT_UNIT WHERE TUT_ID BETWEEN '131' AND '136'; 
DELETE FROM PWX.MESSAGE_LOG;

---------------------------------------------------------------------------------------------------- 


--delete from PWX.ORDER_LINE_FULFILLMENT where OL_ID = 226957;
--Created on 23/05/2017 by ROMULOS 
--declare 
  -- Local variables here
--  i integer;
--begin
  -- Test statements here
--  for i in (select * from order_header where oh_status = 5)loop
    --
    --update order_line ol set ol.ol_status = -30 where ol.oh_id = i.oh_id;
    --update order_header oh set oh.oh_status = -30 where oh.oh_id = i.oh_id;
    --update order_line_request olr set olr.olrq_status = -30 where olr.orq_id = i.orq_id;
    --update order_request orq set orq.orq_status = -30 where orq.orq_id = i.orq_id;
    --update plv.linerec lnr set lnr.state = 700 where lnr.ordernumber = i.order_code and lnr.linenumber = i.page;
    --update plv.orderrec ordr set ordr.state = 700 where ordr.ordernumber = i.order_code and ordr.pagenumber = 1;
    --update plv.auftstat auft set auft.status = 100 where auft.ordernumber = i.order_code and auft.status = 0;
    --update transport_unit tu set tu.tu_status = 99 where tu.tu_code = i.tu_code;
    --dbms_output.put_line('Box='||i.tu_code||' order = '||i.order_code||' page '||i.page);
    --
  --end loop;
--end;