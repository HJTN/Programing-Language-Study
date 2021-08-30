-- 제약 조건(Constraint)
/*	1. NOT NULL
	2. UNIQUE
    3. PRIMARY KEY
    4. FOREIGN KEY
    5. DEFAULT */

/*	1. NOT NULL
	-> 해당 필드는 NULL 값을 저장할 수 없음
    -> 무조건 데이터를 가지고 있어야 함
    - Grammar
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입} NOT NULL,
        ...
    );
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN {필드명} {필드 타입} NOT NULL; 
    ※ insert 시, 해당 필드를 생략할 수 없음*/
create table study (
	ID int not null,
    name varchar(20),
    reserveDate date,
    roomNum int
);
desc study;
insert into study(ID, name, reserveDate, roomNUm) values(10,'Hjtn', date(now()), 100);
select * from study;

/*	2. UNIQUE
	-> 해당 필드는 서로 다른 값을 가져야 함
    -> 중복된 값 저장 X
    -> 여러 필드에 설정 가능
    - Grammar
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입} UNIQUE,
        ...
    );
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입},
        ...
		CONSTRAINT {제약조건이름} UNIQUE(필드명)
    );
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN {필드명} {필드 타입} UNIQUE;
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN CONSTRAINT {제약조건이름} UNIQUE(필드명)
    ALTER TABLE {테이블명} DROP INDEX {제약조건이름} -> 제약조건 삭제
    ※ UNIQUE 제약조건 설정 시, 해당 필드는 자동으로 인덱스(INDEX)로 만들어짐 */
alter table study
add constraint reservedRoom unique(roomNum);
desc study;
insert into study(ID, name, roomNum) values(0, '홍', 818);
insert into study(ID, name, roomNum) values(0, '홍', 818);
select * from study;
alter table study
drop index reservedRoom;
desc study;

/*	3. PRIMARY KEY
	-> 해당 필드는 NOT NULL과 UNIQUE 제약조건의 특징을 모두 가짐
    -> 오직 하나의 필드만 설정
    -> 테이블의 데이터를 쉽고 빠르게 찾도록 도와줌
    - Grammar
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입} PRIMARY KEY,
        ...
    );
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입},
        ...
        CONSTRAINT {제약조건이름} PRIMARY KEY(필드명)
    );
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN {필드명} {필드 타입} PRIMARY KEY;
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN CONSTRAINT {제약조건이름} PRIMARY KEY(필드명);
    ALTER TABLE {테이블명} DROP PRIMARY KEY; -> 제약조건 삭제*/
    create table study(
	id int primary key,
    name varchar(20),
    reserveDate date,
    roomNum int
);
desc study;
insert into study(id, name) values(0, '홍');
insert into study(id, name) values(1, '김');
insert into study(id, name) values(1, '김');
select * from study;

/*	4. FOREIGN KEY
	-> 한 테이블을 다른 테이블로 연결하는 역할
    -> 외래 키가 설정된 테이블에 레코드 입력 시, 기준이 되는 테이블의 내용을 참조하여 레코드가 입력됨
    -> 하나의 테이블을 다른 테이블에 의존하게 만듦
    -> 참조되는 테이블의 필드에는 반드시 UNIQUE 혹은 PRIMARY KEY 제약조건이 설정되어 있어야 함
    - Grammar
    CREATE TABLE {테이블명} (
		{필드명} {필드 타입},
        ...
        CONSTRAINT {제약조건이름}
        FOREIGN KEY(필드명)
        REFERENCES {테이블명}(필드명)
    );
    ALTER TABLE {테이블명} ADD CONSTRAINT {제약조건이름} FOREIGN KEY(필드명) REFERENCES {테이블명}(필드명);
    ALTER TABLE {테이블명} DROP FOREIGN KEY {제약조건이름}; -> 제약조건 삭제 
    
    ※ ON DELETE, ON UPDATE
    -> 참조되는 테이블의 값이 삭제/수정될 경우의 동작 설정
    -> 종류 : 
		CASCADE : 참조되는 테이블에서 데이터 삭제 혹은 수정 시, 참조하는 테이블에서도 삭제 혹은 수정이 일어남
        SET NULL : 참조되는 테이블에서 데이터 삭제 혹은 수정 시, 참조하는 테이블의 데이터는 NULL로 변경됨
        NO ACTION : 참조되는 테이블에서 데이터 삭제 혹은 수정 시, 참조하는 테이블의 데이터는 변경 X
		SET DEFAULT : 참조되는 테이블에서 데이터 삭제 혹은 수정 시, 참조하는 테이블의 데이터는 필드의 기본값으로 설정
        RESTRICT : 참조하는 테이블에 데이터가 남아 있으면, 참조되는 테이블의 데이터를 삭제 혹은 수정이 불가능 */
CREATE TABLE Test1 (ID INT NOT NULL, PRIMARY KEY (ID));
CREATE TABLE Test2 (ID INT, ParentID INT, FOREIGN KEY (ParentID) REFERENCES Test1(ID) ON UPDATE CASCADE ON DELETE RESTRICT);
DESCRIBE Test2;
INSERT INTO Test1 (ID) VALUES(1);
INSERT INTO Test2 (ID, ParentID) VALUES(2, 1);
SELECT * FROM Test2;
DELETE FROM Test1 WHERE ID = 1;
update Test1 set ID = 2 where ID = 1;
select * from Test1;
SELECT * FROM Test2;

/*	5. DEFAULT
	-> 해당 필드의 기본값 설정
    -> 레코드 입력 시, 해당 필드 값이 전달되지 않으면 설정된 기본값 저장
    - Grammar
	CREATE TABLE {테이블명} (
		{필드명} {필드 타입} DEFAULT {기본값},
        ...
    );
    ALTER TABLE {테이블명} ADD/MODIFY COLUMN {필드명} {필드 타입} DEFAULT {기본값};
    ALTER TABLE {테이블명} ALTER {필드명} SET DEFAULT {기본값};
    ALTER TABLE {테이블명} ALTER {필드명} DROP DEFAULT; */
create table test(
	id int,
    name varchar(20) default 'anonymous',
    reserveDate date,
    roomNum int );
desc test;
insert into test(id, reserveDate, roomNum) values(0, '2021-08-31', 901);
select * from test;
alter table test alter name drop default;
desc test;