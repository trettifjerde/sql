UPDATE messages
INNER JOIN users ON messages.user_name=users.full_name
SET messages.user_id=users.id
WHERE messages.user_name=users.full_name;

ALTER TABLE messages
DROP COLUMN user_name;