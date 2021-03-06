--------------------------------------------------------
-- Archivo creado  - jueves-abril-27-2017   
--------------------------------------------------------
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.INVIERTE mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.INVIERTE 
(
  DNI CHAR(8 BYTE) NOT NULL 
, NOMBREE CHAR(20 BYTE) NOT NULL 
, CANTIDAD FLOAT(126) 
, TIPO CHAR(10 BYTE) NOT NULL 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.CLIENTE mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.CLIENTE 
(
  DNI CHAR(8 BYTE) NOT NULL 
, NOMBREC CHAR(30 BYTE) 
, DIRECCION VARCHAR2(50 BYTE) 
, TELEFONO CHAR(12 BYTE) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.COMPRASACUMULADAS mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.COMPRASACUMULADAS 
(
  DNI CHAR(8 BYTE) NOT NULL 
, TOTALCOMPRA NUMBER(*, 0) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.INVIERTE_AAAAAAA mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.INVIERTE_AAAAAAA 
(
  DNI VARCHAR2(8 BYTE) 
, CANTIDAD FLOAT(126) 
, TIPO VARCHAR2(20 BYTE) 
, NUMSEC NUMBER NOT NULL 
, CONSTRAINT SYS_C0026617 PRIMARY KEY 
  (
    NUMSEC 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.EMPRESA mientras que DBMS_METADATA intenta utilizar el generador interno.
ALTER TABLE ABD0309.EMPRESA
ADD CONSTRAINT SYS_C0024462 CHECK 
(CAPITAL > 0)
ENABLECREATE TABLE ABD0309.EMPRESA 
(
  NOMBREE CHAR(20 BYTE) NOT NULL 
, COTIZACION NUMBER(*, 0) DEFAULT 99 
, CAPITAL FLOAT(126) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.COMPRAS mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.COMPRAS 
(
  DNI CHAR(8 BYTE) NOT NULL 
, NUMT NUMBER(*, 0) 
, NUMF NUMBER(*, 0) 
, FECHA NUMBER(*, 0) 
, TIENDA CHAR(20 BYTE) 
, IMPORTE NUMBER(*, 0) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.INVERSIONES_NOMBREEMPRESA mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.INVERSIONES_NOMBREEMPRESA 
(
  DNI VARCHAR2(8 BYTE) 
, CANTIDAD FLOAT(126) 
, TIPO VARCHAR2(20 BYTE) 
, NUMSEC NUMBER NOT NULL 
, CONSTRAINT SYS_C0026631 PRIMARY KEY 
  (
    NUMSEC 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.INVERSIONES_ALBERTOSA mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.INVERSIONES_ALBERTOSA 
(
  DNI VARCHAR2(8 BYTE) 
, CANTIDAD FLOAT(126) 
, TIPO VARCHAR2(20 BYTE) 
, NUMSEC NUMBER NOT NULL 
, CONSTRAINT SYS_C0026646 PRIMARY KEY 
  (
    NUMSEC 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.INVERSIONES_B mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.INVERSIONES_B 
(
  DNI VARCHAR2(8 BYTE) 
, CANTIDAD FLOAT(126) 
, TIPO VARCHAR2(20 BYTE) 
, NUMSEC NUMBER NOT NULL 
, CONSTRAINT SYS_C0026632 PRIMARY KEY 
  (
    NUMSEC 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.LOGCOMPRA mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.LOGCOMPRA 
(
  SECUENCIA NUMBER NOT NULL 
, DNI CHAR(8 BYTE) NOT NULL 
, NUMT NUMBER(*, 0) 
, NUMF NUMBER(*, 0) 
, FECHA NUMBER(*, 0) 
, TIENDA CHAR(20 BYTE) 
, IMPORTE NUMBER(*, 0) 
, CONSTRAINT SYS_C0027755 PRIMARY KEY 
  (
    SECUENCIA 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.MOROSO mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.MOROSO 
(
  DNI CHAR(8 BYTE) NOT NULL 
, NOMBREC CHAR(30 BYTE) 
, DIRECCION VARCHAR2(50 BYTE) 
, TELEFONO CHAR(12 BYTE) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.PUESTO mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.PUESTO 
(
  DNI CHAR(8 BYTE) NOT NULL 
, TITULO VARCHAR2(30 BYTE) 
, SUELDO FLOAT(126) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.TARJETA mientras que DBMS_METADATA intenta utilizar el generador interno.
ALTER TABLE ABD0309.TARJETA
ADD CONSTRAINT SYS_C0024468 CHECK 
(NUMT != 0)
ENABLE
ALTER TABLE ABD0309.TARJETA
ADD CONSTRAINT SYS_C0024469 CHECK 
(TIPOT IN ('VXK', 'COSA', 'PISA'))
ENABLECREATE TABLE ABD0309.TARJETA 
(
  NUMT NUMBER(*, 0) 
, TIPOT CHAR(10 BYTE) 
, ORGANIZACION CHAR(20 BYTE) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
-- No se ha podido presentar el DDL TABLE para el objeto ABD0309.TIENET mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE TABLE ABD0309.TIENET 
(
  DNI CHAR(8 BYTE) NOT NULL 
, NUMT NUMBER(*, 0) NOT NULL 
, CADUCIDAD NUMBER(*, 0) 
, SALDO FLOAT(126) 
) 
LOGGING 
TABLESPACE "ESPABD0309" 
PCTFREE 10 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS 2147483645 
  BUFFER_POOL DEFAULT 
)
REM INSERTING into ABD0309.INVIERTE
SET DEFINE OFF;
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000002','Empresa 55          ','210000','bono1     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000002','Empresa 55          ','220000','bono2     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000002','Empresa 55          ','230000','bono3     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000002','Empresa 44          ','240000','bono4     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000003','Empresa 55          ','310000','bono1     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000003','Empresa 33          ','320000','bono2     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000004','Empresa 22          ','410000','bono1     ');
Insert into ABD0309.INVIERTE (DNI,NOMBREE,CANTIDAD,TIPO) values ('00000004','Empresa 22          ','420000','bono2     ');
REM INSERTING into ABD0309.CLIENTE
SET DEFINE OFF;
Insert into ABD0309.CLIENTE (DNI,NOMBREC,DIRECCION,TELEFONO) values ('00000001','trans---2                     ','bbbb','8559848     ');
REM INSERTING into ABD0309.COMPRASACUMULADAS
SET DEFINE OFF;
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000002','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000003','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000004','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000002','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000003','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000004','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000005','10');
Insert into ABD0309.COMPRASACUMULADAS (DNI,TOTALCOMPRA) values ('00000005','10');
REM INSERTING into ABD0309.INVIERTE_AAAAAAA
SET DEFINE OFF;
REM INSERTING into ABD0309.EMPRESA
SET DEFINE OFF;
Insert into ABD0309.EMPRESA (NOMBREE,COTIZACION,CAPITAL) values ('Empresa 11          ','111111','110000');
Insert into ABD0309.EMPRESA (NOMBREE,COTIZACION,CAPITAL) values ('Empresa 22          ','222222','220000');
Insert into ABD0309.EMPRESA (NOMBREE,COTIZACION,CAPITAL) values ('Empresa 33          ','333333','330000');
Insert into ABD0309.EMPRESA (NOMBREE,COTIZACION,CAPITAL) values ('Empresa 44          ','444444','440000');
Insert into ABD0309.EMPRESA (NOMBREE,COTIZACION,CAPITAL) values ('Empresa 55          ','555555','550000');
REM INSERTING into ABD0309.COMPRAS
SET DEFINE OFF;
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000550','1','521','tienda40            ','50');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000650','1','501','tienda50            ','5');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000750','2','502','tienda60            ','500');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000555','1','521','tienda70            ','50');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000655','1','501','tienda80            ','5');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000755','2','502','tienda90            ','500');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','90000500','1','521','tienda4             ','50');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000500','1','521','tienda4             ','50');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000600','1','501','tienda5             ','5');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000700','2','502','tienda6             ','500');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000505','1','521','tienda7             ','50');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000605','1','501','tienda8             ','5');
Insert into ABD0309.COMPRAS (DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('00000005','50000705','2','502','tienda9             ','500');
REM INSERTING into ABD0309.INVERSIONES_NOMBREEMPRESA
SET DEFINE OFF;
REM INSERTING into ABD0309.INVERSIONES_ALBERTOSA
SET DEFINE OFF;
REM INSERTING into ABD0309.INVERSIONES_B
SET DEFINE OFF;
REM INSERTING into ABD0309.LOGCOMPRA
SET DEFINE OFF;
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('2','00000005','90000500','1','521','tienda4             ','50');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('3','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('4','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('5','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('6','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('7','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('8','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('9','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('10','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('11','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('12','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('13','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('14','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('15','00000005','50000400','1','501','tienda1             ','10000');
Insert into ABD0309.LOGCOMPRA (SECUENCIA,DNI,NUMT,NUMF,FECHA,TIENDA,IMPORTE) values ('34','00000005','50000400','1','501','tienda1             ','10000');
REM INSERTING into ABD0309.MOROSO
SET DEFINE OFF;
Insert into ABD0309.MOROSO (DNI,NOMBREC,DIRECCION,TELEFONO) values ('00000003','Client B                      ','direc 13','911111111113');
Insert into ABD0309.MOROSO (DNI,NOMBREC,DIRECCION,TELEFONO) values ('00000007','Client E                      ','direc 17','911111111117');
Insert into ABD0309.MOROSO (DNI,NOMBREC,DIRECCION,TELEFONO) values ('00000005','Client A                      ','direc 11','911111111115');
Insert into ABD0309.MOROSO (DNI,NOMBREC,DIRECCION,TELEFONO) values ('00000006','Client D                      ','direc 16','911111111116');
REM INSERTING into ABD0309.PUESTO
SET DEFINE OFF;
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000001','cajera','300');
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000002','estudiante','301');
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000003','Presidente','30000');
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000004','VicePresidente','3000');
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000005','Presidente','30000');
Insert into ABD0309.PUESTO (DNI,TITULO,SUELDO) values ('00000006','Parado','0');
REM INSERTING into ABD0309.TARJETA
SET DEFINE OFF;
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('10000001','PISA      ','MASTERUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('30000002','PISA      ','MASTERUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('50000003','PISA      ','MASTERUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('10','COSA      ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('30000020','COSA      ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('50000030','COSA      ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('100','VXK       ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('40000200','VXK       ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('30000300','VXK       ','MENOSRUIN           ');
Insert into ABD0309.TARJETA (NUMT,TIPOT,ORGANIZACION) values ('50000400','VXK       ','MENOSRUIN           ');
REM INSERTING into ABD0309.TIENET
SET DEFINE OFF;
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000001','10000001','901','30');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000003','30000002','901','30');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000003','30000020','901','300');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000003','30000300','901','3000');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000004','40000200','901','40');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000005','50000003','901','50');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000005','50000030','901','500');
Insert into ABD0309.TIENET (DNI,NUMT,CADUCIDAD,SALDO) values ('00000005','50000400','901','50000');
-- No se ha podido presentar el DDL INDEX para el objeto ABD0309.SYS_C0026617 mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE INDEX ABD0309.SYS_C0026617 ON ()
-- No se ha podido presentar el DDL INDEX para el objeto ABD0309.SYS_C0026631 mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE INDEX ABD0309.SYS_C0026631 ON ()
-- No se ha podido presentar el DDL INDEX para el objeto ABD0309.SYS_C0026646 mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE INDEX ABD0309.SYS_C0026646 ON ()
-- No se ha podido presentar el DDL INDEX para el objeto ABD0309.SYS_C0026632 mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE INDEX ABD0309.SYS_C0026632 ON ()
-- No se ha podido presentar el DDL INDEX para el objeto ABD0309.SYS_C0027755 mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE INDEX ABD0309.SYS_C0027755 ON ()
-- No se ha podido presentar el DDL TRIGGER para el objeto ABD0309.INSERTO_COMPRAS mientras que DBMS_METADATA intenta utilizar el generador interno.
CREATE trigger ABD0309.inserto_compras after insert on COMPRAS
for each row
declare
seq number;
BEGIN
select seq_log.nextval into seq from dual;
insert into logcompra values (seq, :new.dni, :new.numt, :new.numf, :new.fecha, :new.tienda, :new.importe);
END;
