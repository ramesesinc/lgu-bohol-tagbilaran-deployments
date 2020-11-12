
insert into sys_email_template (objid, subject, message)
values('eor', 'EOR No ${receiptno}', 'Dear valued customer <br>Please see attached Electronic OR. This is an electronic transaction. Do not reply')
;


insert into epayment_plugin (objid, connection, servicename)
values('waterworks', 'waterworks', 'WaterworksOnlineBillingService')
;

