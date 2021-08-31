-- INDEX
/*	1. INDEX 생성
	-> INDEX : 테이블에서 원하는 데이터를 쉽고 빠르게 찾기 위해 사용
    -> 자주 사용되는 필드 값으로 만들어진 원본 테이블의 사본
    -> 원본 테이블에서 삽입, 수정, 삭제 작업이 일어날 경우, 인덱스도 함께 수정 → 수정보다는 검색을 자주하는 테이블에 사용
    - Grammar
    CREATE INDEX {인덱스명}
    ON {테이블명} (필드명1, 필드명2, ...);
    
    // INDEX 정보 보기
    SHOW INDEX FROM {테이블명};
    -> 인덱스 정보의 필드 값
    1) Table : 테이블 이름 표시
    2) Non_unique : 인덱스가 중복된 값을 저장 = 1, 아니면 = 0
    3) Key_name : 인덱스의 이름 표시, 해당 테이블의 기본키라면 PRIMARY로 표시
    4) Seq_in_index : 인덱스의 해당 필드의 순서 표시
    5) Column_name : 해당 필드의 이름 표시
    6) Collation : 해당 필드가 정렬되는 방법 표시
    7) Cardinality : 인덱스에 저장된 유일한 값들의 수 표시
    8) Sub_part : 인덱스 접두어 표시
    9) Packed : 키가 압축되는 방법 표시
    10) Null : 해당 필드가 NULL을 저장 = YES, 아니면 = '' 표시
    11) Index_type : 인덱스에 사용되는 메소드 표시
    12) Comment : 인덱스에 관한 기타 정보 표시, 해당 필드 설명 X
    13) Index_comment : 인덱스에 관한 모든 기타 정보 표시
    
    // UNIQUE INDEX 생성
    -> 중복 값을 허용하지 않는 인덱스
    CREATE UNIQUE INDEX {인덱스명}
    ON {테이블명} (필드명1, 필드명2, ...);
    
    // INDEX 정렬
    CREATE INDEX {인덱스명}
    ON {테이블명} (필드명 ASC/DESC); */
    
    /*	2. INDEX 추가
		// 기본 INDEX 추가
		- Grammar
        ALTER TABLE {테이블명} ADD INDEX {인덱스명}(필드명);
        
        // UNIQUE INDEX 추가
        ALTER TABLE {테이블명} ADD UNIQUE {인덱스명}(필드명);
        
        // FULLTEXT INDEX 추가
        -> 일반적인 인덱스와 달리 매우 빠르게 테이블의 모든 텍스트 필드 검색
        ALTER TABLE {테이블명} ADD FULLTEXT {인덱스명}(필드명); */
	
    /*	3. INDEX 삭제
		- Grammar
        ALTER TABLE {테이블명} DROP INDEX {인덱스명};
        DROP INDEX {인덱스명} ON {테이블명}; -> DROP 문은 내부적으로 ALTER 문으로 자동 변환되어 명시된 이름의 인덱스 삭제함 */