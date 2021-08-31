-- VIEW Parts
/*	1. VIEW 생성 및 대체
	-> VIEW : 데이터베이스에 존재하는 가상 테이블
    -> 행과 열을 가지지만, 데이터를 저장하진 않음
    -> 다른 테이블 혹은 뷰에 저장된 데이터를 보여주는 역할
    
    - 특징
    ✨ 장점
    1) 특정 사용자에게 전체가 아니 필요한 필들만 보여줌
    2) 복잡한 쿼리 단순화
    3) 쿼리 재사용
    ✨ 단점
    1) 한 번 정의된 뷰는 변경할 수 없음
    2) 삽입, 삭제, 갱신 작업에 많은 제한 사항 가짐
    3) 자신만의 인덱스 가질 수 없음
    
    - Grammar
    CREATE VIEW {뷰이름} AS
    SELECT {필드명1, 필드명2, ...}
    FROM {테이블명}
    WHERE {조건};
    
    // VIEW 대체
    -> 기존에 존재하는 뷰를 새로운 뷰로 대체
    CREATE OR REPLACE VIEW {뷰이름} AS
    SELECT {필드명1, 필드명2, ...}
    FROM {테이블명}
    WHERE {조건}; */
    
    /*	2. VIEW 수정 및 삭제
		// VIEW 수정
		- Grammar
        ALTER VIEW {뷰이름} AS
        SELECT {필드명1, 필드명2, ...}
        FROM {테이블명};
        
        // VIEW 삭제
        - Grammar
        DROP VIEW {뷰이름}; */