-- CREATE Parts
# DataBase 생성
# CREATE DATABASE {원하는 DB 이름};
create database test;

# 모든 DataBase 보기
show databases;

# 사용할 DataBase 선택
# USE {DB 이름};
use test;

# Table 생성
/* CREATE TABLE {원하는 테이블 이름} ( 
	필드명1 타입(자리수) 조건,
    필드명2 타입 조건,
    ...,
    PRIMARY KEY(위의 필드명 중 하나)
); */
create table test1 (
	id varchar(10),
    pw varchar(10),
    name varchar(10),
    address varchar(10)
);

-- ALTER Parts
# alter database {database 이름} character set={문자집합이름};
# alter database {database 이름} collate={콜레이션이름};
alter database test character set=euckr collate=euckr_korean_ci;

# test1 테이블에 age 필드 추가
# ALTER TABLE {테이블 이름} ADD {new 필드명} {필드 타입};
alter table test1
add Age int;

# test1 테이블에 age 필드 삭제
# ALTER TABLE {테이블 이름} DROP {필드명};
alter table test1
drop Age;

# test1 테이블의 age 필드 타입 변경
# ALTER TABLE {테이블 이름} MODIFY COLUMN {필드명} {new 필드 타입};
alter table test1
modify column Age varchar(10);

-- DROP Parts
# hotel DB 삭제
# DROP DATABASE {데이터베이스명};
drop database hotel;

# test DB의 temp Table 삭제
# DROP TABLE {테이블명};
drop table temp;

# test DB의 temp Table의 데이터만 지우기
# TRUNCATE TABLE {테이블명};
truncate table temp;

/* 해당 DB 혹은 Table이 없는데 drop을 시도하는 경우 -> 오류 발생,
 if exists 구문을 사용하여 DB 혹은 Table이 존재하는지 확인하고 삭제 -> 오류 발생 x
 ex) drop database if exists hotel;
 ex) drop table if exists temp; */