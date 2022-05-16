-- Project Name : StockManagement 
-- Date/Time    : 2022/05/17 7:51:15
-- Author       : 藤井崇仁
-- RDBMS Type   : Oracle Database
-- Application  : A5:SQL Mk-2

-- 受払要因マスタ
-- drop table FACTOR_OF_RECEPTION_OR_PUTOUT_MST cascade constraints;
create table FACTOR_OF_RECEPTION_OR_PUTOUT_MST (
  FACTOR_ID NUMBER(3,0) not null
  , FACTOR VARCHAR2(50) not null
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(3,0) not null
  , constraint FACTOR_OF_RECEPTION_OR_PUTOUT_MST_PKC primary key (FACTOR_ID)
) ;

-- 受払区分マスタ
-- drop table RECEPTION_OR_PUTOUT_MST cascade constraints;
create table RECEPTION_OR_PUTOUT_MST (
  RECEPTION_OR_PUTOUT_ID NUMBER(3,0) not null
  , RECEPTION_OR_PUTOUT VARCHAR2(30) not null
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(3,0) not null
  , constraint RECEPTION_OR_PUTOUT_MST_PKC primary key (RECEPTION_OR_PUTOUT_ID)
) ;

-- ユーザーマスタ
-- drop table USER_MST cascade constraints;
create table USER_MST (
  USER_ID VARCHAR2(10) not null
  , USER_NAME VARCHAR2(100) not null
  , PASSWORD VARCHAR2(30)
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(3,0) not null
  , constraint USER_MST_PKC primary key (USER_ID)
) ;

-- 品名マスタ
-- drop table PRODUCT_MST cascade constraints;

create table PRODUCT_MST (
  PRODUCT_ID VARCHAR2(10)
  , PRODUCT VARCHAR2(100) not null
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(3,0) not null
  , constraint PRODUCT_MST_PKC primary key (PRODUCT_ID)
) ;

-- 在庫マスタ
-- drop table STOCK_MST cascade constraints;
create table STOCK_MST (
  PRODUCT_ID VARCHAR2(10) not null
  , QUANTITY NUMBER(5,0) not null
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(5,0) not null
  , constraint STOCK_MST_PKC primary key (PRODUCT_ID)
) ;

-- 受払履歴テーブル
-- drop table HISTORY_OF_RECEPTION_OR_PUTOUT_TBL cascade constraints;
create table HISTORY_OF_RECEPTION_OR_PUTOUT_TBL (
  HISTORY_ID NUMBER(10,0) not null
  , PRODUCT_ID VARCHAR2(10) not null
  , RECEPTION_OR_PUTOUT_ID NUMBER(3,0) not null
  , FACTOR_ID NUMBER(3,0) not null
  , QUANTITY NUMBER(10,0) not null
  , DATE_OF_RECEPTION_OR_PUTOUT DATE not null
  , PERSON VARCHAR2(10) not null
  , CREATE_DATE DATE not null
  , CREATER VARCHAR2(10) not null
  , CREATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_DATE DATE not null
  , UPDATER VARCHAR2(10) not null
  , UPDATE_PROGRAM VARCHAR2(10) not null
  , UPDATE_COUNT NUMBER(5,0) not null
  , DELETE_FLAG NUMBER(3,0) not null
  , constraint HISTORY_OF_RECEPTION_OR_PUTOUT_TBL_PKC primary key (HISTORY_ID)
) ;

alter table PRODUCT_MST
  add constraint PRODUCT_MST_FK1 foreign key (PRODUCT_ID) references STOCK_MST(PRODUCT_ID);

comment on table FACTOR_OF_RECEPTION_OR_PUTOUT_MST is '受払要因マスタ';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.FACTOR_ID is '受払要因ID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.FACTOR is '受払要因';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATE_DATE is '登録日付';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATER is '登録者';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATE_PROGRAM is '登録プログラムID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_DATE is '更新日付';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATER is '更新者';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_PROGRAM is '更新プログラムID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_COUNT is '更新回数';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.DELETE_FLAG is '削除フラグ';

comment on table RECEPTION_OR_PUTOUT_MST is '受払区分マスタ';
comment on column RECEPTION_OR_PUTOUT_MST.RECEPTION_OR_PUTOUT_ID is '受払区分ID';
comment on column RECEPTION_OR_PUTOUT_MST.RECEPTION_OR_PUTOUT is '受払';
comment on column RECEPTION_OR_PUTOUT_MST.CREATE_DATE is '登録日付';
comment on column RECEPTION_OR_PUTOUT_MST.CREATER is '登録者';
comment on column RECEPTION_OR_PUTOUT_MST.CREATE_PROGRAM is '登録プログラムID';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_DATE is '更新日付';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATER is '更新者';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_PROGRAM is '更新プログラムID';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_COUNT is '更新回数';
comment on column RECEPTION_OR_PUTOUT_MST.DELETE_FLAG is '削除フラグ';

comment on table USER_MST is 'ユーザーマスタ';
comment on column USER_MST.USER_ID is 'ユーザーID';
comment on column USER_MST.USER_NAME is 'ユーザー名';
comment on column USER_MST.PASSWORD is 'パスワード';
comment on column USER_MST.CREATE_DATE is '登録日付';
comment on column USER_MST.CREATER is '登録者';
comment on column USER_MST.CREATE_PROGRAM is '登録プログラムID';
comment on column USER_MST.UPDATE_DATE is '更新日付';
comment on column USER_MST.UPDATER is '更新者';
comment on column USER_MST.UPDATE_PROGRAM is '更新プログラムID';
comment on column USER_MST.UPDATE_COUNT is '更新回数';
comment on column USER_MST.DELETE_FLAG is '削除フラグ';

comment on table PRODUCT_MST is '品名マスタ';
comment on column PRODUCT_MST.PRODUCT_ID is '品名ID';
comment on column PRODUCT_MST.PRODUCT is '品名';
comment on column PRODUCT_MST.CREATE_DATE is '登録日付';
comment on column PRODUCT_MST.CREATER is '登録者';
comment on column PRODUCT_MST.CREATE_PROGRAM is '登録プログラムID';
comment on column PRODUCT_MST.UPDATE_DATE is '更新日付';
comment on column PRODUCT_MST.UPDATER is '更新者';
comment on column PRODUCT_MST.UPDATE_PROGRAM is '更新プログラムID';
comment on column PRODUCT_MST.UPDATE_COUNT is '更新回数';
comment on column PRODUCT_MST.DELETE_FLAG is '削除フラグ';

comment on table STOCK_MST is '在庫マスタ';
comment on column STOCK_MST.PRODUCT_ID is '品名ID';
comment on column STOCK_MST.QUANTITY is '数量';
comment on column STOCK_MST.CREATE_DATE is '登録日付';
comment on column STOCK_MST.CREATER is '登録者';
comment on column STOCK_MST.CREATE_PROGRAM is '登録プログラムID';
comment on column STOCK_MST.UPDATE_DATE is '更新日付';
comment on column STOCK_MST.UPDATER is '更新者';
comment on column STOCK_MST.UPDATE_PROGRAM is '更新プログラムID';
comment on column STOCK_MST.UPDATE_COUNT is '更新回数';
comment on column STOCK_MST.DELETE_FLAG is '削除フラグ';

comment on table HISTORY_OF_RECEPTION_OR_PUTOUT_TBL is '受払履歴テーブル';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.HISTORY_ID is '受払履歴ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.PRODUCT_ID is '品名ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.RECEPTION_OR_PUTOUT_ID is '受払区分ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.FACTOR_ID is '受払要因ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.QUANTITY is '受払数量';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.DATE_OF_RECEPTION_OR_PUTOUT is '受払日付';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.PERSON is '受払担当者';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATE_DATE is '登録日付';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATER is '登録者';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATE_PROGRAM is '登録プログラムID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_DATE is '更新日付';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATER is '更新者';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_PROGRAM is '更新プログラムID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_COUNT is '更新回数';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.DELETE_FLAG is '削除フラグ';

