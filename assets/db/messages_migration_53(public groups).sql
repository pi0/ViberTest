ALTER TABLE participants ADD COLUMN group_role INTEGER DEFAULT 0;
ALTER TABLE messages ADD COLUMN message_global_id INTEGER DEFAULT 0;

