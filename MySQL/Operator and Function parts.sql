-- 연산자와 함수
# 산술 연산자(Arithmetic operator) : +, -, *, /, DIV (소수 부분 제외), % or MOD
# 대입 연산자(Assignment operator) : = (SET 문이나 UPDATE의 SET 절에서만), :=
/* 비교 연산자(Comparison operator) :	=, != or <>, <, <=, >, >=, 
									<=> (양쪽의 피연산자 모두 NULL이면 참, 아니면 거짓),
									IS, IS NOT (오른쪽 피연산자가 TRUE, FALSE, UNKNOWN 값일 때 사용),
									IS NULL, IS NOT NULL, BETWEEN min AND max, NOT BETWEEN min AND max,
                                    IN(), NOT IN() (인수로 전달받은 리스트에 피연산자의 값이 존재 or 존재하지 않으면 참)*/
# 논리 연산자(Logical operator) : AND, &&, OR, ||, XOR, NOT, !
# 비트 연산자(Bitwise operator) : &, |, ^, ~, <<, >>

# 흐름 제어
/* 1. CASE
- Grammar
First.	CASE {value}
		WHEN {compare_value} THEN {result}
        WHEN {compare_value} THEN {result}
        ...
        ELSE {result}
		END
Second. CASE
		WHEN {condition} THEN {result}
        WHEN {condition} THEN {result}
        ...
        ELSE {result}
        END
※ ELSE 부분이 없으면 NULL 반환 */

/* 2. IF()
- Grammar
IF({condition}, {result1}, {result2})
condition이 참이면 result1, 아니면 result2 반환 */

/* 3. IFNULL()
- Grammar
IF(expr1, expr2)
expr1의 값이 NULL이 아니면 expr1 반환, NULL이면 result2 반환 */

/* 4. NULLIF()
- Grammar
NULLIF(expr1, expr2)
expr1과 expr2의 값이 같으면 NULL, 아니면 expr1 반환 
- CASE 문으로 동작
CASE
WHEN expr1 = expr2 THEN NULL
ELSE expr1
END */

# 패턴 매칭
/*	1. LIKE
-> 특정 패턴을 포함하는 데이터만 검색하기 위해 사용
- Grammar
SELECT * FROM {table명} WHERE {필드명} (NOT) LIKE '창%'; 
※ '%' : 0개 이상의 문자라는 의미 (와일드카드 문자), '_' : 1개의 문자 대체 */

/*	2. REGEXP
-> 복잡한 패턴 검색시 사용, 정규 표현식을 토대로 패턴 매칭 연산 제공
- Pattern 종류
1) '.' : 줄 바꿈 문자(\n)를 제외한 임의의 한 문자 
2) '*' : 해당 문자 패턴이 0번 이상 반복
3) '+' : 해당 문자 패턴이 1번 이상 반복
4) '^' : 문자열의 처음 의미
5) '$' : 문자열의 끝 의미
6) '|' : 선택 의미(OR)
7) '[...]' : 괄호 안에 있는 어떤 문자 의미
8) '[^...]' : 괄호 안에 있지 않은 어떤 문자 의미
9) '{n}' : 반복되는 횟수 지정
10) '{m, n}' : 반복되는 횟수의 최소, 최댓값을 지정 
- Grammar
SELECT * FROM {table명} WHERE {필드명} REGEXP '정규 표현식' */

# 타입 변환
/*	1. BINARY
-> BINARY 연산자 뒤에 오는 문자열을 바이너리 문자열로 변환
-> 바이트를 기준으로 비교 혹은 검색 작업 수행 
Ex) SELECT BINARY 'a' = 'A'; */

/*	2. CAST()
-> 인수로 전달받은 값을 명시된 타입으로 변환
- Grammar
CAST(expr AS {type}) */

/*	3. CONVERT()
-> 첫 번째 인수로 전달받은 값을 두 번째 인수(명시된 타입)으로 변환
- Grammar
CONVERT(expr, type)
CONVERT(expr USING transcoding_name)
※ USING 절 : 서로 다른 문자셋(character set) 간의 데이터 변환을 위해 사용 */