create table online_business_application (
	objid varchar(50) not null, 
	state varchar(20) not null, 
	dtcreated datetime not null, 
	createdby_objid varchar(50) not null, 
	createdby_name varchar(100) not null, 
	controlno varchar(25) not null, 
	prevapplicationid varchar(50) not null, 
	business_objid varchar(50) not null, 
	appyear int not null, 
	apptype varchar(20) not null, 
	appdate date not null, 
	lobs text not null, 
	infos longtext not null, 
	requirements longtext not null, 
	step int not null,
	constraint pk_online_business_application primary key (objid) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8
; 

create index ix_state on online_business_application (state);
create index ix_dtcreated on online_business_application (dtcreated);
create index ix_controlno on online_business_application (controlno);
create index ix_prevapplicationid on online_business_application (prevapplicationid);
create index ix_business_objid on online_business_application (business_objid);
create index ix_appyear on online_business_application (appyear);
create index ix_appdate on online_business_application (appdate);

alter table online_business_application add constraint fk_online_business_application_prevapplicationid 
	foreign key (prevapplicationid) references business_application (objid) 
; 
alter table online_business_application add constraint fk_online_business_application_business_objid 
	foreign key (business_objid) references business (objid) 
; 


create table online_business_application_pending (
	objid varchar(50) not null, 
	constraint pk_online_business_application_pending primary key (objid) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8
; 
alter table online_business_application_pending add constraint fk_online_business_application_pending_objid
	foreign key (objid) references online_business_application (objid) 
; 


drop view if exists vw_online_business_application 
;
create view vw_online_business_application  as 
select 
	oa.objid, oa.state, oa.dtcreated, oa.createdby_objid, oa.createdby_name, 
	oa.controlno, oa.apptype, oa.appyear, oa.appdate, oa.prevapplicationid, 
	oa.business_objid, b.bin, b.tradename, b.businessname, b.address_text, 
	b.address_objid, b.owner_name, b.owner_address_text, b.owner_address_objid,  
	b.yearstarted, b.orgtype, b.permittype, b.officetype, oa.step  
from online_business_application oa 
	inner join business_application a on a.objid = oa.prevapplicationid 
	inner join business b on b.objid = a.business_objid 
; 


drop view if exists vw_online_business_application_pending
;
create view vw_online_business_application_pending as 
select oa.* 
from online_business_application_pending p 
	inner join vw_online_business_application oa on oa.objid = p.objid 
; 

