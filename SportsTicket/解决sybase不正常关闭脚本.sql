-- select * from dbo.TICKETDRAW

-- insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710010461814','18718842088','','0','0','0')
drop table TICKETDRAW

create table dbo.TICKETDRAW (
   ID                   numeric(19)                    identity,
   CrdNo                char(21)                       not null,
   SgnMob               char(11)                       not null,
   MobTel               char(11)                       default '' not null,
   Drawlevel            char(1)                        default '0' not null,
   RecvSign             char(1)                        default '0' not null,
   NO                   numeric(19)                    default 0 not null,
   constraint PK_LOTTDRAW primary key (ID)
         on "default"
)

insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710010461814','18718842088','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('62225807103600216','13719337206','','0','0',  0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710006191201','13928832227','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710005986171','13600092330','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710001690892','13711105137','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710009839046','13751726577','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710007313648','13631321042','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710009941974','13922307520','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222620710000143956','13823660314','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710008136956','13632447775','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710008136956','13632447775','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('60142870719460404','18602053513','','0','0',  0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710010068783','13925170305','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222620710000027530','18629407047','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710009527468','15820268068','','0','0',0)
insert into TICKETDRAW(CrdNo, SgnMob, MobTel, Drawlevel, RecvSign, NO) values('6222600710007815865','13570959854','','0','0',0)

