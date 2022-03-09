-- INNER JOIN (교집합)
-- 기준 설정에 따른, A / B 테이블 모두 가지고 있는 데이터만 검색
-- SELECT [컬럼] FROM [기준 테이블] INNER JOIN [참조 테이블] ON [기준 테이블 별칭].[기준키] = [참조 테이블 별칭].[기준키]

SELECT * FROM TABLE_A AS A INNER JOIN TABLE_B AS B ON A.COLUMN = B.COLUMN;


-- {LEFT | RIGHT | FULL} OUTER JOIN (기준테이블값 + 교집합, FULL OUTER JOIN은 합집합 도출)
-- 참조테이블의 값이 NULL 이여도, 기준테이블을 기준으로 결과를 도출한다
-- SELECT [컬럼] FROM [기준 테이블] {LEFT | RIGHT | FULL} OUTER JOIN [참조 테이블] ON [기준 테이블 별칭].[기준키] = [참조 테이블 별칭].[기준키]

SELECT * FROM TABLE_A AS A LEFT OUTER JOIN TABLE_B AS B ON A.COLUMN = B.COLUMN;


-- CROSS JOIN (모든 경우의수 (A.튜플수 * B.튜플수)
-- SELECT [컬럼] FROM [기준 테이블] CROSS JOIN [참조 테이블] ON [기준 테이블 별칭].[기준키] = [참조 테이블 별칭].[기준키]

SELECT * FROM TABLE_A AS A CROSS JOIN TABLE_B AS B;


-- SELF JOIN (같은 테이블을 JOIN)
-- INNER, OUTER을 사용하여 같은 테이블을 참조

SELECT * FROM TABLE_A AS A LEFT OUTER JOIN TABLE_A AS B ON A.COLUMN = B.COLUMN;
