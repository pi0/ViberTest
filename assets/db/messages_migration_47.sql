--add new column
ALTER TABLE participants_info ADD COLUMN native_contact_id INTEGER DEFAULT 0;

--set native_id equal to _id, because _id and native_id equal for primary devices
UPDATE participants_info SET native_contact_id = contact_id;

--According to our spelling mistake we have to change "Viber Video" folder to "Viber Videos" and change it's uri in db:
UPDATE messages SET extra_uri = replace(extra_uri,  'Viber%20Video', 'Viber%20Videos' ) WHERE extra_mime = "video";

update [participants_info] set [contact_id] = 0 where [contact_id] < 0;
update [participants] set [active] = 0 where [participants].[participant_info_id] = (SELECT [_id] FROM [participants_info] WHERE [participant_type] = 0);