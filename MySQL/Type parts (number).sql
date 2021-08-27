/*	✨ 타입의 종류
	1. 숫자 타입
    2. 문자열 타입
    3. 날짜와 시간 타입 */

-- ✨ 숫자 타입
# 1. 정수 타입(Integer types)
# TINYINT : 1byte, signed -> -128 ~ 127, unsigned -> 0 ~ 255
# SMALLINT : 2byte, signed -> -32768 ~ 32767, unsigned -> 0 ~ 65535
# MEDIUMINT : 3byte, signed -> -8388608 ~ 8388607, unsigned -> 0 ~ 16777215
# INT : 4byte, signed -> -2147483648 ~ 2147483647, unsigned -> 0 ~ 4294967295
# BIGINT : 8byte, signed -> -9223372036854775808  ~ 9223372036854775807, unsigned -> 0 ~ 18446744073709551615
alter table temp
add price int;
insert into temp(price) values(1000);
select * from temp;

# 2. 고정 소수점 타입(Fixed-point types)
# 실수의 값을 정확하게 표현
# 소수부의 자릿수를 미리 정해 놓고, 고정된 자릿수로만 소수 부분 표현
# DECIMAL[NUMERIC](M, D) -> M : 소수 부분을 포함한 실수의 총 자릿수 (max = 65), D : 소수 부분의 자릿수 (if 0, 소수 부분 X)
alter table temp
modify column price decimal(7, 2);
desc temp;
insert into temp(price) values(-99999.99);
insert into temp(price) values(99999.99);
select * from temp;

# 3. 부동 소수점 타입(Floating-point types)
# FLOAT : 4byte, DOUBLE : 8byte
# FLOAT(P) -> P : 정밀도에 필요한 최소한의 비트 수 (0 ~ 24 : FLOAT, 25 ~ 53 : DOUBLE)
# FLOAT, DOUBLE 역시 고정 소수점 타입 방식으로 이용 가능	Ex) FLOAT(M, D)
alter table temp
modify column price float(7, 2);
desc temp;
insert into temp(price) values(99999.009);
select * from temp;

# 4. 비트값 타입(Bit-value type)
# 0과 1로 구성되는 binary값을 저장
# BIT(M) -> M : M 비트의 값을 저장 (1 ~ 64)
# 명시한 M 비트보다 짧은 길이의 비트 값을 입력하면, 입력한 값 앞에 0을 추가하여 자동으로 길이 맞춤
alter table temp
add code bit(7);
desc temp;
insert into temp(code) values(b'100');
insert into temp(code) values(b'100001');
select bin(code) from temp;

