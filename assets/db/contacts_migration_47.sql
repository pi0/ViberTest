--add new column
ALTER TABLE phonebookcontact  ADD COLUMN native_id INTEGER DEFAULT 0;
ALTER TABLE phonebookrawcontact  ADD COLUMN native_id INTEGER DEFAULT 0;
ALTER TABLE phonebookdata  ADD COLUMN native_id INTEGER DEFAULT 0;

--set native_id equal to _id, because _id and native_id equal for primary devices
UPDATE phonebookcontact SET native_id = _id;
UPDATE phonebookrawcontact SET native_id = _id;
UPDATE phonebookdata SET native_id = _id;

--add new metadata columns for secondary number
ALTER TABLE phonebookdata ADD COLUMN clear INTEGER DEFAULT 0;