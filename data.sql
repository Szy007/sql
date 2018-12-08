--prompt PL/SQL Developer import file
--prompt Created on 2018年12月8日 by Administrator
--set feedback off
--set define off
--prompt Disabling triggers for ADVANCECHARGE...
alter table ADVANCECHARGE disable all triggers;
--prompt Disabling triggers for ADVANCECHARGEDETAILED...
alter table ADVANCECHARGEDETAILED disable all triggers;
--prompt Disabling triggers for ALLOCATION_DETAILS...
alter table ALLOCATION_DETAILS disable all triggers;
--prompt Disabling triggers for ALLOCATION_FORM...
alter table ALLOCATION_FORM disable all triggers;
--prompt Disabling triggers for CUSTOMER_ACCOUNT_DETAILS...
alter table CUSTOMER_ACCOUNT_DETAILS disable all triggers;
--prompt Disabling triggers for CUSTOMER_TYPE...
alter table CUSTOMER_TYPE disable all triggers;
--prompt Disabling triggers for KEHUDETAIL_TABLE...
alter table KEHUDETAIL_TABLE disable all triggers;
--prompt Disabling triggers for LEDGER...
alter table LEDGER disable all triggers;
--prompt Disabling triggers for LEDGERS...
alter table LEDGERS disable all triggers;
--prompt Disabling triggers for MARKET...
alter table MARKET disable all triggers;
--prompt Disabling triggers for MARKETS...
alter table MARKETS disable all triggers;
--prompt Disabling triggers for MATERIALMASTERFILE...
alter table MATERIALMASTERFILE disable all triggers;
--prompt Disabling triggers for MATERIELTYPE...
alter table MATERIELTYPE disable all triggers;
--prompt Disabling triggers for PREPAIDBILLSPAYABLE...
alter table PREPAIDBILLSPAYABLE disable all triggers;
--prompt Disabling triggers for PREPAIDBILLSPAYABLEPREPAYMENT...
alter table PREPAIDBILLSPAYABLEPREPAYMENT disable all triggers;
--prompt Disabling triggers for PREPAYMENTANDRUSHPAYABLE...
alter table PREPAYMENTANDRUSHPAYABLE disable all triggers;
--prompt Disabling triggers for PURCHASE_DETAILS...
alter table PURCHASE_DETAILS disable all triggers;
--prompt Disabling triggers for PURCHASE_RETURN...
alter table PURCHASE_RETURN disable all triggers;
--prompt Disabling triggers for PUR_ENQUIRY...
alter table PUR_ENQUIRY disable all triggers;
--prompt Disabling triggers for PUR_ENQUIRY_DETAIL...
alter table PUR_ENQUIRY_DETAIL disable all triggers;
--prompt Disabling triggers for PUR_ORDER...
alter table PUR_ORDER disable all triggers;
--prompt Disabling triggers for PUR_ORDER_DETAIL...
alter table PUR_ORDER_DETAIL disable all triggers;
--prompt Disabling triggers for PUR_ORDER_STYLE...
alter table PUR_ORDER_STYLE disable all triggers;
--prompt Disabling triggers for READJUSTPRICE...
alter table READJUSTPRICE disable all triggers;
--prompt Disabling triggers for READJUSTPRICES...
alter table READJUSTPRICES disable all triggers;
--prompt Disabling triggers for SALESOUTLET...
alter table SALESOUTLET disable all triggers;
--prompt Disabling triggers for SALESOUTLETDETAILED...
alter table SALESOUTLETDETAILED disable all triggers;
--prompt Disabling triggers for SALES_QUOTATION_DETAILS...
alter table SALES_QUOTATION_DETAILS disable all triggers;
--prompt Disabling triggers for SALES_QUOTATION_SHEET...
alter table SALES_QUOTATION_SHEET disable all triggers;
--prompt Disabling triggers for SALES_RETURNS...
alter table SALES_RETURNS disable all triggers;
--prompt Disabling triggers for SALES_RETURNS_DETAILS...
alter table SALES_RETURNS_DETAILS disable all triggers;
--prompt Disabling triggers for SUPPLIERCUSTOMER...
alter table SUPPLIERCUSTOMER disable all triggers;
--prompt Disabling triggers for T_ADDRESS...
alter table T_ADDRESS disable all triggers;
--prompt Disabling triggers for T_CHECK_DETAIL...
alter table T_CHECK_DETAIL disable all triggers;
--prompt Disabling triggers for T_DEPARTMENT...
alter table T_DEPARTMENT disable all triggers;
--prompt Disabling triggers for T_DOCUMENT_TYPE...
alter table T_DOCUMENT_TYPE disable all triggers;
--prompt Disabling triggers for T_GYS...
alter table T_GYS disable all triggers;
--prompt Disabling triggers for T_KEHU...
alter table T_KEHU disable all triggers;
--prompt Disabling triggers for T_PERSONNEL...
alter table T_PERSONNEL disable all triggers;
--prompt Disabling triggers for T_PURCHASE_STORAGE_DETAILED...
alter table T_PURCHASE_STORAGE_DETAILED disable all triggers;
--prompt Disabling triggers for T_PURCHASE_STORAGE_MAIN...
alter table T_PURCHASE_STORAGE_MAIN disable all triggers;
--prompt Disabling triggers for T_REQUISITION_DETAIL...
alter table T_REQUISITION_DETAIL disable all triggers;
--prompt Disabling triggers for T_SHARE...
alter table T_SHARE disable all triggers;
--prompt Disabling triggers for T_SHARE_DETAIL...
alter table T_SHARE_DETAIL disable all triggers;
--prompt Disabling triggers for T_SHARE_RESULT...
alter table T_SHARE_RESULT disable all triggers;
--prompt Disabling triggers for WAREHOUSEINFO...
alter table WAREHOUSEINFO disable all triggers;
--prompt Disabling triggers for YUSHOUCHONGDETAIL_TABLE...
alter table YUSHOUCHONGDETAIL_TABLE disable all triggers;
--prompt Disabling triggers for YUSHOUCHONG_TABLE...
alter table YUSHOUCHONG_TABLE disable all triggers;
--prompt Disabling triggers for YUSHOUDETAILS_INTFACE...
alter table YUSHOUDETAILS_INTFACE disable all triggers;
--prompt Disabling triggers for YUSHOUDETAILS_TABLE...
alter table YUSHOUDETAILS_TABLE disable all triggers;
--prompt Disabling triggers for YUSHOU_TABLE...
alter table YUSHOU_TABLE disable all triggers;
--prompt Deleting YUSHOU_TABLE...
delete from YUSHOU_TABLE;
commit;
--prompt Deleting YUSHOUDETAILS_TABLE...
delete from YUSHOUDETAILS_TABLE;
commit;
--prompt Deleting YUSHOUDETAILS_INTFACE...
delete from YUSHOUDETAILS_INTFACE;
commit;
--prompt Deleting YUSHOUCHONG_TABLE...
delete from YUSHOUCHONG_TABLE;
commit;
--prompt Deleting YUSHOUCHONGDETAIL_TABLE...
delete from YUSHOUCHONGDETAIL_TABLE;
commit;
--prompt Deleting WAREHOUSEINFO...
delete from WAREHOUSEINFO;
commit;
--prompt Deleting T_SHARE_RESULT...
delete from T_SHARE_RESULT;
commit;
--prompt Deleting T_SHARE_DETAIL...
delete from T_SHARE_DETAIL;
commit;
--prompt Deleting T_SHARE...
delete from T_SHARE;
commit;
--prompt Deleting T_REQUISITION_DETAIL...
delete from T_REQUISITION_DETAIL;
commit;
--prompt Deleting T_PURCHASE_STORAGE_MAIN...
delete from T_PURCHASE_STORAGE_MAIN;
commit;
--prompt Deleting T_PURCHASE_STORAGE_DETAILED...
delete from T_PURCHASE_STORAGE_DETAILED;
commit;
--prompt Deleting T_PERSONNEL...
delete from T_PERSONNEL;
commit;
--prompt Deleting T_KEHU...
delete from T_KEHU;
commit;
--prompt Deleting T_GYS...
delete from T_GYS;
commit;
--prompt Deleting T_DOCUMENT_TYPE...
delete from T_DOCUMENT_TYPE;
commit;
--prompt Deleting T_DEPARTMENT...
delete from T_DEPARTMENT;
commit;
--prompt Deleting T_CHECK_DETAIL...
delete from T_CHECK_DETAIL;
commit;
--prompt Deleting T_ADDRESS...
delete from T_ADDRESS;
commit;
--prompt Deleting SUPPLIERCUSTOMER...
delete from SUPPLIERCUSTOMER;
commit;
--prompt Deleting SALES_RETURNS_DETAILS...
delete from SALES_RETURNS_DETAILS;
commit;
--prompt Deleting SALES_RETURNS...
delete from SALES_RETURNS;
commit;
--prompt Deleting SALES_QUOTATION_SHEET...
delete from SALES_QUOTATION_SHEET;
commit;
--prompt Deleting SALES_QUOTATION_DETAILS...
delete from SALES_QUOTATION_DETAILS;
commit;
--prompt Deleting SALESOUTLETDETAILED...
delete from SALESOUTLETDETAILED;
commit;
--prompt Deleting SALESOUTLET...
delete from SALESOUTLET;
commit;
--prompt Deleting READJUSTPRICES...
delete from READJUSTPRICES;
commit;
--prompt Deleting READJUSTPRICE...
delete from READJUSTPRICE;
commit;
--prompt Deleting PUR_ORDER_STYLE...
delete from PUR_ORDER_STYLE;
commit;
--prompt Deleting PUR_ORDER_DETAIL...
delete from PUR_ORDER_DETAIL;
commit;
--prompt Deleting PUR_ORDER...
delete from PUR_ORDER;
commit;
--prompt Deleting PUR_ENQUIRY_DETAIL...
delete from PUR_ENQUIRY_DETAIL;
commit;
--prompt Deleting PUR_ENQUIRY...
delete from PUR_ENQUIRY;
commit;
--prompt Deleting PURCHASE_RETURN...
delete from PURCHASE_RETURN;
commit;
--prompt Deleting PURCHASE_DETAILS...
delete from PURCHASE_DETAILS;
commit;
--prompt Deleting PREPAYMENTANDRUSHPAYABLE...
delete from PREPAYMENTANDRUSHPAYABLE;
commit;
--prompt Deleting PREPAIDBILLSPAYABLEPREPAYMENT...
delete from PREPAIDBILLSPAYABLEPREPAYMENT;
commit;
--prompt Deleting PREPAIDBILLSPAYABLE...
delete from PREPAIDBILLSPAYABLE;
commit;
--prompt Deleting MATERIELTYPE...
delete from MATERIELTYPE;
commit;
--prompt Deleting MATERIALMASTERFILE...
delete from MATERIALMASTERFILE;
commit;
--prompt Deleting MARKETS...
delete from MARKETS;
commit;
--prompt Deleting MARKET...
delete from MARKET;
commit;
--prompt Deleting LEDGERS...
delete from LEDGERS;
commit;
--prompt Deleting LEDGER...
delete from LEDGER;
commit;
--prompt Deleting KEHUDETAIL_TABLE...
delete from KEHUDETAIL_TABLE;
commit;
--prompt Deleting CUSTOMER_TYPE...
delete from CUSTOMER_TYPE;
commit;
--prompt Deleting CUSTOMER_ACCOUNT_DETAILS...
delete from CUSTOMER_ACCOUNT_DETAILS;
commit;
--prompt Deleting ALLOCATION_FORM...
delete from ALLOCATION_FORM;
commit;
--prompt Deleting ALLOCATION_DETAILS...
delete from ALLOCATION_DETAILS;
commit;
--prompt Deleting ADVANCECHARGEDETAILED...
delete from ADVANCECHARGEDETAILED;
commit;
--prompt Deleting ADVANCECHARGE...
delete from ADVANCECHARGE;
commit;
--prompt Loading ADVANCECHARGE...
insert into ADVANCECHARGE (OrderId, AdvanceDate, CustomerId, SettlementOne, SettlementTwo, SettlementThree, isAuditing)
values ('20181129001', to_date('29-11-2018 17:05:00', 'dd-mm-yyyy hh24:mi:ss'), 1, 12, 0, 23, null);
commit;
--prompt 1 records loaded
--prompt Loading ADVANCECHARGEDETAILED...
--prompt Table is empty
--prompt Loading ALLOCATION_DETAILS...
--prompt Table is empty
--prompt Loading ALLOCATION_FORM...
--prompt Table is empty
--prompt Loading CUSTOMER_ACCOUNT_DETAILS...
insert into CUSTOMER_ACCOUNT_DETAILS (CUSTOMERID, SOURCELISTTYPE, SOURCELISTID, CUSTOMERIDS, Time, PRICE, CURRENTAMOUNT)
values (1, 1, '20181130001', 1, to_date('30-11-2018', 'dd-mm-yyyy'), 100, 666666.66);
commit;
--prompt 1 records loaded
--prompt Loading CUSTOMER_TYPE...
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (1, '大客户', 'english', '这是一个大客户');
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (2, '中客户', 'english', '这是一个中客户');
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (3, '小客户', 'english', '这是一个小客户');
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (4, '测试客户1', 'english', '这是一个测试客户');
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (5, '测试客户2', 'english', '这是一个测试客户');
insert into CUSTOMER_TYPE (CLASSID, CLASSNAME, ENGNAME, MEMO)
values (6, '测试客户3', 'english', '这是一个测试客户');
commit;
--prompt 6 records loaded
--prompt Loading KEHUDETAIL_TABLE...
--prompt Table is empty
--prompt Loading LEDGER...
insert into LEDGER (WAREHOUSEID, PRODID, Num, PRICE, JPRICE)
values ('123', '123', 1, 1, 1);
commit;
--prompt 1 records loaded
--prompt Loading LEDGERS...
insert into LEDGERS (DOCUMENTSCLASS, BILLNO, LINEID, WAREHOUSEID, PRODID, Num, PRICE, JPRICE, Date)
values ('1', '123', 1, '123', '123', 1, 1, 1, to_date('07-10-2015', 'dd-mm-yyyy'));
commit;
--prompt 1 records loaded
--prompt Loading MARKET...
insert into MARKET (BILLNO, BILLDATE, CUSTOMERID, ADDRESSID, BILLSTYLEID, CUSTBILLNO, PRICEOFTAX, CURRID, BILLSTATUS, EXCHRATE, SALESID, MAKER, DEPARDTID, PERMITTER)
values ('123', to_date('07-10-2015', 'dd-mm-yyyy'), '123', '1', '1', '1', 1, 1, 1, 1, '1', '1', '1', '1');
commit;
--prompt 1 records loaded
--prompt Loading MARKETS...
insert into MARKETS (BILLNO, PRODID, SUMQTY, SUMBTAXAMT, SUMTAX, SUMAMTATAX, PREOUTBOUND, Number, GIFTS, NOTE, Single, Order)
values ('123', '123', 1, 1, 1, 1, to_date('07-10-2015', 'dd-mm-yyyy'), 1, 1, '123', '1', '1');
commit;
--prompt 1 records loaded
--prompt Loading MATERIALMASTERFILE...
insert into MATERIALMASTERFILE (PRODID, CLASSID, PRODNAME, STDUNITID, PRODSIZE, ENGNAME, BARCODEID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, CURRID, PRODFORM, PRICEOFTAX, BUSITAXRATE, TAXITEMSID, ADVANCEDAYS, MAJORSUPPLIER, BATCHUSED, EFFECTDATEUSED, VALIDDATEUSED, DEFVALIDDAY, SAFEQTY, BALLAMT, CSTDCOST, BAVGCOST, BTOTALCOST, CSAFEALLSTK, CAVGCOST, BSTDCOST, CTOTALCOST, PRODDESC, UDEF1, UDEF2, CALLAMT)
values ('WO2', 'A01', '唐人神香肠', '包', '根', 'malelianyiqun', null, 20, 20, null, null, null, null, 15, '001', 0, null, .17, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 30);
insert into MATERIALMASTERFILE (PRODID, CLASSID, PRODNAME, STDUNITID, PRODSIZE, ENGNAME, BARCODEID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, CURRID, PRODFORM, PRICEOFTAX, BUSITAXRATE, TAXITEMSID, ADVANCEDAYS, MAJORSUPPLIER, BATCHUSED, EFFECTDATEUSED, VALIDDATEUSED, DEFVALIDDAY, SAFEQTY, BALLAMT, CSTDCOST, BAVGCOST, BTOTALCOST, CSAFEALLSTK, CAVGCOST, BSTDCOST, CTOTALCOST, PRODDESC, UDEF1, UDEF2, CALLAMT)
values ('W01', 'A03', '女士连衣裙', '尺码', 'M', 'malelianyiqun', null, 325.25, 325.255, null, null, null, null, 255.25, '001', null, null, 17, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 52);
commit;
--prompt 2 records loaded
--prompt Loading MATERIELTYPE...
insert into MATERIELTYPE (CLASSID, CLASSNAME, ENGNAME, ACCINVENTORYID, ACCSALEID, ACCSALECOSTID, SENDOUTWAREID, GIFTEXPENSEID, OTHERINCOMEID, OTHEREXPENSEID, OTHERCOSTID, MEMO)
values ('A01', '包装品', null, '包装物', '其它业务收入', '其它业务支出', '发出商品', '营业费用', null, null, null, null);
insert into MATERIELTYPE (CLASSID, CLASSNAME, ENGNAME, ACCINVENTORYID, ACCSALEID, ACCSALECOSTID, SENDOUTWAREID, GIFTEXPENSEID, OTHERINCOMEID, OTHEREXPENSEID, OTHERCOSTID, MEMO)
values ('A02', '办公品', null, '办公', '其它业务收入', '其它业务支出', '公司运维', '营业费用', null, null, null, null);
insert into MATERIELTYPE (CLASSID, CLASSNAME, ENGNAME, ACCINVENTORYID, ACCSALEID, ACCSALECOSTID, SENDOUTWAREID, GIFTEXPENSEID, OTHERINCOMEID, OTHEREXPENSEID, OTHERCOSTID, MEMO)
values ('A03', '服装品', null, '服装', '其它业务收入', '其它业务支出', '员工使用', '营业费用', null, null, null, null);
insert into MATERIELTYPE (CLASSID, CLASSNAME, ENGNAME, ACCINVENTORYID, ACCSALEID, ACCSALECOSTID, SENDOUTWAREID, GIFTEXPENSEID, OTHERINCOMEID, OTHEREXPENSEID, OTHERCOSTID, MEMO)
values ('A04', '原材料品', null, '原材料', '其它业务收入', '其它业务支出', '加工', '营业费用', null, null, null, null);
commit;
--prompt 4 records loaded
--prompt Loading PREPAIDBILLSPAYABLE...
--prompt Table is empty
--prompt Loading PREPAIDBILLSPAYABLEPREPAYMENT...
--prompt Table is empty
--prompt Loading PREPAYMENTANDRUSHPAYABLE...
--prompt Table is empty
--prompt Loading PURCHASE_DETAILS...
insert into PURCHASE_DETAILS (DOCUMENTID, COLUMNID, MATERIALID, MATERIALNAME, SPECIFICATION, UNITNAME, QUANTITY, DISCOUNTPRICE, FOLDNUMBER, EXCHANGERATE, AMOUNT, TAXRATE, TAXAMT, AMOUNTATAX, BATCHID, ISGIFT, HASINV, NOTINVCOUN, ITEMREMARK, TRANTYPE, FROMNO)
values ('2018120301', 1, '1', '1', '1', '1', 1, 1, '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '1', '1');
commit;
--prompt 1 records loaded
--prompt Loading PURCHASE_RETURN...
insert into PURCHASE_RETURN (DOCUMENTID, DOCUMENTDATE, BILLNAME, SUPPLIERNUMBER, SUPPLIER, SUPPLIERADDRESS, WAREHOUSEID, WARENAME, CRRENCY, EXCHRATE, PRICEOFTAX, ISDEDUCT, TOTALNMBER, TOTAL, TAX, SUMAMTATAX, BUYERID, MAKERSIGNID, DEPARTMENTID, PERMITTERSIGNID)
values ('2018120301', to_date('03-12-2018 06:13:52', 'dd-mm-yyyy hh24:mi:ss'), '西瓜', 12, '中车', '湖南株洲', 456165165, '原料材料', '人民币', 1, 1, 1, 10, 50, 500, 1000, 123, 456, 789, 100);
commit;
--prompt 1 records loaded
--prompt Loading PUR_ENQUIRY...
insert into PUR_ENQUIRY (PURBILLNO, BILLNAME, BILLDATE, CUSTOMERID, CURRID, VALIDDATE, PRICEOFTAX, EXCHRATE, OUTADDRESS, BILLSTATUS, MAKER, SALESID, DEPARTID, PERMITTER)
values ('20181205001', '采购询价单', to_date('05-12-2018', 'dd-mm-yyyy'), '1', 'RMB', to_date('10-12-2018', 'dd-mm-yyyy'), 1, 1, '湖南省株洲市天元区', 0, '小刘', null, null, null);
commit;
--prompt 1 records loaded
--prompt Loading PUR_ENQUIRY_DETAIL...
insert into PUR_ENQUIRY_DETAIL (LINEID, PURBILLNO, PRODID, PRODNUM, B_DISCOUNT_PRICE, DISCOUNT_NUM, PRODPRICE, SUMTAX, SUMBTAXAMT, SUMAMTATAX, ISPRESENT, ENTRY_NOTES, BILLSOURCETYPE, BILLSOURCENO, HEARDID, FOOTERID, USERDEF1, USERDEF2, REMARK)
values (1, '20181205001', 'WO2', 20, 125.5, 100, 125.5, null, 17, null, null, null, null, null, null, null, null, null, null);
insert into PUR_ENQUIRY_DETAIL (LINEID, PURBILLNO, PRODID, PRODNUM, B_DISCOUNT_PRICE, DISCOUNT_NUM, PRODPRICE, SUMTAX, SUMBTAXAMT, SUMAMTATAX, ISPRESENT, ENTRY_NOTES, BILLSOURCETYPE, BILLSOURCENO, HEARDID, FOOTERID, USERDEF1, USERDEF2, REMARK)
values (2, '20181205001', 'W01', 10, 222.5, 100, 222.5, null, 17, null, null, null, null, null, null, null, null, null, null);
commit;
--prompt 2 records loaded
--prompt Loading PUR_ORDER...
insert into PUR_ORDER (PURORDERNO, ORDERNAME, ORDERDATE, CUSTOMERID, ORDERSTYLEID, CURRID, PRICEOFTAX, EXCHRATE, OUTADDRESS, BILLSTATUS, SALESID, MAKER, DEPARTID, PERMITTER, PROJECTID)
values ('20181207001', '采购订单', to_date('05-12-2018 05:51:02', 'dd-mm-yyyy hh24:mi:ss'), '1', 1, 'RMB', 0, 1, '湖南省株洲市天元区', 0, '欧经理', '墨墨', null, null, '进销存');
commit;
--prompt 1 records loaded
--prompt Loading PUR_ORDER_DETAIL...
insert into PUR_ORDER_DETAIL (LINEID, PURORDERNO, PRODID, PRODNUM, B_DISCOUNT_PRICE, DISCOUNT_NUM, PRODPRICE, SUMTAX, SUMBTAXAMT, SUMAMTATAX, STORAGEDATE, NOWARENUM, ISPRESENT, ENTRY_NOTES, BILLSOURCETYPE, BILLSOURCENO, HEARDID, FOOTERID, USERDEF1, USERDEF2, REMARK)
values (1, '20181207001', 'W01', 20, 321.55, 100, 321.55, null, 17, 0, to_date('11-12-2018 05:59:03', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null);
insert into PUR_ORDER_DETAIL (LINEID, PURORDERNO, PRODID, PRODNUM, B_DISCOUNT_PRICE, DISCOUNT_NUM, PRODPRICE, SUMTAX, SUMBTAXAMT, SUMAMTATAX, STORAGEDATE, NOWARENUM, ISPRESENT, ENTRY_NOTES, BILLSOURCETYPE, BILLSOURCENO, HEARDID, FOOTERID, USERDEF1, USERDEF2, REMARK)
values (2, '20181207001', 'WO2', 50, 247.8, 100, 247.8, null, 17, 0, to_date('11-12-2018 05:59:50', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, null, null, null, null);
commit;
--prompt 2 records loaded
--prompt Loading PUR_ORDER_STYLE...
insert into PUR_ORDER_STYLE (ORDERSTYLENO, ORDERSTYLENAME)
values (1, '国内采购');
insert into PUR_ORDER_STYLE (ORDERSTYLENO, ORDERSTYLENAME)
values (2, '国外采购');
insert into PUR_ORDER_STYLE (ORDERSTYLENO, ORDERSTYLENAME)
values (3, '省内采购');
commit;
--prompt 3 records loaded
--prompt Loading READJUSTPRICE...
insert into READJUSTPRICE (BILLDATE, BILLNO, ADDED, CREDENTIALS, IMPAIRMENT, ADJUST, MAKER, PERMITTER)
values (to_date('07-10-2015', 'dd-mm-yyyy'), '123', '123', '123', '123', '123', '123', '123');
commit;
--prompt 1 records loaded
--prompt Loading READJUSTPRICES...
insert into READJUSTPRICES (BILLNO, PRODID, PRICE, NOTE)
values ('123', '123', 1, '123');
commit;
--prompt 1 records loaded
--prompt Loading SALESOUTLET...
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181205001', '销售出库表', 5666.22, 56, 15, 5, '8', '销售订单', 'W001', '东南仓', to_date('05-12-2018', 'dd-mm-yyyy'), '1', '001', null, null, '哇哈哈', '001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '株洲芦淞区', null, '和县', '钟仪勇', null, '啦啦啦', null, null, null, 0);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181206001', '销售出库表', 5666.25, null, null, null, null, null, null, '默默仓', to_date('06-12-2018', 'dd-mm-yyyy'), null, null, null, null, '哇哈哈', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '湖南省长沙市浏阳市', 0, null, null, null, null, null, null, null, 0);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181206002', '销售出库表', 5666.25, null, null, null, null, null, null, '默默仓', to_date('06-12-2018', 'dd-mm-yyyy'), null, null, null, null, '唐人神', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '123456789', 0, null, null, null, null, null, null, null, 0);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181206004', '销售出库表', 5666.25, null, null, null, null, null, null, '默默仓', to_date('06-12-2018', 'dd-mm-yyyy'), null, null, null, null, '哇哈哈', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '上海浦东新区哇哈哈总部', 0, null, null, null, null, null, null, null, 0);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181206003', '销售出库表', 5666.25, null, null, null, null, null, null, '东南仓', to_date('06-12-2018', 'dd-mm-yyyy'), null, null, null, null, '唐人神', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'hesoyam', 0, null, null, null, null, null, null, null, 0);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181206005', '销售出库表', 5666.25, null, null, null, null, null, null, '东南仓', to_date('06-12-2018', 'dd-mm-yyyy'), null, null, null, null, '唐人神', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'llllll', 0, null, null, null, null, null, null, null, 1);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181208001', '销售出库表', 5666.25, null, null, null, null, null, null, '东南仓', to_date('08-12-2018', 'dd-mm-yyyy'), null, null, null, null, '哇哈哈', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '你妈妈', 0, null, null, null, null, null, null, null, 1);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181203001', '销售出库表', 5666.22, 56, 15, 5, '8', '销售订单', 'W001', '东南仓', to_date('03-12-2018', 'dd-mm-yyyy'), '2', '001', null, null, '唐人神', '001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '001', '株洲天元区', 0, '邓嘉杰', '钟仪勇', null, '啦啦啦', null, null, null, 1);
insert into SALESOUTLET (BILLNO, BILLNAME, SUMAMTATAX, SUMNUM, GATHERSTYLE, GATHERDELAY, SALECLASSID, SALECLASSNAME, WAREID, WARENAME, BILLDATE, CUSTID, CLASSID, AMOUNTQOUTA, RATEOFDISCOUNT, FULLNAME, CURRID, EXCHRATE, CURRENCYNAME, TOTAL, TAX, OFFSET, LOCALTOTAL, LOCALTAX, LOCALOFFSET, PREPAYDAY, DEPARTID, DEPARTNAME, SALESID, CASHPAYSTYLEID, CASHPAYSTYLENAME, CASHPAY, ADDRID, CUSTADDRESS, PRICEFTAX, MAKER, PERMITTER, SUMDIST, REMARK, MAKERSIGN, PERMITTERSIGN, CALLAMT, PERMITTERSTATE)
values ('20181202001', '销售出库表', 5666.22, 56, 15, 5, '8', '销售订单', 'W005', '默默仓', to_date('02-12-2018', 'dd-mm-yyyy'), '1', '002', null, null, '哇哈哈', '001', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '002', '长沙岳麓区', 0, '户口', '唔阿卡拉', null, '啦啦啦', null, null, null, 1);
commit;
--prompt 9 records loaded
--prompt Loading SALESOUTLETDETAILED...
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('263.85477', 'Thu Dec 06 00:00:00 CST 2018001', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('428.00443', '2018120601', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('297.80347', '20181206001', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('298.80347', '20181206001', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('672.18024', '20181206001', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('673.18024', '20181206001', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('883.78894', '20181206002', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('884.78894', '20181206002', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('815.04816', '20181206003', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('816.04816', '20181206003', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('689.43665', '20181206004', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('566.29834', '20181206005', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('567.29834', '20181206005', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('242.01128', '20181208001', 'WO2', null, null, 20, null, null, null, null, null, null, null, null, null, '唐人神香肠', '根', null, null, null, null, null, null, null, null, 0, null, 20, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('243.01128', '20181208001', 'W01', null, null, 325.25, null, null, null, null, null, null, null, null, null, '女士连衣裙', 'M', null, null, null, null, null, null, null, null, 0, null, 325.25, 0, null, null, null, null, null);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('001', '20181203001', '201811001', null, '1', 566.22, null, null, null, null, null, null, null, 1, null, '笔记本电脑', null, null, '2', '成品仓', '销售订单', '20181129001', 17, null, null, 5666.66, null, 666.66, 15, null, 650, null, 7500.26, 1500);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('002', '20181203001', '201811002', null, '1', 566.22, null, null, null, null, null, null, null, 1, null, '联想笔记本电脑', null, null, '2', '成品仓', '销售订单', '20181129001', 17, null, null, 5500.66, null, 666.66, 15, null, 650, null, 7200.26, 1500);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('003', '20181202001', '201811003', null, '1', 566.22, null, null, null, null, null, null, null, 1, null, '话说笔记本', null, null, '1', '原料仓', '销售订单', '20181129001', 17, null, null, 5500.66, null, 666.66, 15, null, 650, null, 7200.26, 1500);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('004', '20181202001', '201811004', null, '1', 566.22, null, null, null, null, null, null, null, 1, null, '宏基笔记本', null, null, '1', '原料仓', '销售订单', '20181129001', 17, null, null, 5500.66, null, 666.66, 15, null, 650, null, 7200.26, 1500);
insert into SALESOUTLETDETAILED (SERNO, BILLNO, PRODID, BARCODEID, PRODCURRID, SUGGESTPRICE, SALESPRICEA, SALESPRICEB, SALESPRICEC, SALESPRICED, SALESPRICEE, STDPRICE, BUSITAXRATE, MAJORSUPPLIER, UNITNAME, PRODNAME, PRODSIZE, MLAMOUNT, WAREID, WARENAME, TRANTYPE, FROMNO, TAXRATE, TAXAMT, DISCOUNT, AMOUNT, ITEMREMARK, SPRICE, SQUANTITY, MLTAXAMT, OLDPRICE, ISGIFT, AMOUNTATAX, MLAMOUNTATAX)
values ('005', '20181205001', '201812001', null, '1', 788.25, null, null, null, null, null, null, null, 1, null, '联想手机', null, null, '1', '原料仓', '销售订单', '20181129002', 17, null, null, 3200, null, 566.66, 15, null, 550, null, 5600.56, 1500);
commit;
--prompt 20 records loaded
--prompt Loading SALES_QUOTATION_DETAILS...
insert into SALES_QUOTATION_DETAILS (BILLNOID, BILLNO, XSNAME, PRODID, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, VFTOTAL, ISGIFT, ITEMREMARK)
values (1, '20181205001', '销售报价', 'WO1', null, '个', 10, 200, .17, 234, 234, .17, 234, null, null);
insert into SALES_QUOTATION_DETAILS (BILLNOID, BILLNO, XSNAME, PRODID, PRODSIZE, SUNIT, SQUANTITY, OLDPRICE, DISCOUNT, SPRICE, AMOUNT, TAXRATE, VFTOTAL, ISGIFT, ITEMREMARK)
values (2, '20181205001', '销售报价', 'WO2', null, '个', 10, 100, .17, 234, 234, .17, 234, null, null);
commit;
--prompt 2 records loaded
--prompt Loading SALES_QUOTATION_SHEET...
insert into SALES_QUOTATION_SHEET (BILLNO, XSNAME, FORMALCUST, BILLDATE, CUSTADDRESS, VALIDDATE, CURRID, PRICEOFTAX, SALESID, DEPARTID, MAKER, PARMITTER, AUDIT_STATUS)
values ('20181205001', '销售报价', '娃哈哈', to_date('05-12-2018 07:42:39', 'dd-mm-yyyy hh24:mi:ss'), '湖南', to_date('12-12-2018 07:42:55', 'dd-mm-yyyy hh24:mi:ss'), 'RMB', 0, '刘直销', '销售部', '张三', '李四', 0);
commit;
--prompt 1 records loaded
--prompt Loading SALES_RETURNS...
insert into SALES_RETURNS (BILLNO, BILLDATE, ADDRID, PRICEOFTAX, CURRID, WARENAME, EXCHRATE, ISDEDUCT, DUETO, SALESNAME, MAKER, DEPARTNAME, PERMITTER, TRANTYPE, AUDITEDSTATE)
values ('20181130001', to_date('30-11-2018', 'dd-mm-yyyy'), '株洲健坤北大青鸟', 1, '人民币', '青鸟仓库', 1, 1, '株洲大为实业', '牛直销', 'Admin', '直销部', 'Admin', '销售出库单', 1);
insert into SALES_RETURNS (BILLNO, BILLDATE, ADDRID, PRICEOFTAX, CURRID, WARENAME, EXCHRATE, ISDEDUCT, DUETO, SALESNAME, MAKER, DEPARTNAME, PERMITTER, TRANTYPE, AUDITEDSTATE)
values ('20181130002', to_date('12-12-2018', 'dd-mm-yyyy'), '健坤北大青鸟', 1, '人民币', '青鸟仓库', 1, 1, '株洲大为实业', '狗直销', 'Admin', '直销部', 'Admin', '销售出库单', 1);
commit;
--prompt 2 records loaded
--prompt Loading SALES_RETURNS_DETAILS...
--prompt Table is empty
--prompt Loading SUPPLIERCUSTOMER...
--prompt Table is empty
--prompt Loading T_ADDRESS...
insert into T_ADDRESS (ADDRESSID, SUPID, ADDRESS, YZCODE, LXR, LXRJOB, CZPHONE, XZPATH, BZ)
values ('1', '1', '1', '1', '1', '1', '1', '1', '1');
commit;
--prompt 1 records loaded
--prompt Loading T_CHECK_DETAIL...
insert into T_CHECK_DETAIL (CHECKDETAILID, MATERIELID, MATERIELNAME, SPECTYPE, UNITNAME, BOOKCOUNT, DETAILNUMBER, CHECKCOUNT, YINGKUICOUNT, PRICE, YINGKUIPRICE, PH, REASON)
values (1, '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, '1');
commit;
--prompt 1 records loaded
--prompt Loading T_DEPARTMENT...
insert into T_DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, DEPARTMENT_ENAME, REMARKS)
values ('1001', '销售部', 'xiaoshoubu', '这是销售部');
insert into T_DEPARTMENT (DEPARTMENT_ID, DEPARTMENT_NAME, DEPARTMENT_ENAME, REMARKS)
values ('1002', '采购部', 'caigoubu', '这是采购部');
commit;
--prompt 2 records loaded
--prompt Loading T_DOCUMENT_TYPE...
insert into T_DOCUMENT_TYPE (TYPEID, TOTAL_TYPE_NUMBER, SON_TYPE_NUMBER, TOTAL_TYPE_NAME, SON_TYPE_NAME, ENGLISH_NAME, REMARKS)
values ('1001', 1, 1, '采购', '采购订单', null, null);
insert into T_DOCUMENT_TYPE (TYPEID, TOTAL_TYPE_NUMBER, SON_TYPE_NUMBER, TOTAL_TYPE_NAME, SON_TYPE_NAME, ENGLISH_NAME, REMARKS)
values ('1002', 1, 1, '采购', '采购入库单', null, null);
insert into T_DOCUMENT_TYPE (TYPEID, TOTAL_TYPE_NUMBER, SON_TYPE_NUMBER, TOTAL_TYPE_NAME, SON_TYPE_NAME, ENGLISH_NAME, REMARKS)
values ('1003', 1, 1, '销售', '销售订单', null, null);
insert into T_DOCUMENT_TYPE (TYPEID, TOTAL_TYPE_NUMBER, SON_TYPE_NUMBER, TOTAL_TYPE_NAME, SON_TYPE_NAME, ENGLISH_NAME, REMARKS)
values ('1004', 1, 1, '销售', '销售出库单', null, null);
commit;
--prompt 4 records loaded
--prompt Loading T_GYS...
insert into T_GYS (SUPID, SUPACCOUNTBELONG, SUPALLNAME, SUPNAME, SUPTYPEID, SUPAREA, SUPCURRENCY, SUPALLENGLISH, SUPENGLISH, SUPLEADER, SUPTAXNUMBER, SUPPHONE1, SUPPHONE2, SUPPHONE3, SUPMOBPHONE, SUPBANKACCOUNT, SUPOPENBANK, SUPCAPITAL, SUPINDUSTRY, SUPEMAIL, SUPURL, SUPFAXPHONE, SUPSTARTPUT, SUPSTARTRETURN, SUPLATELYPUT, SUPLATELYRETURN, ISTAX, BREAKDATE, SUPCREDITLIMIT, SUPSURPLUSLIMIT, SUPPAYTERM, SUPPAYDATE, SALEID)
values ('1', '1', '1', '1', 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, '1', '1', '1', '1', to_date('29-11-2018', 'dd-mm-yyyy'), to_date('29-11-2018', 'dd-mm-yyyy'), to_date('29-11-2018', 'dd-mm-yyyy'), to_date('29-11-2018', 'dd-mm-yyyy'), '0', to_date('29-11-2018', 'dd-mm-yyyy'), 1, 1, '1', 1, 1);
commit;
--prompt 1 records loaded
--prompt Loading T_KEHU...
insert into T_KEHU (CUSTOMERID, ACCOUNTASIGNMENT, CUSTOMERFLLNAE, CLASSID, CUSTOMERABREVIATION, RGION, ENGFLLNME, MOENYID, ENGABREVIATION, CRRENCY, BUSPRSONNEL, CONTACTS, TAXNMBER, CONTACTPHONE1, CAPITALAOUNT, CONTACTPHONE2, IDUSTRYTYPE, CONTACTPHONE3, EMAIL, PHONE, WEBSITE, BANKACOUNT, FAXNUMBER, BANKDEPOSIT, FOLDINGNUMBER, PRICELEVEL, TAXINCLUDED, DATECREATION, STOPTRADINGDAY, AMOUNTACCOUNT, SURPLUSAMOUNT, CONDITIONSCOLLECTION, DAYSCOLLECTION, MONTHLYCLOSINGDATE, CREDITRATING, ACCOUNTSRECEIVABLE, INITIALCOLLECTION, INITIALRECEIVABLES, FINALSALE, FINALACCRECEIVABLE, PREPAIDSUBJECT, SEIFDEFININGCOLUMN1, SEIFDEFININGCOLUMN2, REMARKS)
values ('1', null, '哇哈哈', 3, '哈哈', '湖南', 'WaHaHa', null, 'HaHa', null, null, null, null, '123432142', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
insert into T_KEHU (CUSTOMERID, ACCOUNTASIGNMENT, CUSTOMERFLLNAE, CLASSID, CUSTOMERABREVIATION, RGION, ENGFLLNME, MOENYID, ENGABREVIATION, CRRENCY, BUSPRSONNEL, CONTACTS, TAXNMBER, CONTACTPHONE1, CAPITALAOUNT, CONTACTPHONE2, IDUSTRYTYPE, CONTACTPHONE3, EMAIL, PHONE, WEBSITE, BANKACOUNT, FAXNUMBER, BANKDEPOSIT, FOLDINGNUMBER, PRICELEVEL, TAXINCLUDED, DATECREATION, STOPTRADINGDAY, AMOUNTACCOUNT, SURPLUSAMOUNT, CONDITIONSCOLLECTION, DAYSCOLLECTION, MONTHLYCLOSINGDATE, CREDITRATING, ACCOUNTSRECEIVABLE, INITIALCOLLECTION, INITIALRECEIVABLES, FINALSALE, FINALACCRECEIVABLE, PREPAIDSUBJECT, SEIFDEFININGCOLUMN1, SEIFDEFININGCOLUMN2, REMARKS)
values ('2', null, '唐人神', 3, '香肠', '湖南', ' TangRenShen', null, 'CHang', null, null, null, null, '12321312', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
--prompt 2 records loaded
--prompt Loading T_PERSONNEL...
insert into T_PERSONNEL (PERSONNEL_ID, PERSONNEL_NAME, PERSONNEL_ENAME, DEPARTMENT_ID, DEPARTMENT_NAME, PERSONNEL_SEX, IDNUMBER, DATE_OF_BIRTH, POLITICAL_OUTLOOK, MARITAL_STATUS, DATE_OF_ENTRY_RUZHI, BLOOD_TYPE, DATE_OF_CORRECTION, NATIVE_PLACE, PROBATION_PERIOD, NATIONALITY, LEAVEDATE, NATION, TECHNICAL_TITLE, CHINESE_DUTY, ENGLISH_DUTY, CONTACT_ZIP_CODE, CONTACT_ADDRESS, CONTACT_NUMBER, MOBILE_PHONE, EDUCATION, DUE_DATE, ACADEMIC_DEGREE, DATE_OF_ENTRY_RUJING, GRADUATE_SCHOOL, PASSPORT_NUMBER, MAJOR_STUDIED, CONTRACT_START_DATE, FOREIGN_LANGUAGE_PROFICIENCY, CONTRACT_END_DATE, TJRQ, HTQCN, HTQCY, DZYJ, XDH, HJDH, XYB, HJYB, XZZ, HJDZ, JJLXR, JTDH, JJLXYB, JTYB, JJLXDH, JTZZ, JJLXDZ)
values ('1001', '小亲亲', null, 1001, '采购部', 0, '430204199912291234', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
commit;
--prompt 1 records loaded
--prompt Loading T_PURCHASE_STORAGE_DETAILED...
insert into T_PURCHASE_STORAGE_DETAILED (ID, DOCUMENT_ID, DOCUMENT_NAME, COLUMN_NUMBER, MATERIEL_ID, MATERIEL_NAME, SPECIFICATION_TYPE, UNIT_NAME, MATERIEL_NUMBER, UNIT_PRICE_BEFORE_DISCOUNT, FOLDING_NUMBER, UNIT_PRICE, AMOUNT_OF_MONEY, TAX_RATE, TAX_AMOUNT, IS_TAX_AMOUNT, BATCH_NUMBER, GIFT, ENTRY_NOTES, SOURCE_LIST, SOURCE_NUMBER, COST_SHARING)
values ('1', '20181203001', '采购入库单', 1, '1001', '鬼知道1', null, null, 5, 10, 100, 10, 50, .16, 8, 8, 0, 0, null, null, null, 0);
insert into T_PURCHASE_STORAGE_DETAILED (ID, DOCUMENT_ID, DOCUMENT_NAME, COLUMN_NUMBER, MATERIEL_ID, MATERIEL_NAME, SPECIFICATION_TYPE, UNIT_NAME, MATERIEL_NUMBER, UNIT_PRICE_BEFORE_DISCOUNT, FOLDING_NUMBER, UNIT_PRICE, AMOUNT_OF_MONEY, TAX_RATE, TAX_AMOUNT, IS_TAX_AMOUNT, BATCH_NUMBER, GIFT, ENTRY_NOTES, SOURCE_LIST, SOURCE_NUMBER, COST_SHARING)
values ('2', '20181203001', '采购入库单', 2, '1002', '鬼知道2', null, null, 15, 20, 100, 20, 150, .16, null, null, null, null, null, null, null, null);
commit;
--prompt 2 records loaded
--prompt Loading T_PURCHASE_STORAGE_MAIN...
insert into T_PURCHASE_STORAGE_MAIN (DOCUMENT_ID, DOCUMENT_NAME, DOCUMENT_DATE, SUPPLIER_ID, SUPPLIER_NAME, SUPPLIER_ADDRESS, DOCUMENT_TYPE_ID, CURRENCY, EXCHANGE_RATE, WAREHOUSE_ID, WAREHOUSE_NAME, IS_TAX, TOTAL_NUMBER, TOTAL_SUM, AGGREGATE_TAX, TOTAL_IS_TAX, AGGREGATE_COST_SHARING, REMARKS, PURCHASING_PERSONNEL_NUM, ORDER_MAKER_NUM, SUBORDINATE_DEPARTMENTS, REVIEWER_NUM, AUDIT_STATUS)
values ('20181203001', '采购入库单', to_date('03-12-2018 10:47:56', 'dd-mm-yyyy hh24:mi:ss'), 1001, '随便一个名字', '五里墩', ' 1002', 'RMB', 1, ' 1001', '鬼知道', 0, null, null, null, null, null, null, '1001', '1001', '1001', '1001', 0);
commit;
--prompt 1 records loaded
--prompt Loading T_REQUISITION_DETAIL...
insert into T_REQUISITION_DETAIL (COLNUMBER, MATERIELID, MATERIELNAME, SPECTYPE, UNITNAME, DETAILNUMBEL, CURRENCY, STANDPRICE, STANDPRICEAMOUNT, ENDCURRENCY, ENDSTANDPRICE, ENDSTANDPRICEAMOUNT, DEMANDDATE, PROPOSALDATE, NOTPURCHASE, REMARKS, SOURCENAME, SOURCEID, BILLNO)
values (1, '200000', '物料名称', '1', '1', 1, '1', 1, 1, '1', 1, 1, to_date('29-11-2018', 'dd-mm-yyyy'), to_date('29-11-2018', 'dd-mm-yyyy'), 1, '1', '1', '1', '2000');
insert into T_REQUISITION_DETAIL (COLNUMBER, MATERIELID, MATERIELNAME, SPECTYPE, UNITNAME, DETAILNUMBEL, CURRENCY, STANDPRICE, STANDPRICEAMOUNT, ENDCURRENCY, ENDSTANDPRICE, ENDSTANDPRICEAMOUNT, DEMANDDATE, PROPOSALDATE, NOTPURCHASE, REMARKS, SOURCENAME, SOURCEID, BILLNO)
values (2, '20000', 'dwqdwq', '1', '1', 1, '1', 1, 1, '1', 1, 1, to_date('10-11-2018 21:46:33', 'dd-mm-yyyy hh24:mi:ss'), to_date('01-01-1970', 'dd-mm-yyyy'), 1, '1', '1', '1', '2000');
commit;
--prompt 2 records loaded
--prompt Loading T_SHARE...
insert into T_SHARE (CG_FT_ID, BILLDATE, BILLNO, ASSIGNSTYLE, MEKER, PERMITTER, CG_FTJG_ID, CG_FTMX_ID, MLAMOUNT, CG_RK_ID, AUDITSTATUS)
values (2, to_date('30-11-2018', 'dd-mm-yyyy'), '20181130002', 0, '鲜唐', '鲜唐', 2, 2, 100, 1, 0);
insert into T_SHARE (CG_FT_ID, BILLDATE, BILLNO, ASSIGNSTYLE, MEKER, PERMITTER, CG_FTJG_ID, CG_FTMX_ID, MLAMOUNT, CG_RK_ID, AUDITSTATUS)
values (3, to_date('30-11-2018', 'dd-mm-yyyy'), '20181130003', 0, '鲜唐', '鲜唐', 3, 3, 100, 1, 0);
insert into T_SHARE (CG_FT_ID, BILLDATE, BILLNO, ASSIGNSTYLE, MEKER, PERMITTER, CG_FTJG_ID, CG_FTMX_ID, MLAMOUNT, CG_RK_ID, AUDITSTATUS)
values (1, to_date('30-11-2018', 'dd-mm-yyyy'), '20181130001', 0, '唐鲜', '唐鲜', 1, 1, 100, 1, 0);
commit;
--prompt 3 records loaded
--prompt Loading T_SHARE_DETAIL...
insert into T_SHARE_DETAIL (CG_FTMX_ID, FEECLASSID, FARECLASSNAME, CURRID, EXCHRATE, AMOUNT, MLAMOUNT)
values (2, 2, '邮费', '人民币', 1, 100, 100);
insert into T_SHARE_DETAIL (CG_FTMX_ID, FEECLASSID, FARECLASSNAME, CURRID, EXCHRATE, AMOUNT, MLAMOUNT)
values (1, 1, '运费', '人民币', 1, 100, 100);
commit;
--prompt 2 records loaded
--prompt Loading T_SHARE_RESULT...
insert into T_SHARE_RESULT (CG_FTJG_ID, FROMNO, PRODID, PRODNAME, PRODSIZE, VAMOUNT, VQUANTITY, SUNIT, MLAMOUNT)
values (1, '20181130001', '20000811', 'lzkbb', '20kg', 2000, 1, 'KG', 100);
insert into T_SHARE_RESULT (CG_FTJG_ID, FROMNO, PRODID, PRODNAME, PRODSIZE, VAMOUNT, VQUANTITY, SUNIT, MLAMOUNT)
values (2, '20181130002', '20000811', 'lzkbb', '40kg', 4000, 1, 'KG', 200);
commit;
--prompt 2 records loaded
--prompt Loading WAREHOUSEINFO...
insert into WAREHOUSEINFO (WAREHOUSEID, WAREHOUSENAME, SHOTNAME, ENGNAME, LINKMAN, LINKPHONE, WAREHOUSEADDRESS, MEMO)
values ('W001', '东南仓', 'dongnan', 'dnc', '小红', '1620462452', '公司东南仓', '位置东南');
insert into WAREHOUSEINFO (WAREHOUSEID, WAREHOUSENAME, SHOTNAME, ENGNAME, LINKMAN, LINKPHONE, WAREHOUSEADDRESS, MEMO)
values ('W005', '默默仓', '西北东南的西北东南角', '仓库2222', '默默默默默默默默默默', '小李', '17520135465', 'mmmmm');
commit;
--prompt 2 records loaded
--prompt Loading YUSHOUCHONGDETAIL_TABLE...
--prompt Table is empty
--prompt Loading YUSHOUCHONG_TABLE...
--prompt Table is empty
--prompt Loading YUSHOUDETAILS_INTFACE...
--prompt Table is empty
--prompt Loading YUSHOUDETAILS_TABLE...
insert into YUSHOUDETAILS_TABLE (BILLTYPE, FROMORDERNO, FROMDESCRIPTTION, LOCALUSERMONEY, PREPAYLEFT, DEPARTNAME, DEPARID, ORIGINNO, SYSID, SFSH)
values ('腾讯单别', 'A3001', null, 0, 3100, '销售部', '1005', to_date('01-01-1970', 'dd-mm-yyyy'), '阿德敏', 0);
insert into YUSHOUDETAILS_TABLE (BILLTYPE, FROMORDERNO, FROMDESCRIPTTION, LOCALUSERMONEY, PREPAYLEFT, DEPARTNAME, DEPARID, ORIGINNO, SYSID, SFSH)
values ('未知单别', 'A1001', null, 0, 500, '销售部', '1005', to_date('05-12-2018 01:36:16', 'dd-mm-yyyy hh24:mi:ss'), 'admin', 0);
insert into YUSHOUDETAILS_TABLE (BILLTYPE, FROMORDERNO, FROMDESCRIPTTION, LOCALUSERMONEY, PREPAYLEFT, DEPARTNAME, DEPARID, ORIGINNO, SYSID, SFSH)
values ('阿斯顿单别', 'A2001', null, 0, 1500, '销售部', '1005', to_date('05-12-2018 01:37:08', 'dd-mm-yyyy hh24:mi:ss'), '阿德敏', 0);
commit;
--prompt 3 records loaded
--prompt Loading YUSHOU_TABLE...
insert into YUSHOU_TABLE (CUSTOMERID, FUNDBILLDATE, BILLTYPENAME, FUNDBILLID, CURRID, EXCHRATE, DISCOUNTPER, ACCMONTHTOMONTH, CASHSTYLEID, CASHSTYLENAME, VISASTYLEID, VISASTYLENAME, OTHERPAYSTYLEID, OTHERPAYSTYLENAME, DEPTFROM, PROJECTFROM, MAKER, PERMITTER, SFSH, CUSTOMERNAME)
values ('1001', to_date('05-12-2018 01:28:55', 'dd-mm-yyyy hh24:mi:ss'), '不好吃', 'A1001', '人民币', 17, .17, to_date('30-12-2018', 'dd-mm-yyyy'), '500', '转账', '0', '现金', '0', '汇款', '销售部', '建坤大厦', 'admin', 'admin', 0, '建坤集团1');
insert into YUSHOU_TABLE (CUSTOMERID, FUNDBILLDATE, BILLTYPENAME, FUNDBILLID, CURRID, EXCHRATE, DISCOUNTPER, ACCMONTHTOMONTH, CASHSTYLEID, CASHSTYLENAME, VISASTYLEID, VISASTYLENAME, OTHERPAYSTYLEID, OTHERPAYSTYLENAME, DEPTFROM, PROJECTFROM, MAKER, PERMITTER, SFSH, CUSTOMERNAME)
values ('1002', to_date('05-12-2018 01:33:46', 'dd-mm-yyyy hh24:mi:ss'), '很好吃', 'A2001', '人民币', 17, .17, to_date('09-12-2018 01:34:14', 'dd-mm-yyyy hh24:mi:ss'), '500', '转账', '1000', '现金', '0', '汇款', '销售部', '大师大厦', '阿德敏', '阿德敏', 0, '大师集团');
insert into YUSHOU_TABLE (CUSTOMERID, FUNDBILLDATE, BILLTYPENAME, FUNDBILLID, CURRID, EXCHRATE, DISCOUNTPER, ACCMONTHTOMONTH, CASHSTYLEID, CASHSTYLENAME, VISASTYLEID, VISASTYLENAME, OTHERPAYSTYLEID, OTHERPAYSTYLENAME, DEPTFROM, PROJECTFROM, MAKER, PERMITTER, SFSH, CUSTOMERNAME)
values ('1003', to_date('05-12-2018 07:35:46', 'dd-mm-yyyy hh24:mi:ss'), '333', 'A3001', '人民币', 17, .1, to_date('01-01-1970', 'dd-mm-yyyy'), '100', '微信支付', '3000', '支付宝支付', '0', '汇款', '销售部', '腾讯', '阿德敏', '阿德敏', 1, '腾讯集团');
commit;
--prompt 3 records loaded
--prompt Enabling triggers for ADVANCECHARGE...
alter table ADVANCECHARGE enable all triggers;
--prompt Enabling triggers for ADVANCECHARGEDETAILED...
alter table ADVANCECHARGEDETAILED enable all triggers;
--prompt Enabling triggers for ALLOCATION_DETAILS...
alter table ALLOCATION_DETAILS enable all triggers;
--prompt Enabling triggers for ALLOCATION_FORM...
alter table ALLOCATION_FORM enable all triggers;
--prompt Enabling triggers for CUSTOMER_ACCOUNT_DETAILS...
alter table CUSTOMER_ACCOUNT_DETAILS enable all triggers;
--prompt Enabling triggers for CUSTOMER_TYPE...
alter table CUSTOMER_TYPE enable all triggers;
--prompt Enabling triggers for KEHUDETAIL_TABLE...
alter table KEHUDETAIL_TABLE enable all triggers;
--prompt Enabling triggers for LEDGER...
alter table LEDGER enable all triggers;
--prompt Enabling triggers for LEDGERS...
alter table LEDGERS enable all triggers;
--prompt Enabling triggers for MARKET...
alter table MARKET enable all triggers;
--prompt Enabling triggers for MARKETS...
alter table MARKETS enable all triggers;
--prompt Enabling triggers for MATERIALMASTERFILE...
alter table MATERIALMASTERFILE enable all triggers;
--prompt Enabling triggers for MATERIELTYPE...
alter table MATERIELTYPE enable all triggers;
--prompt Enabling triggers for PREPAIDBILLSPAYABLE...
alter table PREPAIDBILLSPAYABLE enable all triggers;
--prompt Enabling triggers for PREPAIDBILLSPAYABLEPREPAYMENT...
alter table PREPAIDBILLSPAYABLEPREPAYMENT enable all triggers;
--prompt Enabling triggers for PREPAYMENTANDRUSHPAYABLE...
alter table PREPAYMENTANDRUSHPAYABLE enable all triggers;
--prompt Enabling triggers for PURCHASE_DETAILS...
alter table PURCHASE_DETAILS enable all triggers;
--prompt Enabling triggers for PURCHASE_RETURN...
alter table PURCHASE_RETURN enable all triggers;
--prompt Enabling triggers for PUR_ENQUIRY...
alter table PUR_ENQUIRY enable all triggers;
--prompt Enabling triggers for PUR_ENQUIRY_DETAIL...
alter table PUR_ENQUIRY_DETAIL enable all triggers;
--prompt Enabling triggers for PUR_ORDER...
alter table PUR_ORDER enable all triggers;
--prompt Enabling triggers for PUR_ORDER_DETAIL...
alter table PUR_ORDER_DETAIL enable all triggers;
--prompt Enabling triggers for PUR_ORDER_STYLE...
alter table PUR_ORDER_STYLE enable all triggers;
--prompt Enabling triggers for READJUSTPRICE...
alter table READJUSTPRICE enable all triggers;
--prompt Enabling triggers for READJUSTPRICES...
alter table READJUSTPRICES enable all triggers;
--prompt Enabling triggers for SALESOUTLET...
alter table SALESOUTLET enable all triggers;
--prompt Enabling triggers for SALESOUTLETDETAILED...
alter table SALESOUTLETDETAILED enable all triggers;
--prompt Enabling triggers for SALES_QUOTATION_DETAILS...
alter table SALES_QUOTATION_DETAILS enable all triggers;
--prompt Enabling triggers for SALES_QUOTATION_SHEET...
alter table SALES_QUOTATION_SHEET enable all triggers;
--prompt Enabling triggers for SALES_RETURNS...
alter table SALES_RETURNS enable all triggers;
--prompt Enabling triggers for SALES_RETURNS_DETAILS...
alter table SALES_RETURNS_DETAILS enable all triggers;
--prompt Enabling triggers for SUPPLIERCUSTOMER...
alter table SUPPLIERCUSTOMER enable all triggers;
--prompt Enabling triggers for T_ADDRESS...
alter table T_ADDRESS enable all triggers;
--prompt Enabling triggers for T_CHECK_DETAIL...
alter table T_CHECK_DETAIL enable all triggers;
--prompt Enabling triggers for T_DEPARTMENT...
alter table T_DEPARTMENT enable all triggers;
--prompt Enabling triggers for T_DOCUMENT_TYPE...
alter table T_DOCUMENT_TYPE enable all triggers;
--prompt Enabling triggers for T_GYS...
alter table T_GYS enable all triggers;
--prompt Enabling triggers for T_KEHU...
alter table T_KEHU enable all triggers;
--prompt Enabling triggers for T_PERSONNEL...
alter table T_PERSONNEL enable all triggers;
--prompt Enabling triggers for T_PURCHASE_STORAGE_DETAILED...
alter table T_PURCHASE_STORAGE_DETAILED enable all triggers;
--prompt Enabling triggers for T_PURCHASE_STORAGE_MAIN...
alter table T_PURCHASE_STORAGE_MAIN enable all triggers;
--prompt Enabling triggers for T_REQUISITION_DETAIL...
alter table T_REQUISITION_DETAIL enable all triggers;
--prompt Enabling triggers for T_SHARE...
alter table T_SHARE enable all triggers;
--prompt Enabling triggers for T_SHARE_DETAIL...
alter table T_SHARE_DETAIL enable all triggers;
--prompt Enabling triggers for T_SHARE_RESULT...
alter table T_SHARE_RESULT enable all triggers;
--prompt Enabling triggers for WAREHOUSEINFO...
alter table WAREHOUSEINFO enable all triggers;
--prompt Enabling triggers for YUSHOUCHONGDETAIL_TABLE...
alter table YUSHOUCHONGDETAIL_TABLE enable all triggers;
--prompt Enabling triggers for YUSHOUCHONG_TABLE...
alter table YUSHOUCHONG_TABLE enable all triggers;
--prompt Enabling triggers for YUSHOUDETAILS_INTFACE...
alter table YUSHOUDETAILS_INTFACE enable all triggers;
--prompt Enabling triggers for YUSHOUDETAILS_TABLE...
alter table YUSHOUDETAILS_TABLE enable all triggers;
--prompt Enabling triggers for YUSHOU_TABLE...
alter table YUSHOU_TABLE enable all triggers;
--set feedback on
--set define on
--prompt Done.
