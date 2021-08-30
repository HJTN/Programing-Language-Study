/*	UNION Parts
	-> 여러 개의 SELECT 문의 결과를 하나의 테이블이나 결과 집합으로 표현
    ※ SELECT 문으로 선택된 필드의 수, 타입, 순서 모두 같아야 함
    - Grammar
    SELECT {필드명} FROM {테이블명}
	UNION
    SELECT {필드명} FROM {테이블명} */
create table table_a(
	id int,
    name varchar(20),
    department varchar(20));
create table table_b(
	id int,
    name varchar(20),
    department varchar(20));
insert into table_a values(0, '허**', '컴퓨터학부');
insert into table_a values(1, '홍길동', '전자공학부');
insert into table_a values(2, '임꺽정', '모바일공학부');
insert into table_a values(3, '장길산', '항공우주학과');

insert into table_b values(0, '허**', '수학과');
insert into table_b values(1, '임꺽정', '수학과');
insert into table_b values(2, '장길산', '미디어학과');

select * from table_a;
select * from table_b;

select name from table_a union select name from table_b;

/*	UNION ALL
	※ UNION은 DISTINCT 키워드를 따로 명시하지 않아도 기본적으로 중복되는 레코드 제거함
    -> 중복되는 레코드까지 모두 출력하려면, ALL 키워드 사용
    - Grammar
    SELECT {필드명} FROM {테이블명}
	UNION ALL
    SELECT {필드명} FROM {테이블명} */
select name from table_a union all select name from table_b;