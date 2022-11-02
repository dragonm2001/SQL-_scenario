CREATE EXTENSION file_fdw;

CREATE SERVER mydatasrv1 FOREIGN DATA WRAPPER file_fdw;

CREATE FOREIGN TABLE mydata1 (x INTEGER, y INTEGER)
    SERVER mydatasrv1
    OPTIONS (filename '/home/postgres/data.csv', format 'csv');

SELECT * FROM mydata1;
