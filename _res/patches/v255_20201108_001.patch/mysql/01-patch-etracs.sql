
drop view if exists vw_online_business_application_pending;

drop table if exists online_business_application_pending;

INSERT INTO sys_usergroup (objid, title, domain, userclass, orgclass, role) 
VALUES ('BPLS.ONLINE_DATA_APPROVER', 'BPLS - ONLINE DATA APPROVER', 'BPLS', 'usergroup', NULL, 'ONLINE_DATA_APPROVER');


alter table online_business_application add (
	dtapproved datetime null, 
	approvedby_objid varchar(50) null, 
	approvedby_name varchar(150) null, 
	approvedappno varchar(25) null 
)
;
create index ix_dtapproved on online_business_application (dtapproved);
create index ix_approvedby_objid on online_business_application (approvedby_objid);
create index ix_approvedby_name on online_business_application (approvedby_name);

