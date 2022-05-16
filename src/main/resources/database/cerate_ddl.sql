-- Project Name : StockManagement 
-- Date/Time    : 2022/05/17 7:51:15
-- Author       : ���䐒�m
-- RDBMS Type   : Oracle Database
-- Application  : A5:SQL Mk-2

-- �󕥗v���}�X�^
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

-- �󕥋敪�}�X�^
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

-- ���[�U�[�}�X�^
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

-- �i���}�X�^
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

-- �݌Ƀ}�X�^
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

-- �󕥗����e�[�u��
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

comment on table FACTOR_OF_RECEPTION_OR_PUTOUT_MST is '�󕥗v���}�X�^';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.FACTOR_ID is '�󕥗v��ID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.FACTOR is '�󕥗v��';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATE_DATE is '�o�^���t';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATER is '�o�^��';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_DATE is '�X�V���t';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATER is '�X�V��';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.UPDATE_COUNT is '�X�V��';
comment on column FACTOR_OF_RECEPTION_OR_PUTOUT_MST.DELETE_FLAG is '�폜�t���O';

comment on table RECEPTION_OR_PUTOUT_MST is '�󕥋敪�}�X�^';
comment on column RECEPTION_OR_PUTOUT_MST.RECEPTION_OR_PUTOUT_ID is '�󕥋敪ID';
comment on column RECEPTION_OR_PUTOUT_MST.RECEPTION_OR_PUTOUT is '��';
comment on column RECEPTION_OR_PUTOUT_MST.CREATE_DATE is '�o�^���t';
comment on column RECEPTION_OR_PUTOUT_MST.CREATER is '�o�^��';
comment on column RECEPTION_OR_PUTOUT_MST.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_DATE is '�X�V���t';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATER is '�X�V��';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column RECEPTION_OR_PUTOUT_MST.UPDATE_COUNT is '�X�V��';
comment on column RECEPTION_OR_PUTOUT_MST.DELETE_FLAG is '�폜�t���O';

comment on table USER_MST is '���[�U�[�}�X�^';
comment on column USER_MST.USER_ID is '���[�U�[ID';
comment on column USER_MST.USER_NAME is '���[�U�[��';
comment on column USER_MST.PASSWORD is '�p�X���[�h';
comment on column USER_MST.CREATE_DATE is '�o�^���t';
comment on column USER_MST.CREATER is '�o�^��';
comment on column USER_MST.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column USER_MST.UPDATE_DATE is '�X�V���t';
comment on column USER_MST.UPDATER is '�X�V��';
comment on column USER_MST.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column USER_MST.UPDATE_COUNT is '�X�V��';
comment on column USER_MST.DELETE_FLAG is '�폜�t���O';

comment on table PRODUCT_MST is '�i���}�X�^';
comment on column PRODUCT_MST.PRODUCT_ID is '�i��ID';
comment on column PRODUCT_MST.PRODUCT is '�i��';
comment on column PRODUCT_MST.CREATE_DATE is '�o�^���t';
comment on column PRODUCT_MST.CREATER is '�o�^��';
comment on column PRODUCT_MST.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column PRODUCT_MST.UPDATE_DATE is '�X�V���t';
comment on column PRODUCT_MST.UPDATER is '�X�V��';
comment on column PRODUCT_MST.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column PRODUCT_MST.UPDATE_COUNT is '�X�V��';
comment on column PRODUCT_MST.DELETE_FLAG is '�폜�t���O';

comment on table STOCK_MST is '�݌Ƀ}�X�^';
comment on column STOCK_MST.PRODUCT_ID is '�i��ID';
comment on column STOCK_MST.QUANTITY is '����';
comment on column STOCK_MST.CREATE_DATE is '�o�^���t';
comment on column STOCK_MST.CREATER is '�o�^��';
comment on column STOCK_MST.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column STOCK_MST.UPDATE_DATE is '�X�V���t';
comment on column STOCK_MST.UPDATER is '�X�V��';
comment on column STOCK_MST.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column STOCK_MST.UPDATE_COUNT is '�X�V��';
comment on column STOCK_MST.DELETE_FLAG is '�폜�t���O';

comment on table HISTORY_OF_RECEPTION_OR_PUTOUT_TBL is '�󕥗����e�[�u��';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.HISTORY_ID is '�󕥗���ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.PRODUCT_ID is '�i��ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.RECEPTION_OR_PUTOUT_ID is '�󕥋敪ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.FACTOR_ID is '�󕥗v��ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.QUANTITY is '�󕥐���';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.DATE_OF_RECEPTION_OR_PUTOUT is '�󕥓��t';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.PERSON is '�󕥒S����';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATE_DATE is '�o�^���t';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATER is '�o�^��';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.CREATE_PROGRAM is '�o�^�v���O����ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_DATE is '�X�V���t';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATER is '�X�V��';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_PROGRAM is '�X�V�v���O����ID';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.UPDATE_COUNT is '�X�V��';
comment on column HISTORY_OF_RECEPTION_OR_PUTOUT_TBL.DELETE_FLAG is '�폜�t���O';

