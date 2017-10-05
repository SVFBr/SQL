select campos from tabelaA left join tabelaB on A.key = B.key;                                             
select campos from tabelaA left join tabelaB on A.key = B.key where B.key is null;                          
select campos from tabelaA inner join tabelaB on A.key = B.key;                                            
select campos from tabelaA right join tabelaB on A.key = B.key;                                             
select campos from tabelaA right join tabelaB on A.key = B.key where A.key is null;                         
select campos from tabelaA full outer join tabelaB on A.key = B.key;                                        
select campos from tabelaA full outer join tabelaB on A.key = B.key where A.key is null or B.key is null ;  

select * from PWX.ORDER_LINE ol left join PWX.ORDER_HEADER oh on ol.ol_id = oh.oh_id order by ol_id;
select * from PWX.ORDER_LINE ol left join PWX.ORDER_HEADER oh on ol.ol_id = oh.oh_id where oh.oh_id is null order by ol_id;

select * from AUFTSTAT order by ORDERNUMBER;
select * from PWX.ORDER_HEADER where ORDER_CODE = 446241 ;