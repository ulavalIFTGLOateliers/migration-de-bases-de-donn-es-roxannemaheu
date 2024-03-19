CREATE TABLE band (bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY(bandName));
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna", 2009, "classical"), ("Mysterio", 2019, "pop");

ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);
ALTER TABLE musician RENAME COLUMN singerName to musicianName;

UPDATE musician M SET M.role = "vocals" WHERE musicianName = "Alina";
UPDATE musician M SET M.role = "guitar" WHERE musicianName = "Mysterio";
UPDATE musician M SET M.role = "percussion" WHERE musicianName = "Rainbow";
UPDATE musician M SET M.role = "piano" WHERE musicianName = "Luna";

UPDATE musician M SET M.bandName = "Crazy Duo" WHERE musicianName = "Alina";
UPDATE musician M SET M.bandName = "Mysterio" WHERE musicianName = "Mysterio";
UPDATE musician M SET M.bandName = "Crazy Duo" WHERE musicianName = "Rainbow";
UPDATE musician M SET M.bandName = "Luna" WHERE musicianName = "Luna";