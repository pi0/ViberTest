--add viber out and country code columns for contacts and numbers
ALTER TABLE phonebookdata ADD COLUMN int_data2 INTEGER DEFAULT 0;
ALTER TABLE phonebookcontact ADD COLUMN viber_out BOOLEAN DEFAULT FALSE;