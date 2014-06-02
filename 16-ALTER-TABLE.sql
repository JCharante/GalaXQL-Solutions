CREATE TABLE alter_test (id INTEGER PRIMARY KEY, data TEXT NOT NULL); \
INSERT INTO alter_test (data) 
VALUES ('Foo'); 

INSERT INTO alter_test (data) 
VALUES ('Bar'); 

INSERT INTO alter_test (data) 
VALUES ('Baz');

ALTER TABLE alter_test RENAME TO my_table;
ALTER TABLE my_table ADD COLUMN moredata TEXT;

SELECT * FROM my_table

UPDATE my_table SET moredata="I have been updated with just one query!" WHERE id>0 and id<4;
SELECT * FROM my_table;
