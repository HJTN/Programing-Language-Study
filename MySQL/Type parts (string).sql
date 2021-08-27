-- ✨ 문자열 타입
# 1. CHAR과 VARCHAR
# CHAR : 고정 길이의 문자열, VARCHAR : 가변 길이의 문자열 저장
# CHAR(M) -> M : 0 ~ 255, VARCHAR(M) -> M : 0 ~ 65535
# CHAR -> 설정한 크기보다 작은 길이의 문자열이 입력되면, 나머지 공간을 공백으로 채움
# VARCHAR -> 입력된 문자열의 길이만큼만 저장
# ' ' -> char(4)의 경우 : '    ' 저장, varchar(4)의 경우 : ' ' 저장
alter table temp
add Note char(4);
insert into temp(Note) values(' ');
insert into temp(Note) values('ab');
insert into temp(Note) values('abcd');
select * from temp;

alter table temp
modify column Note varchar(4);
select * from temp;

# 2. BINARY와 VARBINARY
# CHAR과 VARCHAR과 비슷, but 문자 집합이 아닌 binary 데이터를 저장
# BINARY(M), VARBINARY(M)

# 3. BLOB과 TEXT
# BLOB -> Binary Large Object의 약자 (다양한 크기의 바이너리 데이터 저장)
# TINYBLOB, BLOB, MEDIUMBLOB, LONGBLOB (데이터의 크기에 따라)
# TEXT -> VARCHAR과 비슷, but 기본값 가질 수 없음
#      -> BLOB와 비슷, but 문자열의 대소문자 구분함
# TINYTEXT, TEXT, MEDIUMTEXT, LONGTEXT (데이터의 크기에 따라)
alter table temp
add column Note text;
desc temp;
insert into temp(Note) values('MySQL 자료형 공부');
select * from temp;

# 4. ENUM
# 미리 정의한 집합 안의 요소 중 하나만 저장
# 가독성 향상, 특정 숫자에 문자열로 의미 부여 가능
# 최대 65,535개의 ENUM 데이터 포함 가능
# 내부적으로 정수로 변환되어 인식
# ENUM('데이터1', '데이터2', ...) -> 0 = ''/ 1 = '데이터1'/ 2 = '데이터2'/ ...
alter table temp
add idType enum('single', 'twin', 'double', 'triple');
insert into temp(idType) values('single');
select * from temp;

# 5. SET
# 미리 정의한 집합 안의 요소 중 여러 개를 동시 저장
# 최대 64개의 SET 데이터 포함 가능
# SET('데이터1', '데이터2', ...)
alter table temp
modify column idType set('single', 'twin', 'double', 'triple');
describe temp;
insert into temp(idType) values('single,double');
select * from temp;
