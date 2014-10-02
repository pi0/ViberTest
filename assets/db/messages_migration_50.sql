--remove CONSTRAINT

CREATE TABLE participants_info_temp (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,native_contact_id INTEGER DEFAULT 0,
viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1, 
has_contact_name INTEGER DEFAULT 0, native_photo_id LONG DEFAULT 0, has_photo INTEGER DEFAULT 0);

INSERT INTO participants_info_temp 
(_id, number, display_name, contact_name, contact_id, native_contact_id, viber_name, viber_image, location_lat, location_lng, location_date, participant_type, has_contact_name, native_photo_id, has_photo) 
SELECT _id, number, display_name, contact_name, contact_id, native_contact_id, viber_name, viber_image, location_lat, location_lng, location_date, participant_type, has_contact_name, native_photo_id, has_photo
FROM participants_info;

DROP TABLE IF EXISTS participants_info;
ALTER TABLE participants_info_temp RENAME TO participants_info;