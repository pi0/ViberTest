--Conversation, уникальные recipient_number и group_id
CREATE TABLE conversations (_id INTEGER PRIMARY KEY autoincrement,conversation_type INTEGER DEFAULT 0,group_id INTEGER DEFAULT 0,recipient_number TEXT,share_location INTEGER DEFAULT 0,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0,name TEXT,background_landscape TEXT, background_portrait TEXT, smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER, flags INTEGER DEFAULT 0,date LONG DEFAULT 0,last_message_id LONG DEFAULT 0,read_notification_token LONG DEFAULT 0,participant_id_1 LONG DEFAULT 0,participant_id_2 LONG DEFAULT 0,participant_id_3 LONG DEFAULT 0,participant_id_4 LONG DEFAULT 0,participant_id_5 LONG DEFAULT 0,participant_id_6 LONG DEFAULT 0,participant_id_7 LONG DEFAULT 0,participant_id_8 LONG DEFAULT 0);
CREATE INDEX conversation_date_desc ON conversations (date DESC);

--Перенести групповые чаты
INSERT INTO [conversations] ([conversation_type], [group_id], [recipient_number], [share_location], [message_draft], [unread_message_count], [unread_calls_count], [deleted], [delete_token], [name], [background_landscape], [background_portrait], [smart_notification], [smart_event_date], [mute_notification], [flags], [date])
              SELECT 1, [threads].[_id], NULL, [threads].[share_location], [threads].[message_draft], [threads].[unread_message_count], [threads].[unread_calls_count], [threads].[deleted], [threads].[delete_token], [groups].[name], [groups].[background_landscape], [groups].[background_portrait], [groups].[smart_notification], [groups].[smart_event_date], [groups].[mute_notification], 0, [threads].[date] FROM [groups], [threads] WHERE [groups].[thread_id] = [threads].[_id] AND [threads].[recipient_number] = 'groupEntity';              
--Перенести 1to1 чаты
INSERT INTO [conversations] ([conversation_type], [group_id], [recipient_number], [share_location], [message_draft], [unread_message_count], [unread_calls_count], [deleted], [delete_token], [name], [background_landscape], [background_portrait], [smart_notification], [smart_event_date], [mute_notification], [flags], [date])
              SELECT 0, NULL, [threads].[recipient_number], [threads].[share_location], [threads].[message_draft], [threads].[unread_message_count], [threads].[unread_calls_count], [threads].[deleted], [threads].[delete_token], [groups].[name], [groups].[background_landscape], [groups].[background_portrait], [groups].[smart_notification], [groups].[smart_event_date], [groups].[mute_notification], 0, [threads].[date] FROM [groups], [threads] WHERE [groups].[thread_id] = [threads].[_id] AND NOT [threads].[recipient_number] = 'groupEntity';
--Флаг для системных чатов
UPDATE [conversations] SET [flags] = 1 WHERE [recipient_number] = 'Viber';

--1to1 сообщения должны иметь thread_id = 0
UPDATE [messages] SET [thread_id] = 0 WHERE [thread_id] NOT IN(SELECT [group_id] FROM [conversations] WHERE [conversation_type] = 1);
--Найти последнее сообщения
UPDATE [conversations] SET [last_message_id] = (SELECT [messages].[_id] FROM [conversations] as [conv] LEFT JOIN [messages] ON [conv].[recipient_number] = [messages].[address] WHERE [conv].[group_id] IS NULL AND [messages].[thread_id] = 0 AND [conv].[_id] = [conversations].[_id] ORDER BY [messages].[date] DESC LIMIT 1) WHERE [conversations].[conversation_type] = 0;
UPDATE [conversations] SET [last_message_id] = (SELECT [messages].[_id] FROM [conversations] as [conv] LEFT JOIN [messages] ON [conv].[group_id] = [messages].[thread_id] WHERE [conv].[recipient_number] IS NULL AND [messages].[thread_id] != 0 AND [conv].[_id] = [conversations].[_id] ORDER BY [messages].[date] DESC LIMIT 1) WHERE  [conversations].[conversation_type] = 1;

--Удалить старые таблицы
DROP TABLE IF EXISTS [groups];
DROP TABLE IF EXISTS [threads];

--Создать participants_info
CREATE TABLE participants_info (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1,has_contact_name INTEGER DEFAULT 0, CONSTRAINT [unum] UNIQUE([number]));
--Перенести список участников
INSERT INTO [participants_info] ([number], [display_name], [contact_name], [contact_id], [viber_name], [viber_image], [location_lat], [location_lng], [location_date], [participant_type])
                           SELECT [number], [display_name], [contact_name], [contact_id], [display_name], [display_image], NULL, NULL, NULL, [participant_type] FROM [participants] GROUP BY [number] ORDER BY [display_name] DESC;
--Заполнить display_name
UPDATE [participants_info] SET [display_name] = NULL WHERE ([viber_name] IS NULL AND [contact_name] IS NULL) OR ([viber_name] = '' AND [contact_name] = '');
UPDATE [participants_info] SET [display_name] = [contact_name] WHERE [contact_name] NOT NULL;
UPDATE [participants_info] SET [display_name] = [viber_name] WHERE NOT ([viber_name] IS NULL OR [viber_name] = '') AND ([contact_name] IS NULL OR [contact_name] = '');
UPDATE [participants_info] SET [number] = NULL, [contact_name] = NULL, [viber_name] = NULL, [display_name] = NULL WHERE [number] = 'owner';
UPDATE [participants_info] SET [display_name] = NULL WHERE [display_name] = [number];
--Заполнить location info
UPDATE [participants_info] SET [location_lat] = (SELECT [location_lat] FROM [messages] WHERE [messages].[address] = [participants_info].[number] AND [location_lng] > 0 AND [location_lat] > 0 AND [type] = 0 ORDER BY [date] DESC LIMIT 1), 
       [location_lng] = (SELECT [location_lng] FROM [messages] WHERE [messages].[address] = [participants_info].[number] AND [location_lng] > 0 AND [location_lat] > 0 AND [type] = 0 ORDER BY [date] DESC LIMIT 1),
       [location_date] = (SELECT [date] FROM [messages] WHERE [messages].[address] = [participants_info].[number] AND [location_lng] > 0 AND [location_lat] > 0 AND [type] = 0 ORDER BY [date] DESC LIMIT 1) WHERE [participant_type] = 1;

--Создать список участников чата
ALTER TABLE [participants] RENAME TO [participants_tmp];
CREATE TABLE participants (_id INTEGER PRIMARY KEY autoincrement,conversation_id INTEGER DEFAULT 0, participant_info_id INTEGER DEFAULT 0, last_message_id INTEGER DEFAULT 0, active INTEGER DEFAULT TRUE);

--Участники 1to1 должны иметь thread_id = 0
UPDATE [participants_tmp] SET [thread_id] = 0 WHERE [thread_id] NOT IN(SELECT [group_id] FROM [conversations] WHERE [conversation_type] = 1);
--Удалить owner из 1to1
DELETE FROM [participants_tmp] WHERE [thread_id] = 0 AND [number] = "owner";

--Перенести список участников
--Внешние участники
INSERT INTO [participants] ([conversation_id], [participant_info_id], [active]) 
SELECT [conversations].[_id], [participants_info].[_id], [participants_tmp].[active] FROM [participants_tmp]
LEFT JOIN [conversations] ON [participants_tmp].[number] = [conversations].[recipient_number] AND [participants_tmp].[thread_id] = 0 OR [participants_tmp].[thread_id] = [conversations].[group_id] AND [conversations].[group_id] NOT NULL   
LEFT JOIN [participants_info] ON [participants_tmp].[number] = [participants_info].[number]
WHERE [participants_tmp].[number] != 'owner';

--Owner в групповых чатах
INSERT INTO [participants] ([conversation_id], [participant_info_id], [active]) 
SELECT [conversations].[_id], [participants_info].[_id], [participants_tmp].[active] FROM [participants_tmp]
LEFT JOIN [conversations] ON [participants_tmp].[thread_id] = [conversations].[group_id] AND [conversations].[conversation_type] = 1   
LEFT JOIN [participants_info] ON [participants_info].[participant_type] = 0
WHERE [participants_tmp].[number] = 'owner';

--Owner в 1to1
INSERT INTO [participants] ([conversation_id], [participant_info_id], [active]) 
SELECT [conversations].[_id], [participants_info].[_id], 0 FROM [conversations]
LEFT JOIN [participants_info] ON [participants_info].[participant_type] = 0
WHERE [conversations].[conversation_type] = 0;

--Удалить старую таблицу
DROP TABLE IF EXISTS [participants_tmp];

--Обновить список сообщений 
ALTER TABLE [messages] RENAME TO [messages_tmp];
CREATE TABLE messages (_id INTEGER PRIMARY KEY autoincrement,address TEXT DEFAULT NULL,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,body TEXT,sync_read INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG,location_lat LONG,location_lng LONG,has_extras INTEGER DEFAULT 0,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1,group_id INTEGER DEFAULT 0,conversation_id INTEGER DEFAULT 0,conversation_type INTEGER DEFAULT 0,participant_id DEFAULT 0, extra_flags INTEGER DEFAULT 0 );
INSERT INTO [messages] ([_id], [address], [date], [read], [opened], [status], [type], [body], [flag], [token], [location_lat], [location_lng], [has_extras], [extra_uri], [extra_mime], [extra_status], [seq], [extra_upload_id], [extra_download_id], [extra_bucket_name], [extra_duration], [fb_status], [twitter_status], [thumbnail_x], [thumbnail_y], [description], [deleted], [count], [group_id], [conversation_id], [conversation_type], [participant_id]) 
               SELECT [messages_tmp].[_id], [address], [messages_tmp].[date], [read], [opened], [status], [type], [body], [flag], [token], [messages_tmp].[location_lat], [messages_tmp].[location_lng], [has_extras], [extra_uri], [extra_mime], [extra_status], [seq], [extra_upload_id], [extra_download_id], [extra_bucket_name], [extra_duration], [fb_status], [twitter_status], [thumbnail_x], [thumbnail_y], [description], [messages_tmp].[deleted], [count], [conversations].[group_id], [conversations].[_id], [conversations].[conversation_type], [participants].[_id] 
               FROM [messages_tmp]
               LEFT JOIN [conversations] ON ([messages_tmp].[thread_id] = [conversations].[group_id] AND [conversations].[conversation_type] = 1) OR ([messages_tmp].[address] = [conversations].[recipient_number] AND [messages_tmp].[thread_id] = 0 AND [conversations].[conversation_type] = 0)
               LEFT JOIN [participants_info] ON [messages_tmp].[address] = [participants_info].[number] AND [messages_tmp].[type] = 0 OR [messages_tmp].[type] = 1 AND [participants_info].[participant_type] = 0             
               LEFT JOIN [participants] ON [participants].[conversation_id] = [conversations].[_id] AND [participants].[participant_info_id] = [participants_info].[_id];

UPDATE [messages] SET [address] = NULL WHERE [address] = "groupEntity";

--Удалить старую таблицу
DROP TABLE IF EXISTS [messages_tmp];

--Обновить последние сообщения участников
UPDATE [participants] SET [last_message_id] = (SELECT [messages].[_id] FROM [participants] as [part] LEFT JOIN [messages] ON [part].[_id] = [messages].[participant_id] WHERE [part].[_id] = [participants].[_id] ORDER BY [messages].[date] DESC LIMIT 1);

--Обновить список участников
UPDATE [conversations] SET [participant_id_1] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 0,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_2] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 1,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_3] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 2,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_4] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 3,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_5] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 4,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_6] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 5,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_7] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 6,1) WHERE [conversations].[conversation_type] = 1;
UPDATE [conversations] SET [participant_id_8] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] ORDER BY [participants].[last_message_id] DESC, [participants_info].[display_name] ASC, [participants_info].[number] ASC LIMIT 7,1) WHERE [conversations].[conversation_type] = 1;

UPDATE [conversations] SET [participant_id_1] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] AND [participants_info].[participant_type] = 1) WHERE [conversations].[conversation_type] = 0;
UPDATE [conversations] SET [participant_id_2] = (SELECT [participants_info].[_id] FROM [participants],[participants_info] WHERE [participants].[participant_info_id] = [participants_info].[_id] AND [participants].[conversation_id] = [conversations].[_id] AND [participants_info].[participant_type] = 0) WHERE [conversations].[conversation_type] = 0;