ALTER TABLE phonebookcontact ADD COLUMN phonetic_name TEXT;
ALTER TABLE phonebookcontact ADD COLUMN phone_label TEXT;
UPDATE phonebookcontact SET  phone_label = substr(low_display_name, 0, 2);