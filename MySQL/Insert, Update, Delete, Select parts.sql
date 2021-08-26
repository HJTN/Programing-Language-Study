-- INSERT Parts
/*	INSERT INTO {테이블명} <(필드명1, 필드명2, 필드명3, ...)>			// <> : 생략가능한 부분
	VALUES (데이터1, 데이터2, 데이터3, ...); */
/*	1. NULL을 저장할 수 있는 필드
	2. DEFAULT 제약 조건이 설정된 필드
    3. AUTO_INCREMENT 키워드가 설정된 필드
    위의 경우, 테이블명 다음에 오는 필드명들을 생략할 수 있음
    -> INSERT INTO {테이블명} VALUES (데이터1, 데이터2, 데이터3, ...);
    ※ DB의 스키마와 같은 순서대로 필드값이 자동 대입됨 */
insert into temp(name, phoneNum, gender) values('허진수', '010-1234-5678', '남');
insert into temp(name, phoneNum) values('홍길동', '123-4567-8910');
insert into temp values('홍길동', '123-4567-8910', '남');

-- UPDATE Parts
/*	UPDATE {테이블명}
	SET 필드명1=데이터1, 필드명2=데이터2, ...
    <WHERE {조건}>;			// <> : 생략가능한 부분
    ※ where 생략시, 테이블의 모든 레코드의 필드값이 변경됨 */
update temp
set phoneNum = '123-7654-0198'
where name = '여수정';

-- DELETE Parts
/*	DELETE FROM {테이블명}
	<WHERE 필드명=데이터값>			// <> : 생략가능한 부분
    -> where의 조건을 만족하는 레코드만 삭제
    ※ where 생략시, 테이블에 저장된 모든 데이터 삭제됨 */
delete from temp
where name = '남동길';

-- SELECT Parts
/*	SELECT {필드명}
	FROM {테이블명}
	<WHERE {조건}>			// <> : 생략가능한 부분
    -> where의 조건을 만족하는 레코드들을 해당 테이블에서 가져옴
    ※ 별표(*)를 사용하면 해당 테이블의 모든 필드를 선택 */
select * from temp;
select name from temp where gender = '남';

# where절에서 여러 개의 조건을 명시할 때, AND나 OR 연산자를 이용하여 연결
# 쉼표(,)를 사용하여 여러 개의 필드 이름을 한 번에 명시
select name, phoneNum from temp
where id = 1 or name = '여수정';

# 중복되는 값 제거
# SELECT DISTINCT {필드명} FROM {테이블명};
select distinct name from temp;

# 선택한 결과 정렬
/*	SELECT {필드명}
	FROM {테이블명}
    ORDER BY {필드명}
    ※ 기본 설정 -> 오름차순(ASC)
    ※ 쉼표(,)를 사용하여 여러 필드의 데이터 값을 정렬할 수 있음 */
select * from temp order by id;

# 내림차순 정렬
/*	SELECT {필드명}
	FROM {테이블명}
    ORDER BY {필드명} DESC */
select * from temp order by id desc;

# 별칭(alias)을 이용한 처리
/*	SELECT {필드명} AS {별칭}
	FROM {테이블명}
    
    SELECT {필드명}
	FROM {테이블명} AS {별칭} */
select name as keysource
from temp;

# id 필드와 phoneNum 필드에 하나의 별칭 부여
select name, concat(id, " / ", phoneNum) as idPN
from temp;