-- ✨ 날짜와 시간 타입
# 1. DATE, DATETIME, TIMESTAMP
/*	DATE
	기본 형식 : 'YYYY-MM-DD'
    날짜 범위 : '1000-01-01' ~ '9999-12-31' */
/*	DATETIME
	기본 형식 : 'YYYY-MM-DD HH:MM:SS'
	저장 범위 : '1000-01-01 00:00:00' ~ '9999-12-31 23:59:59' */
/*	TIMESTAMP
	-> 날짜와 시간을 나타내는 타임스탬프를 저장
    -> 별다른 입력이 없으면, 데이터가 마지막으로 입력되거나 변경된 시간이 저장됨
    -> 최종 변경 시각을 저장하고 확인하는데 유용
    저장 범위 : '1970-01-01 00:00:01'UTC ~ '2038-01-19 03:14:07'UTC */
# 입력된 데이터가 유효한 날짜와 시간이 아니면, 모두 0으로 저장
alter table study
modify column ReserveDate datetime;
desc study;
insert into study(ID, ReserveDate) values(1, '2021-08-27 17:33:00');
select * from study;

# 2. TIME
# 시간을 저장
# 기본 형식 : 'HH:MM:SS' OR 'HHH:MM:SS'
# 저장 범위 : '-838:59:59' ~ '838:59:59'
# 범위를 초과한 시간 -> '-838:59:59' 혹은 '838:59:59'로 자동 변환
# 유효하지 않은 시간 -> '00:00:00' 저장
alter table study
add checkIn time;
desc study;
insert into study(ID, checkIn) values(2, '01:23:45');
select * from study;

# 3. YEAR
# 연도 저장
# YEAR(2) : 2자리 연도, YEAR(4) : 4자리 연도
# 4자리 숫자 혹은 문자열로 저장 -> 범위 : 1901 ~ 2155
# 1자리 혹은 2자리 숫자로 저장 -> 범위 : 1 ~ 69 (2001년 ~ 2069년), 70 ~ 99 (1970년 ~ 1999년)
# 1자리 혹은 2자리 문자열로 저장 -> 범위 : '0' ~ '69' (2000년 ~ 2069년), '70' ~ '99' (1970년 ~ 1999년)
# 숫자 0을 저장하면, 2000년이 아닌 0000년이 저장됨 -> 반드시 문자열 '0' 또는 '00'으로 입력
# 유효하지 않은 연도 -> '0000' 저장
alter table study
add thisYear year;
desc study;
insert into study(ID, thisYear) values(3, 21);
insert into study(ID, thisYear) values(4, 0);
insert into study(ID, thisYear) values(5, '0');
insert into study(ID, thisYear) values(6, 70);
select * from study;
