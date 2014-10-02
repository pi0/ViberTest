--add new column
ALTER TABLE participants_info ADD COLUMN native_photo_id LONG DEFAULT 0;
ALTER TABLE participants_info ADD COLUMN has_photo INTEGER DEFAULT 0;

-- add and UPDATE column with media items in conversation
ALTER TABLE conversations ADD COLUMN media_msg_count INTEGER DEFAULT 0;
UPDATE conversations SET  media_msg_count = (SELECT COUNT() FROM messages WHERE (messages.deleted IS NULL OR messages.deleted = 0) AND conversations._id = messages.conversation_id AND extra_mime IN ('image', 'video', 'animated_message'));

-- add and UPDATE column with date for UI in messages
ALTER TABLE messages ADD COLUMN date_real LONG DEFAULT 0;
UPDATE messages SET  date_real = date;