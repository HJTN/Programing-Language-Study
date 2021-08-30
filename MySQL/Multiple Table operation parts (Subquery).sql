/*	서브쿼리(Subquery)
	-> 다른 쿼리 내부에 포함되어 있는 SELECT 문 의미
    -> 서브 쿼리를 포함하는 쿼리 == 외부 쿼리(Outer query)
    -> 서브 쿼리 == 내부 쿼리(Inner query)
    ※ 서브 쿼리는 반드시 괄호 '()'로 감싸져 있어야 함!!
    
    - 서브 쿼리를 포함할 수 있는 외부 쿼리 : SELECT, INSERT, UPDATE, DELETE, SET, DO 문
    - Grammar
    SELECT {필드명} FROM {테이블명} WHERE {조건 or (서브 쿼리)};
    SELECT {필드명} FROM (서브 쿼리) AS {새로운 테이블 이름} ...;
    ※ 서브 쿼리를 FROM 절에서 사용하는 경우 반드시 이름을 정의해야 함!!
    ※ 서브 쿼리의 특징
		1. 쿼리를 구조화시킴 -> 쿼리의 각 부분을 명확히 구분
        2. 복잡한 JOIN이나 UNION 같은 동작을 수행할 수 있는 또 다른 방법 제공
        3. 복잡한 JOIN이나 UNION 보다 좀 더 읽기 편함 */
create table test(
	id int default 0,
    name varchar(20),
    reserveDate date,
    roomNum int);
create table customer(
	name varchar(20),
    address varchar(20));
insert into customer values('홍길동', '서울');
insert into customer values('장길산', '서울');
insert into customer values('문복동', '대구');
insert into customer values('달서구', '대구');

insert into test values(1, '홍길동', '2015-03-27', 1208);
insert into test values(2, '장길산', '2015-08-13', 506);
insert into test values(3, '문복동', '2015-02-07', 2014);

select id, reserveDate, roomNum from test where name in (select name from customer where address = '서울');
select id, reserveDate, reservedRoom from (select id, reserveDate, (roomNum + 1) as reservedRoom from test where name like '%길%') as newTable;
