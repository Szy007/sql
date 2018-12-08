--prompt
--prompt Creating table ADVANCECHARGE
--prompt ============================
--prompt
create table SCOTT.ADVANCECHARGE
(
  OrderId         VARCHAR2(20) not null,
  AdvanceDate     DATE,
  CustomerId      NUMBER(9),
  SettlementOne   FLOAT,
  SettlementTwo   FLOAT,
  SettlementThree FLOAT,
  isAuditing      NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.ADVANCECHARGE
  add primary key (OrderId)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table ADVANCECHARGEDETAILED
--prompt ====================================
--prompt
create table SCOTT.ADVANCECHARGEDETAILED
(
  OrderId       VARCHAR2(20),
  LineId        INTEGER not null,
  AdvanceAmount FLOAT,
  SourceType    NUMBER(9),
  SourceOrder   VARCHAR2(20),
  abstracts     VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.ADVANCECHARGEDETAILED
  add primary key (LineId)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table ALLOCATION_DETAILS
--prompt =================================
--prompt
create table SCOTT.ALLOCATION_DETAILS
(
  MOVENO    VARCHAR2(20) not null,
  BILLNO    VARCHAR2(20) not null,
  PRODID    VARCHAR2(20) not null,
  PRODSIZE  VARCHAR2(20),
  SUNIT     VARCHAR2(20) not null,
  SQUANTITY NUMBER(9) not null,
  HAVEBATCH NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.ALLOCATION_DETAILS
  add constraint PK_ALLOCATION_DETAILS primary key (MOVENO, BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table ALLOCATION_FORM
--prompt ==============================
--prompt
create table SCOTT.ALLOCATION_FORM
(
  MOVENO       VARCHAR2(20) not null,
  MOVEDATA     DATE,
  WAREOUTNAME  VARCHAR2(20),
  WARENAME     VARCHAR2(20),
  MAKER        VARCHAR2(20),
  PERMITTER    VARCHAR2(20),
  AUDIT_STATUS NUMBER(9) default '0'
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.ALLOCATION_FORM
  add primary key (MOVENO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table CUSTOMER_ACCOUNT_DETAILS
--prompt =======================================
--prompt
create table SCOTT.CUSTOMER_ACCOUNT_DETAILS
(
  CUSTOMERID     NUMBER(9) not null,
  SOURCELISTTYPE NUMBER(9),
  SOURCELISTID   VARCHAR2(50),
  CUSTOMERIDS    NUMBER(9),
  Time           DATE,
  PRICE          FLOAT,
  CURRENTAMOUNT  FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.CUSTOMER_ACCOUNT_DETAILS
  add primary key (CUSTOMERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table CUSTOMER_TYPE
--prompt ============================
--prompt
create table SCOTT.CUSTOMER_TYPE
(
  CLASSID   NUMBER(9) not null,
  CLASSNAME VARCHAR2(50),
  ENGNAME   VARCHAR2(50),
  MEMO      VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.CUSTOMER_TYPE
  add primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table KEHUDETAIL_TABLE
--prompt ===============================
--prompt
create table SCOTT.KEHUDETAIL_TABLE
(
  BILLTYPE         VARCHAR2(20),
  FROMORDERNO      VARCHAR2(20) not null,
  CUSTOMERID       VARCHAR2(20),
  CUSTOMERNAME     INTEGER,
  FUNDBILLDATE     DATE,
  NOWLEFT          FLOAT,
  TOTAL            FLOAT,
  FUNDSATTRIBUTION VARCHAR2(20),
  CLASSID          VARCHAR2(20),
  AREAID           VARCHAR2(20),
  CURRID           VARCHAR2(20),
  SFSH             NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.KEHUDETAIL_TABLE
  add primary key (FROMORDERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table LEDGER
--prompt =====================
--prompt
create table SCOTT.LEDGER
(
  WAREHOUSEID VARCHAR2(20) not null,
  PRODID      VARCHAR2(20) not null,
  Num         NUMBER(9) not null,
  PRICE       FLOAT not null,
  JPRICE      FLOAT not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.LEDGER
  add primary key (WAREHOUSEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table LEDGERS
--prompt ======================
--prompt
create table SCOTT.LEDGERS
(
  DOCUMENTSCLASS VARCHAR2(20),
  BILLNO         VARCHAR2(20) not null,
  LINEID         NUMBER(9) not null,
  WAREHOUSEID    VARCHAR2(20) not null,
  PRODID         VARCHAR2(20) not null,
  Num            NUMBER(9) not null,
  PRICE          FLOAT not null,
  JPRICE         FLOAT not null,
  Date           DATE not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.LEDGERS
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table MARKET
--prompt =====================
--prompt
create table SCOTT.MARKET
(
  BILLNO      VARCHAR2(20) not null,
  BILLDATE    DATE not null,
  CUSTOMERID  VARCHAR2(20) not null,
  ADDRESSID   VARCHAR2(20),
  BILLSTYLEID VARCHAR2(20),
  CUSTBILLNO  VARCHAR2(20),
  PRICEOFTAX  NUMBER(9),
  CURRID      NUMBER(9) not null,
  BILLSTATUS  NUMBER(9),
  EXCHRATE    FLOAT not null,
  SALESID     VARCHAR2(20) not null,
  MAKER       VARCHAR2(20) not null,
  DEPARDTID   VARCHAR2(20) not null,
  PERMITTER   VARCHAR2(20) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.MARKET
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table MARKETS
--prompt ======================
--prompt
create table SCOTT.MARKETS
(
  BILLNO      VARCHAR2(20) not null,
  PRODID      VARCHAR2(100),
  SUMQTY      NUMBER(9),
  SUMBTAXAMT  FLOAT,
  SUMTAX      FLOAT,
  SUMAMTATAX  FLOAT,
  PREOUTBOUND DATE,
  Number      NUMBER(9),
  GIFTS       NUMBER(9),
  NOTE        VARCHAR2(200),
  Single      VARCHAR2(20),
  Order       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.MARKETS
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table MATERIALMASTERFILE
--prompt =================================
--prompt
create table SCOTT.MATERIALMASTERFILE
(
  PRODID         VARCHAR2(20) not null,
  CLASSID        VARCHAR2(20) not null,
  PRODNAME       VARCHAR2(50) not null,
  STDUNITID      VARCHAR2(20),
  PRODSIZE       VARCHAR2(20),
  ENGNAME        VARCHAR2(20),
  BARCODEID      VARCHAR2(20),
  SUGGESTPRICE   FLOAT,
  SALESPRICEA    FLOAT,
  SALESPRICEB    FLOAT,
  SALESPRICEC    FLOAT,
  SALESPRICED    FLOAT,
  SALESPRICEE    FLOAT,
  STDPRICE       FLOAT,
  CURRID         VARCHAR2(20),
  PRODFORM       NUMBER(9),
  PRICEOFTAX     NUMBER(9),
  BUSITAXRATE    FLOAT,
  TAXITEMSID     FLOAT,
  ADVANCEDAYS    VARCHAR2(20),
  MAJORSUPPLIER  VARCHAR2(20),
  BATCHUSED      NUMBER(9),
  EFFECTDATEUSED DATE,
  VALIDDATEUSED  DATE,
  DEFVALIDDAY    NUMBER(9),
  SAFEQTY        NUMBER(9),
  BALLAMT        NUMBER(9),
  CSTDCOST       FLOAT,
  BAVGCOST       FLOAT,
  BTOTALCOST     FLOAT,
  CSAFEALLSTK    NUMBER(9),
  CAVGCOST       FLOAT,
  BSTDCOST       FLOAT,
  CTOTALCOST     FLOAT,
  PRODDESC       VARCHAR2(255),
  UDEF1          VARCHAR2(20),
  UDEF2          VARCHAR2(20),
  CALLAMT        NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.MATERIALMASTERFILE.PRODID
  is '物料编号';
comment on column SCOTT.MATERIALMASTERFILE.CLASSID
  is '物料类别';
comment on column SCOTT.MATERIALMASTERFILE.PRODNAME
  is '物料名称';
comment on column SCOTT.MATERIALMASTERFILE.STDUNITID
  is '计量单位';
comment on column SCOTT.MATERIALMASTERFILE.PRODSIZE
  is '规格型号';
comment on column SCOTT.MATERIALMASTERFILE.ENGNAME
  is '英文品名';
comment on column SCOTT.MATERIALMASTERFILE.BARCODEID
  is '条形码编号';
comment on column SCOTT.MATERIALMASTERFILE.SUGGESTPRICE
  is '建议售价';
comment on column SCOTT.MATERIALMASTERFILE.SALESPRICEA
  is '售价A';
comment on column SCOTT.MATERIALMASTERFILE.SALESPRICEB
  is '售价B';
comment on column SCOTT.MATERIALMASTERFILE.SALESPRICEC
  is '售价C';
comment on column SCOTT.MATERIALMASTERFILE.SALESPRICED
  is '售价D';
comment on column SCOTT.MATERIALMASTERFILE.SALESPRICEE
  is '售价E';
comment on column SCOTT.MATERIALMASTERFILE.STDPRICE
  is '标准进价';
comment on column SCOTT.MATERIALMASTERFILE.CURRID
  is '使用币别';
comment on column SCOTT.MATERIALMASTERFILE.PRODFORM
  is '物料形态';
comment on column SCOTT.MATERIALMASTERFILE.PRICEOFTAX
  is '单价是否含税';
comment on column SCOTT.MATERIALMASTERFILE.BUSITAXRATE
  is '税率';
comment on column SCOTT.MATERIALMASTERFILE.TAXITEMSID
  is '税目';
comment on column SCOTT.MATERIALMASTERFILE.ADVANCEDAYS
  is '采购提前期';
comment on column SCOTT.MATERIALMASTERFILE.MAJORSUPPLIER
  is '主供应商';
comment on column SCOTT.MATERIALMASTERFILE.BATCHUSED
  is '使用批号管理';
comment on column SCOTT.MATERIALMASTERFILE.EFFECTDATEUSED
  is '使用出厂日期';
comment on column SCOTT.MATERIALMASTERFILE.VALIDDATEUSED
  is '使用有效日期';
comment on column SCOTT.MATERIALMASTERFILE.DEFVALIDDAY
  is '有效天数';
comment on column SCOTT.MATERIALMASTERFILE.SAFEQTY
  is '安全存量';
comment on column SCOTT.MATERIALMASTERFILE.BALLAMT
  is '期初总数量';
comment on column SCOTT.MATERIALMASTERFILE.CSTDCOST
  is '标准总成本';
comment on column SCOTT.MATERIALMASTERFILE.BAVGCOST
  is '平均成本';
comment on column SCOTT.MATERIALMASTERFILE.BTOTALCOST
  is '期初总成本';
comment on column SCOTT.MATERIALMASTERFILE.CSAFEALLSTK
  is '低于安全存量';
comment on column SCOTT.MATERIALMASTERFILE.CAVGCOST
  is '现行平均成本';
comment on column SCOTT.MATERIALMASTERFILE.BSTDCOST
  is '标准成本';
comment on column SCOTT.MATERIALMASTERFILE.CTOTALCOST
  is '物料总成本';
comment on column SCOTT.MATERIALMASTERFILE.PRODDESC
  is '物料说明';
comment on column SCOTT.MATERIALMASTERFILE.UDEF1
  is '自定义栏1';
comment on column SCOTT.MATERIALMASTERFILE.UDEF2
  is '自定义栏2';
comment on column SCOTT.MATERIALMASTERFILE.CALLAMT
  is '现有总数量';
alter table SCOTT.MATERIALMASTERFILE
  add primary key (PRODID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table MATERIELTYPE
--prompt ===========================
--prompt
create table SCOTT.MATERIELTYPE
(
  CLASSID        VARCHAR2(20) not null,
  CLASSNAME      VARCHAR2(50) not null,
  ENGNAME        VARCHAR2(50),
  ACCINVENTORYID VARCHAR2(20),
  ACCSALEID      VARCHAR2(20),
  ACCSALECOSTID  VARCHAR2(20),
  SENDOUTWAREID  VARCHAR2(20),
  GIFTEXPENSEID  VARCHAR2(20),
  OTHERINCOMEID  VARCHAR2(20),
  OTHEREXPENSEID VARCHAR2(20),
  OTHERCOSTID    VARCHAR2(20),
  MEMO           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.MATERIELTYPE.CLASSID
  is '类别编号';
comment on column SCOTT.MATERIELTYPE.CLASSNAME
  is '类别名称';
comment on column SCOTT.MATERIELTYPE.ENGNAME
  is '英文名称';
comment on column SCOTT.MATERIELTYPE.ACCINVENTORYID
  is '存货科目';
comment on column SCOTT.MATERIELTYPE.ACCSALEID
  is '销售收入科目';
comment on column SCOTT.MATERIELTYPE.ACCSALECOSTID
  is '销售成本科目';
comment on column SCOTT.MATERIELTYPE.SENDOUTWAREID
  is '发出商品科目';
comment on column SCOTT.MATERIELTYPE.GIFTEXPENSEID
  is '赠品费用科目';
comment on column SCOTT.MATERIELTYPE.OTHERINCOMEID
  is '其他收入科目';
comment on column SCOTT.MATERIELTYPE.OTHEREXPENSEID
  is '其它费用科目';
comment on column SCOTT.MATERIELTYPE.OTHERCOSTID
  is '其它成本科目';
comment on column SCOTT.MATERIELTYPE.MEMO
  is '备注';
alter table SCOTT.MATERIELTYPE
  add primary key (CLASSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PREPAIDBILLSPAYABLE
--prompt ==================================
--prompt
create table SCOTT.PREPAIDBILLSPAYABLE
(
  OrderId         VARCHAR2(20),
  AdvanceDate     DATE,
  CustomerId      NUMBER(9),
  SettlementOne   FLOAT,
  SettlementTwo   FLOAT,
  SettlementThree FLOAT,
  isAuditing      NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PREPAIDBILLSPAYABLEPREPAYMENT
--prompt ============================================
--prompt
create table SCOTT.PREPAIDBILLSPAYABLEPREPAYMENT
(
  OrderId             VARCHAR2(20),
  LineId              INTEGER not null,
  Payinadvancenumbers NUMBER(9),
  PayinadvanceLineid  NUMBER(9),
  Prepaidamount       FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PREPAIDBILLSPAYABLEPREPAYMENT
  add primary key (LineId)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PREPAYMENTANDRUSHPAYABLE
--prompt =======================================
--prompt
create table SCOTT.PREPAYMENTANDRUSHPAYABLE
(
  OrderId              VARCHAR2(20),
  LineId               INTEGER not null,
  SourceType           NUMBER(9),
  SourceOrder          VARCHAR2(20),
  Originalamount       FLOAT,
  Allowanceamount      FLOAT,
  Amountofmoneycharged FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PREPAYMENTANDRUSHPAYABLE
  add primary key (LineId)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PURCHASE_DETAILS
--prompt ===============================
--prompt
create table SCOTT.PURCHASE_DETAILS
(
  DOCUMENTID    VARCHAR2(20) not null,
  COLUMNID      NUMBER(9) not null,
  MATERIALID    VARCHAR2(20) not null,
  MATERIALNAME  VARCHAR2(20) not null,
  SPECIFICATION VARCHAR2(20) not null,
  UNITNAME      VARCHAR2(20) not null,
  QUANTITY      NUMBER(9) not null,
  DISCOUNTPRICE FLOAT not null,
  FOLDNUMBER    VARCHAR2(20) not null,
  EXCHANGERATE  FLOAT not null,
  AMOUNT        FLOAT not null,
  TAXRATE       FLOAT not null,
  TAXAMT        FLOAT not null,
  AMOUNTATAX    FLOAT not null,
  BATCHID       NUMBER(9) not null,
  ISGIFT        NUMBER(9) not null,
  HASINV        NUMBER(9) not null,
  NOTINVCOUN    NUMBER(9) not null,
  ITEMREMARK    VARCHAR2(255) not null,
  TRANTYPE      VARCHAR2(20) not null,
  FROMNO        VARCHAR2(20) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.PURCHASE_DETAILS.DOCUMENTID
  is '单据号码';
comment on column SCOTT.PURCHASE_DETAILS.COLUMNID
  is '栏号';
comment on column SCOTT.PURCHASE_DETAILS.MATERIALID
  is '物料编号';
comment on column SCOTT.PURCHASE_DETAILS.MATERIALNAME
  is '物料名称';
comment on column SCOTT.PURCHASE_DETAILS.SPECIFICATION
  is '规格型号';
comment on column SCOTT.PURCHASE_DETAILS.UNITNAME
  is '单位名称';
comment on column SCOTT.PURCHASE_DETAILS.QUANTITY
  is '数量';
comment on column SCOTT.PURCHASE_DETAILS.DISCOUNTPRICE
  is '折扣前单价';
comment on column SCOTT.PURCHASE_DETAILS.FOLDNUMBER
  is '折数';
comment on column SCOTT.PURCHASE_DETAILS.EXCHANGERATE
  is '单数';
comment on column SCOTT.PURCHASE_DETAILS.AMOUNT
  is '金额';
comment on column SCOTT.PURCHASE_DETAILS.TAXRATE
  is '税率';
comment on column SCOTT.PURCHASE_DETAILS.TAXAMT
  is '税额';
comment on column SCOTT.PURCHASE_DETAILS.AMOUNTATAX
  is '含税金额';
comment on column SCOTT.PURCHASE_DETAILS.BATCHID
  is '批号(0/1)';
comment on column SCOTT.PURCHASE_DETAILS.ISGIFT
  is '赠品(0/1)';
comment on column SCOTT.PURCHASE_DETAILS.HASINV
  is '发票明细(0/1)';
comment on column SCOTT.PURCHASE_DETAILS.NOTINVCOUN
  is '为开票数量';
comment on column SCOTT.PURCHASE_DETAILS.ITEMREMARK
  is '分录备注';
comment on column SCOTT.PURCHASE_DETAILS.TRANTYPE
  is '来源单别';
comment on column SCOTT.PURCHASE_DETAILS.FROMNO
  is '来源单号';
alter table SCOTT.PURCHASE_DETAILS
  add primary key (DOCUMENTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PURCHASE_RETURN
--prompt ==============================
--prompt
create table SCOTT.PURCHASE_RETURN
(
  DOCUMENTID      VARCHAR2(20) not null,
  DOCUMENTDATE    DATE not null,
  BILLNAME        VARCHAR2(20) not null,
  SUPPLIERNUMBER  NUMBER(9) not null,
  SUPPLIER        VARCHAR2(20) not null,
  SUPPLIERADDRESS VARCHAR2(20) not null,
  WAREHOUSEID     NUMBER(9) not null,
  WARENAME        VARCHAR2(20) not null,
  CRRENCY         VARCHAR2(20) not null,
  EXCHRATE        FLOAT not null,
  PRICEOFTAX      NUMBER(9) not null,
  ISDEDUCT        NUMBER(9) not null,
  TOTALNMBER      INTEGER not null,
  TOTAL           FLOAT not null,
  TAX             FLOAT not null,
  SUMAMTATAX      FLOAT not null,
  BUYERID         NUMBER(9) not null,
  MAKERSIGNID     NUMBER(9) not null,
  DEPARTMENTID    NUMBER(9) not null,
  PERMITTERSIGNID NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.PURCHASE_RETURN.DOCUMENTID
  is '单据号码';
comment on column SCOTT.PURCHASE_RETURN.DOCUMENTDATE
  is '单据日期';
comment on column SCOTT.PURCHASE_RETURN.BILLNAME
  is '单据名称';
comment on column SCOTT.PURCHASE_RETURN.SUPPLIERNUMBER
  is '供应商编号';
comment on column SCOTT.PURCHASE_RETURN.SUPPLIER
  is '供应商';
comment on column SCOTT.PURCHASE_RETURN.SUPPLIERADDRESS
  is '供应商地址';
comment on column SCOTT.PURCHASE_RETURN.WAREHOUSEID
  is '仓库编号';
comment on column SCOTT.PURCHASE_RETURN.WARENAME
  is '仓库名称';
comment on column SCOTT.PURCHASE_RETURN.CRRENCY
  is '币别';
comment on column SCOTT.PURCHASE_RETURN.EXCHRATE
  is '汇率';
comment on column SCOTT.PURCHASE_RETURN.PRICEOFTAX
  is '单价是否含税(0/1)';
comment on column SCOTT.PURCHASE_RETURN.ISDEDUCT
  is '重新入库(0/1)';
comment on column SCOTT.PURCHASE_RETURN.TOTALNMBER
  is '合计数量';
comment on column SCOTT.PURCHASE_RETURN.TOTAL
  is '合计金额';
comment on column SCOTT.PURCHASE_RETURN.TAX
  is '合计税额';
comment on column SCOTT.PURCHASE_RETURN.SUMAMTATAX
  is '合计含税金额';
comment on column SCOTT.PURCHASE_RETURN.BUYERID
  is '采购人员编号';
comment on column SCOTT.PURCHASE_RETURN.MAKERSIGNID
  is '制单人员编号';
comment on column SCOTT.PURCHASE_RETURN.DEPARTMENTID
  is '所属部门编号';
comment on column SCOTT.PURCHASE_RETURN.PERMITTERSIGNID
  is '复核人员编号';
alter table SCOTT.PURCHASE_RETURN
  add primary key (DOCUMENTID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PUR_ENQUIRY
--prompt ==========================
--prompt
create table SCOTT.PUR_ENQUIRY
(
  PURBILLNO  VARCHAR2(20) not null,
  BILLNAME   VARCHAR2(20),
  BILLDATE   DATE,
  CUSTOMERID VARCHAR2(20),
  CURRID     VARCHAR2(20),
  VALIDDATE  DATE,
  PRICEOFTAX NUMBER(9),
  EXCHRATE   FLOAT,
  OUTADDRESS VARCHAR2(50),
  BILLSTATUS NUMBER(9),
  MAKER      VARCHAR2(20),
  SALESID    VARCHAR2(20),
  DEPARTID   VARCHAR2(20),
  PERMITTER  VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PUR_ENQUIRY
  add constraint PK_BILLNO primary key (PURBILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PUR_ENQUIRY_DETAIL
--prompt =================================
--prompt
create table SCOTT.PUR_ENQUIRY_DETAIL
(
  LINEID           NUMBER(9) not null,
  PURBILLNO        VARCHAR2(20),
  PRODID           VARCHAR2(20),
  PRODNUM          NUMBER(9),
  B_DISCOUNT_PRICE FLOAT,
  DISCOUNT_NUM     FLOAT,
  PRODPRICE        FLOAT,
  SUMTAX           FLOAT,
  SUMBTAXAMT       FLOAT,
  SUMAMTATAX       FLOAT,
  ISPRESENT        NUMBER(9),
  ENTRY_NOTES      VARCHAR2(50),
  BILLSOURCETYPE   VARCHAR2(20),
  BILLSOURCENO     VARCHAR2(20),
  HEARDID          VARCHAR2(50),
  FOOTERID         VARCHAR2(50),
  USERDEF1         VARCHAR2(50),
  USERDEF2         VARCHAR2(50),
  REMARK           VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PUR_ENQUIRY_DETAIL
  add constraint PK_LID primary key (LINEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PUR_ORDER
--prompt ========================
--prompt
create table SCOTT.PUR_ORDER
(
  PURORDERNO   VARCHAR2(20) not null,
  ORDERNAME    VARCHAR2(20),
  ORDERDATE    DATE,
  CUSTOMERID   VARCHAR2(20),
  ORDERSTYLEID NUMBER(9),
  CURRID       VARCHAR2(20),
  PRICEOFTAX   NUMBER(9),
  EXCHRATE     FLOAT,
  OUTADDRESS   VARCHAR2(50),
  BILLSTATUS   NUMBER(9),
  SALESID      VARCHAR2(20),
  MAKER        VARCHAR2(20),
  DEPARTID     VARCHAR2(20),
  PERMITTER    VARCHAR2(20),
  PROJECTID    VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PUR_ORDER
  add constraint PK_ORDERNO primary key (PURORDERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PUR_ORDER_DETAIL
--prompt ===============================
--prompt
create table SCOTT.PUR_ORDER_DETAIL
(
  LINEID           NUMBER(9) not null,
  PURORDERNO       VARCHAR2(20),
  PRODID           VARCHAR2(20),
  PRODNUM          NUMBER(9),
  B_DISCOUNT_PRICE FLOAT,
  DISCOUNT_NUM     FLOAT,
  PRODPRICE        FLOAT,
  SUMTAX           FLOAT,
  SUMBTAXAMT       FLOAT,
  SUMAMTATAX       FLOAT,
  STORAGEDATE      DATE,
  NOWARENUM        NUMBER(9),
  ISPRESENT        NUMBER(9),
  ENTRY_NOTES      VARCHAR2(50),
  BILLSOURCETYPE   VARCHAR2(20),
  BILLSOURCENO     VARCHAR2(20),
  HEARDID          VARCHAR2(20),
  FOOTERID         VARCHAR2(20),
  USERDEF1         VARCHAR2(20),
  USERDEF2         VARCHAR2(20),
  REMARK           VARCHAR2(500)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PUR_ORDER_DETAIL
  add constraint PK_LINEID primary key (LINEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table PUR_ORDER_STYLE
--prompt ==============================
--prompt
create table SCOTT.PUR_ORDER_STYLE
(
  ORDERSTYLENO   NUMBER(9) not null,
  ORDERSTYLENAME VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.PUR_ORDER_STYLE
  add constraint PK_STYLENO primary key (ORDERSTYLENO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table READJUSTPRICE
--prompt ============================
--prompt
create table SCOTT.READJUSTPRICE
(
  BILLDATE    DATE not null,
  BILLNO      VARCHAR2(20) not null,
  ADDED       VARCHAR2(20),
  CREDENTIALS VARCHAR2(20),
  IMPAIRMENT  VARCHAR2(20),
  ADJUST      VARCHAR2(20),
  MAKER       VARCHAR2(20) not null,
  PERMITTER   VARCHAR2(20) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.READJUSTPRICE
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table READJUSTPRICES
--prompt =============================
--prompt
create table SCOTT.READJUSTPRICES
(
  BILLNO VARCHAR2(20) not null,
  PRODID VARCHAR2(20),
  PRICE  FLOAT,
  NOTE   VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.READJUSTPRICES
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALESOUTLET
--prompt ==========================
--prompt
create table SCOTT.SALESOUTLET
(
  BILLNO           VARCHAR2(20) not null,
  BILLNAME         VARCHAR2(20) default '销售出库表',
  SUMAMTATAX       FLOAT not null,
  SUMNUM           FLOAT,
  GATHERSTYLE      NUMBER(9),
  GATHERDELAY      NUMBER(9),
  SALECLASSID      VARCHAR2(50),
  SALECLASSNAME    VARCHAR2(50),
  WAREID           VARCHAR2(50),
  WARENAME         VARCHAR2(50),
  BILLDATE         DATE,
  CUSTID           VARCHAR2(50),
  CLASSID          VARCHAR2(50),
  AMOUNTQOUTA      FLOAT,
  RATEOFDISCOUNT   NUMBER(9),
  FULLNAME         VARCHAR2(50),
  CURRID           VARCHAR2(50),
  EXCHRATE         NUMBER(9),
  CURRENCYNAME     VARCHAR2(50),
  TOTAL            FLOAT,
  TAX              FLOAT,
  OFFSET           FLOAT,
  LOCALTOTAL       FLOAT,
  LOCALTAX         FLOAT,
  LOCALOFFSET      FLOAT,
  PREPAYDAY        DATE,
  DEPARTID         VARCHAR2(50),
  DEPARTNAME       VARCHAR2(50),
  SALESID          VARCHAR2(50),
  CASHPAYSTYLEID   NUMBER(9),
  CASHPAYSTYLENAME VARCHAR2(50),
  CASHPAY          NUMBER(9),
  ADDRID           VARCHAR2(50),
  CUSTADDRESS      VARCHAR2(50),
  PRICEFTAX        NUMBER(9),
  MAKER            VARCHAR2(50),
  PERMITTER        VARCHAR2(50),
  SUMDIST          FLOAT,
  REMARK           VARCHAR2(50),
  MAKERSIGN        VARCHAR2(50),
  PERMITTERSIGN    VARCHAR2(50),
  CALLAMT          NUMBER(9),
  PERMITTERSTATE   NUMBER(9) default '0'
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.SALESOUTLET.BILLNO
  is '单据号码';
comment on column SCOTT.SALESOUTLET.SALECLASSID
  is '销售出库类型';
comment on column SCOTT.SALESOUTLET.WAREID
  is '仓库';
comment on column SCOTT.SALESOUTLET.BILLDATE
  is '单据日期';
comment on column SCOTT.SALESOUTLET.CUSTID
  is '客户id';
comment on column SCOTT.SALESOUTLET.CURRID
  is '币别';
comment on column SCOTT.SALESOUTLET.EXCHRATE
  is '汇率';
comment on column SCOTT.SALESOUTLET.DEPARTID
  is '所属部门';
comment on column SCOTT.SALESOUTLET.SALESID
  is '业务人员';
comment on column SCOTT.SALESOUTLET.ADDRID
  is '送货地址';
comment on column SCOTT.SALESOUTLET.PRICEFTAX
  is '单价是否含税';
comment on column SCOTT.SALESOUTLET.MAKER
  is '制表人员';
comment on column SCOTT.SALESOUTLET.PERMITTER
  is '复核人员';
comment on column SCOTT.SALESOUTLET.CALLAMT
  is '现有总数量';
alter table SCOTT.SALESOUTLET
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALESOUTLETDETAILED
--prompt ==================================
--prompt
create table SCOTT.SALESOUTLETDETAILED
(
  SERNO         VARCHAR2(50) not null,
  BILLNO        VARCHAR2(50) not null,
  PRODID        VARCHAR2(50) not null,
  BARCODEID     VARCHAR2(50),
  PRODCURRID    VARCHAR2(50),
  SUGGESTPRICE  FLOAT,
  SALESPRICEA   FLOAT,
  SALESPRICEB   FLOAT,
  SALESPRICEC   FLOAT,
  SALESPRICED   FLOAT,
  SALESPRICEE   FLOAT,
  STDPRICE      FLOAT,
  BUSITAXRATE   FLOAT,
  MAJORSUPPLIER NUMBER(9),
  UNITNAME      VARCHAR2(50),
  PRODNAME      VARCHAR2(50),
  PRODSIZE      VARCHAR2(50),
  MLAMOUNT      FLOAT,
  WAREID        VARCHAR2(50),
  WARENAME      VARCHAR2(50),
  TRANTYPE      VARCHAR2(50),
  FROMNO        VARCHAR2(50),
  TAXRATE       NUMBER(9),
  TAXAMT        FLOAT,
  DISCOUNT      NUMBER(9),
  AMOUNT        FLOAT,
  ITEMREMARK    VARCHAR2(255),
  SPRICE        FLOAT,
  SQUANTITY     NUMBER(9),
  MLTAXAMT      FLOAT,
  OLDPRICE      FLOAT,
  ISGIFT        NUMBER(9),
  AMOUNTATAX    FLOAT,
  MLAMOUNTATAX  FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on column SCOTT.SALESOUTLETDETAILED.BILLNO
  is '单据号码';
comment on column SCOTT.SALESOUTLETDETAILED.PRODID
  is '物料编号';
comment on column SCOTT.SALESOUTLETDETAILED.BUSITAXRATE
  is '汇率';
comment on column SCOTT.SALESOUTLETDETAILED.DISCOUNT
  is '折数';
comment on column SCOTT.SALESOUTLETDETAILED.AMOUNT
  is '金额';
comment on column SCOTT.SALESOUTLETDETAILED.ITEMREMARK
  is '分录备注';
comment on column SCOTT.SALESOUTLETDETAILED.SPRICE
  is '单价';
comment on column SCOTT.SALESOUTLETDETAILED.SQUANTITY
  is '数量';
comment on column SCOTT.SALESOUTLETDETAILED.OLDPRICE
  is '折扣前单价';
comment on column SCOTT.SALESOUTLETDETAILED.ISGIFT
  is '赠品';
alter table SCOTT.SALESOUTLETDETAILED
  add constraint PK_SALESOUTLET primary key (SERNO, BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALES_QUOTATION_DETAILS
--prompt ======================================
--prompt
create table SCOTT.SALES_QUOTATION_DETAILS
(
  BILLNOID   INTEGER not null,
  BILLNO     VARCHAR2(20) not null,
  XSNAME     VARCHAR2(20) default '销售报价详细',
  PRODID     VARCHAR2(20) not null,
  PRODSIZE   VARCHAR2(20),
  SUNIT      VARCHAR2(20) not null,
  SQUANTITY  FLOAT not null,
  OLDPRICE   FLOAT not null,
  DISCOUNT   FLOAT not null,
  SPRICE     FLOAT not null,
  AMOUNT     FLOAT not null,
  TAXRATE    FLOAT not null,
  VFTOTAL    FLOAT not null,
  ISGIFT     INTEGER,
  ITEMREMARK VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.SALES_QUOTATION_DETAILS
  add constraint PK_SALES_QUOTATION_DETAILS primary key (BILLNOID, BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALES_QUOTATION_SHEET
--prompt ====================================
--prompt
create table SCOTT.SALES_QUOTATION_SHEET
(
  BILLNO       VARCHAR2(20) not null,
  XSNAME       VARCHAR2(20) default '销售报价',
  FORMALCUST   VARCHAR2(20) not null,
  BILLDATE     DATE not null,
  CUSTADDRESS  VARCHAR2(20),
  VALIDDATE    DATE not null,
  CURRID       VARCHAR2(20) not null,
  PRICEOFTAX   INTEGER not null,
  SALESID      VARCHAR2(20) not null,
  DEPARTID     VARCHAR2(20) not null,
  MAKER        VARCHAR2(20) not null,
  PARMITTER    VARCHAR2(20) not null,
  AUDIT_STATUS NUMBER(9) default '0' not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.SALES_QUOTATION_SHEET
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALES_RETURNS
--prompt ============================
--prompt
create table SCOTT.SALES_RETURNS
(
  BILLNO       VARCHAR2(50) not null,
  BILLDATE     DATE,
  ADDRID       VARCHAR2(255),
  PRICEOFTAX   NUMBER(9),
  CURRID       VARCHAR2(20),
  WARENAME     VARCHAR2(50),
  EXCHRATE     FLOAT,
  ISDEDUCT     NUMBER(9),
  DUETO        VARCHAR2(50),
  SALESNAME    VARCHAR2(50),
  MAKER        VARCHAR2(50),
  DEPARTNAME   VARCHAR2(50),
  PERMITTER    VARCHAR2(50),
  TRANTYPE     VARCHAR2(20),
  AUDITEDSTATE NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.SALES_RETURNS
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SALES_RETURNS_DETAILS
--prompt ====================================
--prompt
create table SCOTT.SALES_RETURNS_DETAILS
(
  CUSTOMERID         VARCHAR2(50) not null,
  DETAILEDLISTNUMBER NUMBER(9) not null,
  PRODID             VARCHAR2(50),
  PRODNAME           VARCHAR2(50),
  PRODSIZE           FLOAT,
  SUNIT              VARCHAR2(20),
  SQUANTITY          NUMBER(9),
  OLDPRICE           FLOAT,
  DISCOUNT           FLOAT,
  SPRICE             FLOAT,
  AMOUNT             FLOAT,
  TAXRATE            FLOAT,
  TAXAMT             FLOAT,
  AMOUNTATAX         FLOAT,
  HAVEBATCH          NUMBER(9),
  ISGIFT             NUMBER(9),
  ITEMREMARK         VARCHAR2(200),
  FROMNO             VARCHAR2(50)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.SALES_RETURNS_DETAILS
  add constraint SRD primary key (CUSTOMERID, DETAILEDLISTNUMBER)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table SUPPLIERCUSTOMER
--prompt ===============================
--prompt
create table SCOTT.SUPPLIERCUSTOMER
(
  SourceType     NUMBER(9),
  SourceOrder    VARCHAR2(20),
  CustomerId     NUMBER(9),
  Supplierdate   DATE,
  OriginalAmount FLOAT,
  CurrentBalance FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_ADDRESS
--prompt ========================
--prompt
create table SCOTT.T_ADDRESS
(
  ADDRESSID VARCHAR2(20) not null,
  SUPID     VARCHAR2(20) not null,
  ADDRESS   VARCHAR2(20),
  YZCODE    VARCHAR2(20),
  LXR       VARCHAR2(20),
  LXRJOB    VARCHAR2(20),
  CZPHONE   VARCHAR2(20),
  XZPATH    VARCHAR2(20),
  BZ        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_ADDRESS
  add primary key (ADDRESSID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CHECK
--prompt ======================
--prompt
create table SCOTT.T_CHECK
(
  CHECKID       VARCHAR2(20) not null,
  WAREHOUSEID   NUMBER(9) not null,
  WAREHOUSENAME VARCHAR2(20),
  CHECKDATE     DATE not null,
  DEPARTREMARKS CLOB,
  CHECKCUSTOM1  VARCHAR2(20),
  CHECKCUSTOM2  VARCHAR2(20),
  SALESID       NUMBER(9) not null,
  DEPARTID      NUMBER(9) not null,
  MAKER         VARCHAR2(20) not null,
  PERMITTER     VARCHAR2(20) not null,
  TABLENAME     VARCHAR2(20),
  STATUS        NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CHECK
  add primary key (CHECKID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_CHECK_DETAIL
--prompt =============================
--prompt
create table SCOTT.T_CHECK_DETAIL
(
  CHECKDETAILID NUMBER(9) not null,
  MATERIELID    VARCHAR2(20) not null,
  MATERIELNAME  VARCHAR2(20) not null,
  SPECTYPE      VARCHAR2(20) not null,
  UNITNAME      VARCHAR2(20) not null,
  BOOKCOUNT     NUMBER(9) not null,
  DETAILNUMBER  NUMBER(9) not null,
  CHECKCOUNT    NUMBER(9) not null,
  YINGKUICOUNT  NUMBER(9) not null,
  PRICE         NUMBER(9) not null,
  YINGKUIPRICE  NUMBER(9) not null,
  PH            NUMBER(9),
  REASON        VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_CHECK_DETAIL
  add primary key (CHECKDETAILID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DEPARTMENT
--prompt ===========================
--prompt
create table SCOTT.T_DEPARTMENT
(
  DEPARTMENT_ID    VARCHAR2(20) not null,
  DEPARTMENT_NAME  VARCHAR2(50) not null,
  DEPARTMENT_ENAME VARCHAR2(50),
  REMARKS          VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DEPARTMENT
  add primary key (DEPARTMENT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_DOCUMENT_TYPE
--prompt ==============================
--prompt
create table SCOTT.T_DOCUMENT_TYPE
(
  TYPEID            VARCHAR2(20) not null,
  TOTAL_TYPE_NUMBER NUMBER(9) not null,
  SON_TYPE_NUMBER   NUMBER(9) not null,
  TOTAL_TYPE_NAME   VARCHAR2(50),
  SON_TYPE_NAME     VARCHAR2(50),
  ENGLISH_NAME      VARCHAR2(50),
  REMARKS           VARCHAR2(255)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_DOCUMENT_TYPE
  add primary key (TYPEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_GYS
--prompt ====================
--prompt
create table SCOTT.T_GYS
(
  SUPID            VARCHAR2(20) not null,
  SUPACCOUNTBELONG VARCHAR2(20) not null,
  SUPALLNAME       VARCHAR2(20) not null,
  SUPNAME          VARCHAR2(20),
  SUPTYPEID        NUMBER(9),
  SUPAREA          VARCHAR2(20),
  SUPCURRENCY      VARCHAR2(20),
  SUPALLENGLISH    VARCHAR2(20),
  SUPENGLISH       VARCHAR2(20),
  SUPLEADER        VARCHAR2(20),
  SUPTAXNUMBER     VARCHAR2(20),
  SUPPHONE1        VARCHAR2(20),
  SUPPHONE2        VARCHAR2(20),
  SUPPHONE3        VARCHAR2(20),
  SUPMOBPHONE      VARCHAR2(20),
  SUPBANKACCOUNT   VARCHAR2(20),
  SUPOPENBANK      VARCHAR2(20),
  SUPCAPITAL       FLOAT default 0,
  SUPINDUSTRY      VARCHAR2(20),
  SUPEMAIL         VARCHAR2(20),
  SUPURL           VARCHAR2(20),
  SUPFAXPHONE      VARCHAR2(11),
  SUPSTARTPUT      DATE,
  SUPSTARTRETURN   DATE,
  SUPLATELYPUT     DATE,
  SUPLATELYRETURN  DATE,
  ISTAX            CHAR(1) default 0,
  BREAKDATE        DATE,
  SUPCREDITLIMIT   FLOAT,
  SUPSURPLUSLIMIT  FLOAT,
  SUPPAYTERM       VARCHAR2(20),
  SUPPAYDATE       NUMBER(9),
  SALEID           NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_GYS
  add primary key (SUPID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_GYS
  add check (isTax in(0,1));

--prompt
--prompt Creating table T_KEHU
--prompt =====================
--prompt
create table SCOTT.T_KEHU
(
  CUSTOMERID           VARCHAR2(50),
  ACCOUNTASIGNMENT     VARCHAR2(50),
  CUSTOMERFLLNAE       VARCHAR2(50),
  CLASSID              NUMBER(9),
  CUSTOMERABREVIATION  VARCHAR2(50),
  RGION                VARCHAR2(50),
  ENGFLLNME            VARCHAR2(50),
  MOENYID              VARCHAR2(50),
  ENGABREVIATION       VARCHAR2(50),
  CRRENCY              VARCHAR2(50),
  BUSPRSONNEL          VARCHAR2(50),
  CONTACTS             VARCHAR2(50),
  TAXNMBER             VARCHAR2(50),
  CONTACTPHONE1        VARCHAR2(50),
  CAPITALAOUNT         FLOAT,
  CONTACTPHONE2        VARCHAR2(50),
  IDUSTRYTYPE          VARCHAR2(50),
  CONTACTPHONE3        VARCHAR2(50),
  EMAIL                VARCHAR2(50),
  PHONE                VARCHAR2(50),
  WEBSITE              VARCHAR2(50),
  BANKACOUNT           VARCHAR2(50),
  FAXNUMBER            VARCHAR2(50),
  BANKDEPOSIT          VARCHAR2(50),
  FOLDINGNUMBER        FLOAT,
  PRICELEVEL           VARCHAR2(50),
  TAXINCLUDED          FLOAT,
  DATECREATION         DATE,
  STOPTRADINGDAY       DATE,
  AMOUNTACCOUNT        FLOAT,
  SURPLUSAMOUNT        FLOAT,
  CONDITIONSCOLLECTION VARCHAR2(50),
  DAYSCOLLECTION       NUMBER(9),
  MONTHLYCLOSINGDATE   DATE,
  CREDITRATING         CHAR(2),
  ACCOUNTSRECEIVABLE   VARCHAR2(50),
  INITIALCOLLECTION    FLOAT,
  INITIALRECEIVABLES   FLOAT,
  FINALSALE            FLOAT,
  FINALACCRECEIVABLE   FLOAT,
  PREPAIDSUBJECT       VARCHAR2(50),
  SEIFDEFININGCOLUMN1  VARCHAR2(50),
  SEIFDEFININGCOLUMN2  VARCHAR2(50),
  REMARKS              VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PERSONNEL
--prompt ==========================
--prompt
create table SCOTT.T_PERSONNEL
(
  PERSONNEL_ID                 VARCHAR2(20) not null,
  PERSONNEL_NAME               VARCHAR2(50) not null,
  PERSONNEL_ENAME              VARCHAR2(50),
  DEPARTMENT_ID                NUMBER(9) not null,
  DEPARTMENT_NAME              VARCHAR2(50),
  PERSONNEL_SEX                NUMBER(9) not null,
  IDNUMBER                     VARCHAR2(18) not null,
  DATE_OF_BIRTH                DATE,
  POLITICAL_OUTLOOK            VARCHAR2(20),
  MARITAL_STATUS               NUMBER(9),
  DATE_OF_ENTRY_RUZHI          DATE,
  BLOOD_TYPE                   NUMBER(9),
  DATE_OF_CORRECTION           DATE,
  NATIVE_PLACE                 VARCHAR2(20),
  PROBATION_PERIOD             NUMBER(9),
  NATIONALITY                  VARCHAR2(50),
  LEAVEDATE                    DATE,
  NATION                       VARCHAR2(20),
  TECHNICAL_TITLE              VARCHAR2(20),
  CHINESE_DUTY                 VARCHAR2(20),
  ENGLISH_DUTY                 VARCHAR2(20),
  CONTACT_ZIP_CODE             VARCHAR2(20),
  CONTACT_ADDRESS              VARCHAR2(50),
  CONTACT_NUMBER               VARCHAR2(20),
  MOBILE_PHONE                 VARCHAR2(20),
  EDUCATION                    VARCHAR2(20),
  DUE_DATE                     DATE,
  ACADEMIC_DEGREE              VARCHAR2(20),
  DATE_OF_ENTRY_RUJING         DATE,
  GRADUATE_SCHOOL              VARCHAR2(50),
  PASSPORT_NUMBER              VARCHAR2(20),
  MAJOR_STUDIED                VARCHAR2(20),
  CONTRACT_START_DATE          DATE,
  FOREIGN_LANGUAGE_PROFICIENCY VARCHAR2(20),
  CONTRACT_END_DATE            DATE,
  TJRQ                         DATE,
  HTQCN                        NUMBER(9),
  HTQCY                        NUMBER(9),
  DZYJ                         VARCHAR2(20),
  XDH                          VARCHAR2(20),
  HJDH                         VARCHAR2(20),
  XYB                          VARCHAR2(20),
  HJYB                         VARCHAR2(20),
  XZZ                          VARCHAR2(20),
  HJDZ                         VARCHAR2(20),
  JJLXR                        VARCHAR2(20),
  JTDH                         VARCHAR2(20),
  JJLXYB                       VARCHAR2(20),
  JTYB                         VARCHAR2(20),
  JJLXDH                       VARCHAR2(20),
  JTZZ                         VARCHAR2(20),
  JJLXDZ                       VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PERSONNEL
  add primary key (PERSONNEL_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PURCHASE_STORAGE_DETAILED
--prompt ==========================================
--prompt
create table SCOTT.T_PURCHASE_STORAGE_DETAILED
(
  ID                         VARCHAR2(20) not null,
  DOCUMENT_ID                VARCHAR2(20) not null,
  DOCUMENT_NAME              VARCHAR2(20) not null,
  COLUMN_NUMBER              NUMBER(9) not null,
  MATERIEL_ID                VARCHAR2(20) not null,
  MATERIEL_NAME              VARCHAR2(50),
  SPECIFICATION_TYPE         VARCHAR2(50),
  UNIT_NAME                  VARCHAR2(20),
  MATERIEL_NUMBER            NUMBER(9),
  UNIT_PRICE_BEFORE_DISCOUNT FLOAT,
  FOLDING_NUMBER             NUMBER(9),
  UNIT_PRICE                 FLOAT,
  AMOUNT_OF_MONEY            FLOAT,
  TAX_RATE                   FLOAT,
  TAX_AMOUNT                 FLOAT,
  IS_TAX_AMOUNT              FLOAT,
  BATCH_NUMBER               NUMBER(9),
  GIFT                       NUMBER(9),
  ENTRY_NOTES                VARCHAR2(50),
  SOURCE_LIST                VARCHAR2(20),
  SOURCE_NUMBER              VARCHAR2(20),
  COST_SHARING               FLOAT
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PURCHASE_STORAGE_DETAILED
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_PURCHASE_STORAGE_MAIN
--prompt ======================================
--prompt
create table SCOTT.T_PURCHASE_STORAGE_MAIN
(
  DOCUMENT_ID              VARCHAR2(20) not null,
  DOCUMENT_NAME            VARCHAR2(20) default ('采购入库单') not null,
  DOCUMENT_DATE            DATE not null,
  SUPPLIER_ID              NUMBER(9) not null,
  SUPPLIER_NAME            VARCHAR2(50) not null,
  SUPPLIER_ADDRESS         VARCHAR2(50),
  DOCUMENT_TYPE_ID         VARCHAR2(20),
  CURRENCY                 VARCHAR2(20),
  EXCHANGE_RATE            FLOAT,
  WAREHOUSE_ID             VARCHAR2(20) not null,
  WAREHOUSE_NAME           VARCHAR2(20) not null,
  IS_TAX                   NUMBER(9) default (0),
  TOTAL_NUMBER             NUMBER(9),
  TOTAL_SUM                FLOAT,
  AGGREGATE_TAX            FLOAT,
  TOTAL_IS_TAX             FLOAT,
  AGGREGATE_COST_SHARING   FLOAT,
  REMARKS                  VARCHAR2(255),
  PURCHASING_PERSONNEL_NUM VARCHAR2(20),
  ORDER_MAKER_NUM          VARCHAR2(20),
  SUBORDINATE_DEPARTMENTS  VARCHAR2(20),
  REVIEWER_NUM             VARCHAR2(20),
  AUDIT_STATUS             NUMBER(9) default (0)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_PURCHASE_STORAGE_MAIN
  add primary key (DOCUMENT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_REQUISITION
--prompt ============================
--prompt
create table SCOTT.T_REQUISITION
(
  BILLNO      VARCHAR2(20) not null,
  BILLDATE    DATE not null,
  BILLSTATUS  NUMBER(9) not null,
  HEADERNAME  VARCHAR2(20),
  FACTMEMO    VARCHAR2(20),
  BILLCUSTOM1 VARCHAR2(20),
  BILLCUSTOM2 VARCHAR2(20),
  HEADERCONT  CLOB,
  MAKER       VARCHAR2(20),
  PERMITTER   VARCHAR2(20),
  BILLSTYLEID NUMBER(9) not null,
  SALESID     NUMBER(9) not null,
  DEPARTID    VARCHAR2(20) not null,
  TABLENAME   VARCHAR2(20),
  REQSTATUS   NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_REQUISITION
  add primary key (BILLNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_REQUISITION_DETAIL
--prompt ===================================
--prompt
create table SCOTT.T_REQUISITION_DETAIL
(
  COLNUMBER           NUMBER(9) not null,
  MATERIELID          VARCHAR2(20) not null,
  MATERIELNAME        VARCHAR2(20) not null,
  SPECTYPE            VARCHAR2(20) not null,
  UNITNAME            VARCHAR2(20) not null,
  DETAILNUMBEL        NUMBER(9) not null,
  CURRENCY            VARCHAR2(20) not null,
  STANDPRICE          FLOAT not null,
  STANDPRICEAMOUNT    FLOAT not null,
  ENDCURRENCY         VARCHAR2(20),
  ENDSTANDPRICE       FLOAT,
  ENDSTANDPRICEAMOUNT FLOAT,
  DEMANDDATE          DATE not null,
  PROPOSALDATE        DATE not null,
  NOTPURCHASE         NUMBER(9) not null,
  REMARKS             VARCHAR2(20),
  SOURCENAME          VARCHAR2(20),
  SOURCEID            VARCHAR2(20),
  BILLNO              VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_REQUISITION_DETAIL
  add primary key (COLNUMBER)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_REQUISITION_TYPE
--prompt =================================
--prompt
create table SCOTT.T_REQUISITION_TYPE
(
  TYPENUMBER      NUMBER(9) not null,
  TYPENAME        VARCHAR2(20) not null,
  TYPEENGLISHNAME VARCHAR2(20),
  TYPEREMARKS     CLOB
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_REQUISITION_TYPE
  add primary key (TYPENUMBER)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SHARE
--prompt ======================
--prompt
create table SCOTT.T_SHARE
(
  CG_FT_ID    NUMBER(9) not null,
  BILLDATE    DATE not null,
  BILLNO      VARCHAR2(20) not null,
  ASSIGNSTYLE NUMBER(9) not null,
  MEKER       VARCHAR2(20) not null,
  PERMITTER   VARCHAR2(20) not null,
  CG_FTJG_ID  NUMBER(9) not null,
  CG_FTMX_ID  NUMBER(9) not null,
  MLAMOUNT    FLOAT not null,
  CG_RK_ID    NUMBER(9) not null,
  AUDITSTATUS NUMBER(9) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SHARE
  add primary key (CG_FT_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SHARE_DETAIL
--prompt =============================
--prompt
create table SCOTT.T_SHARE_DETAIL
(
  CG_FTMX_ID    NUMBER(9) not null,
  FEECLASSID    NUMBER(9) not null,
  FARECLASSNAME VARCHAR2(20) not null,
  CURRID        VARCHAR2(20) not null,
  EXCHRATE      FLOAT not null,
  AMOUNT        FLOAT not null,
  MLAMOUNT      FLOAT not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SHARE_DETAIL
  add primary key (CG_FTMX_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table T_SHARE_RESULT
--prompt =============================
--prompt
create table SCOTT.T_SHARE_RESULT
(
  CG_FTJG_ID NUMBER(9) not null,
  FROMNO     VARCHAR2(20) not null,
  PRODID     VARCHAR2(20) not null,
  PRODNAME   VARCHAR2(20) not null,
  PRODSIZE   VARCHAR2(20) not null,
  VAMOUNT    FLOAT not null,
  VQUANTITY  NUMBER(9) not null,
  SUNIT      VARCHAR2(20) not null,
  MLAMOUNT   FLOAT not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.T_SHARE_RESULT
  add primary key (CG_FTJG_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table WAREHOUSEINFO
--prompt ============================
--prompt
create table SCOTT.WAREHOUSEINFO
(
  WAREHOUSEID      VARCHAR2(20) not null,
  WAREHOUSENAME    VARCHAR2(20),
  SHOTNAME         VARCHAR2(20),
  ENGNAME          VARCHAR2(20),
  LINKMAN          VARCHAR2(20),
  LINKPHONE        VARCHAR2(20),
  WAREHOUSEADDRESS VARCHAR2(50),
  MEMO             VARCHAR2(200)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.WAREHOUSEINFO
  add constraint PK_WAREHOUSEID primary key (WAREHOUSEID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table YUSHOUCHONGDETAIL_TABLE
--prompt ======================================
--prompt
create table SCOTT.YUSHOUCHONGDETAIL_TABLE
(
  SERNO          VARCHAR2(20) not null,
  ORIGINFLAG     VARCHAR2(20),
  ORIGINBILLNO   VARCHAR2(20),
  ORIGINBILLDATE DATE,
  INVOICENO      VARCHAR2(20),
  CUSTID         VARCHAR2(20),
  CUSTNAME       VARCHAR2(20),
  DEPTID         VARCHAR2(20),
  DEPARTNAME     VARCHAR2(20),
  PERSONNAME     VARCHAR2(20),
  PROJECTNAME    VARCHAR2(20),
  CURRID         VARCHAR2(20),
  EXCHRATE       FLOAT,
  TOTAL          FLOAT,
  NOWLEFT        FLOAT,
  DISCOUNT       FLOAT,
  OFFSET         FLOAT,
  OFFSETMONEY    FLOAT,
  SFSH           NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.YUSHOUCHONGDETAIL_TABLE
  add primary key (SERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table YUSHOUCHONG_TABLE
--prompt ================================
--prompt
create table SCOTT.YUSHOUCHONG_TABLE
(
  CUSTOMERID        VARCHAR2(20) not null,
  CUSTOMERNAME      VARCHAR2(20),
  FUNDBILLDATE      DATE,
  FUNDBILLID        VARCHAR2(20),
  CURRID            VARCHAR2(20),
  EXCHRATE          FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE not null,
  CASHSTYLEID       VARCHAR2(20),
  CASHSTYLENAME     VARCHAR2(20),
  VISASTYLEID       VARCHAR2(20),
  VISASTYLENAME     VARCHAR2(20),
  OTHERPAYSTYLEID   VARCHAR2(20),
  OTHERPAYSTYLENAME VARCHAR2(20),
  DEPTFROM          VARCHAR2(20),
  PROJECTFROM       VARCHAR2(20),
  LINKMAN           VARCHAR2(20),
  TELEPHONE1        INTEGER,
  TELEPHONE2        INTEGER,
  MAKER             VARCHAR2(20),
  PERMITTER         VARCHAR2(20),
  SFSH              NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.YUSHOUCHONG_TABLE
  add primary key (CUSTOMERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table YUSHOUDETAILS_INTFACE
--prompt ====================================
--prompt
create table SCOTT.YUSHOUDETAILS_INTFACE
(
  ORIGINO          VARCHAR2(20) not null,
  BILLTYPE         VARCHAR2(20),
  FROMORDERNO      VARCHAR2(20),
  PREPAYLEFT       FLOAT,
  DEPTID           VARCHAR2(20),
  DEPARTNAME       VARCHAR2(20),
  LOCALUSERMONEY   FLOAT,
  FROMDESCRIPTTION VARCHAR2(20),
  SFSH             NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.YUSHOUDETAILS_INTFACE
  add primary key (ORIGINO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table YUSHOUDETAILS_TABLE
--prompt ==================================
--prompt
create table SCOTT.YUSHOUDETAILS_TABLE
(
  BILLTYPE         VARCHAR2(20),
  FROMORDERNO      VARCHAR2(20) not null,
  FROMDESCRIPTTION VARCHAR2(20),
  LOCALUSERMONEY   FLOAT,
  PREPAYLEFT       FLOAT,
  DEPARTNAME       VARCHAR2(20),
  DEPARID          VARCHAR2(20),
  ORIGINNO         DATE not null,
  SYSID            VARCHAR2(20),
  SFSH             NUMBER(9)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.YUSHOUDETAILS_TABLE
  add primary key (FROMORDERNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating table YUSHOU_TABLE
--prompt ===========================
--prompt
create table SCOTT.YUSHOU_TABLE
(
  CUSTOMERID        VARCHAR2(20) not null,
  FUNDBILLDATE      DATE not null,
  BILLTYPENAME      VARCHAR2(20),
  FUNDBILLID        VARCHAR2(20),
  CURRID            VARCHAR2(20),
  EXCHRATE          FLOAT,
  DISCOUNTPER       FLOAT,
  ACCMONTHTOMONTH   DATE not null,
  CASHSTYLEID       VARCHAR2(20),
  CASHSTYLENAME     VARCHAR2(20),
  VISASTYLEID       VARCHAR2(20),
  VISASTYLENAME     VARCHAR2(20),
  OTHERPAYSTYLEID   VARCHAR2(20),
  OTHERPAYSTYLENAME VARCHAR2(20),
  DEPTFROM          VARCHAR2(20),
  PROJECTFROM       VARCHAR2(20),
  MAKER             VARCHAR2(20),
  PERMITTER         VARCHAR2(20),
  SFSH              NUMBER(9),
  CUSTOMERNAME      VARCHAR2(20)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SCOTT.YUSHOU_TABLE
  add primary key (CUSTOMERID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

--prompt
--prompt Creating sequence SEQ_USERINF
--prompt =============================
--prompt
create sequence SCOTT.SEQ_USERINF
minvalue 1
maxvalue 999999999999999999999999999
start with 7
increment by 1
nocache;

--prompt
--prompt Creating sequence SID_SEQUENCE
--prompt ==============================
--prompt
create sequence SCOTT.SID_SEQUENCE
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

--prompt
--prompt Creating sequence SQ1
--prompt =====================
--prompt
create sequence SCOTT.SQ1
minvalue 1
maxvalue 9999999
start with 21
increment by 1
cache 20;


spool off
