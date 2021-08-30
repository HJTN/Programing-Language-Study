-- 다중 테이블 연산
/*	※ JOIN의 종류
	1. INNER JOIN
	2. LEFT JOIN
	3. RIGHT JOIN */
    
/*	1. INNER JOIN
	- Grammar
    SELECT * FROM {첫 번째 테이블명}
    INNER JOIN/JOIN/CROSS JOIN {두 번째 테이블명}
    ON {조건}
    <WHERE {조건}>;			※ <> : 생략 가능
    ※ INNER JOIN과 같은 실행 방법
    SELECT * FROM {첫 번째 테이블명}, {두 번째 테이블명} WHERE {조건}; */
create table f(
	id int,
    name varchar(10));
create table s(
	id int,
    name varchar(10));
insert into f values(10, '홍길동');
insert into f values(20, '홍길동');
insert into f values(5, '백길산');
insert into f values(40, '허만석');

insert into s values(10, '장길동');
insert into s values(3, '석동길');
insert into s values(30, '만복동');
insert into s values(90, '홍길동');
insert into s values(95, '허만석');

select * from s
inner join f
on f.name = s.name;

/*	2. LEFT JOIN
	- Grammar
    SELECT * FROM {첫 번째 테이블명}
    LEFT JOIN {두 번째 테이블명}
    ON {조건}
    <WHERE {조건}>;			※ <> : 생략 가능 */
create table f(
	id int,
    name varchar(10),
    roomnum int);
create table s(
	id int,
    name varchar(10),
    roomnum int);
insert into f values(0, '홍길동', 1000);
insert into f values(1, '임꺽정', 100);
insert into f values(2, '장길동', 323);
insert into f values(3, '만길동', 526);

insert into s values(0, '장길동', 560);
insert into s values(1, '홍길동', 820);
insert into s values(2, '임꺽정', 950);

select * from f
left join s
on f.name = s.name
where f.roomnum > 300;

/*	3. RIGHT JOIN
	- Grammar
    SELECT * FROM {첫 번째 테이블명}
    RIGHT JOIN {두 번째 테이블명}
    ON {조건}
    <WHERE {조건}>;			※ <> : 생략 가능 */
create table f(
	id int,
    name varchar(10),
    roomnum int);
create table s(
	id int,
    name varchar(10),
    roomnum int);
insert into f values(0, '홍길동', 1000);
insert into f values(1, '임꺽정', 100);
insert into f values(2, '장길동', 323);
insert into f values(3, '만길동', 526);

insert into s values(0, '장길동', 560);
insert into s values(1, '홍길동', 820);
insert into s values(2, '임꺽정', 950);

select * from s
right join f
on f.name = s.name
where f.roomnum > 300;