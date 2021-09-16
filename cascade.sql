ALTER TABLE  `board` DROP FOREIGN KEY  `attach_ibfk_2` ;
ALTER TABLE  `board` ADD FOREIGN KEY (  `dept_no` ) REFERENCES  `test`.`dept` (
`dept_no`
) ON DELETE CASCADE ON UPDATE CASCADE