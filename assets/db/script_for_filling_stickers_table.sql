-- fill package table
INSERT INTO [stickers_packages]
select 400 as [_id], 0 as [flags], null as [package_name], 0 as [thumb_axis_shrink_factor], 0 as [menu_position], 0 as [visibility];

-- fill stickers table
-- flag 6 if sticker on board and has frame in asserts
-- flag 4 if sticker has frame in asserts
-- this flags were calculated with the help of class FlagUtils
INSERT INTO [stickers]
-- // Girl
select 400 as [_id], 400 as [package_id], 0 as [port_col_pos], 0 as [port_row_pos], 2 as [column_span], 2 as [row_span], 2 as [flags]
union select 401, 400, 2, 0, 1, 2, 6
union select 402, 400, 3, 0, 2, 1, 6
union select 403, 400, 3, 1, 2, 1, 6
--// HI!
union select 404, 400, 0, 0, 1, 1, 6
union select 405, 400, 1, 0, 2, 2, 6
union select 406, 400, 3, 0, 2, 2, 6
union select 407, 400, 0, 1, 1, 1, 6
--//
union select 408, 400, 0, 0, 2, 2, 4
union select 409, 400, 2, 0, 3, 2, 4
union select 410, 400, 0, 0, 3, 2, 4
union select 411, 400, 3, 0, 2, 2, 4
--// block
union select 412, 400, 0, 0, 2, 1, 4
union select 413, 400, 2, 0, 3, 2, 4
union select 414, 400, 0, 1, 1, 1, 4
union select 415, 400, 1, 1, 1, 1, 4
--// block
union select 416, 400, 0, 0, 3, 2, 4
union select 417, 400, 3, 0, 2, 2, 4
--// block
union select 418, 400, 0, 0, 2, 2, 4
union select 419, 400, 2, 0, 3, 2, 4
--// block
union select 420, 400, 0, 0, 2, 1, 4
union select 421, 400, 2, 0, 2, 2, 4
union select 422, 400, 4, 0, 1, 2, 4
union select 423, 400, 0, 1, 2, 1, 4
--// block
union select 424, 400, 0, 0, 1, 1, 4
union select 425, 400, 1, 0, 2, 1, 4
union select 426, 400, 3, 0, 2, 2, 4
union select 427, 400, 0, 1, 3, 1, 4
--// block
union select 428, 400, 0, 0, 2, 2, 4
union select 429, 400, 2, 0, 3, 2, 4
--// block
union select 430, 400, 0, 0, 2, 2, 4
union select 431, 400, 2, 0, 1, 2, 4
union select 432, 400, 3, 0, 2, 1, 4
union select 433, 400, 3, 1, 2, 1, 4
--// block
union select 434, 400, 0, 0, 2, 2, 4
union select 435, 400, 2, 0, 1, 1, 4
union select 436, 400, 3, 0, 2, 2, 4
union select 437, 400, 2, 1, 1, 1, 6
--// block
union select 438, 400, 0, 0, 3, 2, 4
union select 439, 400, 3, 0, 2, 2, 4
union select 440, 400, 0, 0, 2, 2, 4
union select 441, 400, 2, 0, 3, 2, 4
--// block
union select 442, 400, 0, 0, 1, 1, 4
union select 443, 400, 1, 0, 1, 1, 4
union select 444, 400, 2, 0, 1, 1, 4
union select 445, 400, 3, 0, 2, 2, 4
union select 446, 400, 0, 1, 3, 1, 4
--// block
union select 447, 400, 0, 0, 1, 2, 4
union select 448, 400, 1, 0, 1, 1, 4
union select 449, 400, 2, 0, 1, 1, 4
union select 450, 400, 3, 0, 2, 1, 4
union select 451, 400, 1, 1, 2, 1, 4
union select 452, 400, 3, 1, 1, 1, 4
union select 453, 400, 4, 1, 1, 1, 4
-- popup hardcoded stickers
union select -1, -1, 0, 0, 1, 1, 6
union select -2, -1, 0, 0, 1, 1, 6;
