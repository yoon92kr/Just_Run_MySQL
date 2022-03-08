-- CAST( expression AS data_type [(length) ]

-- expression : 유효한 식 (변수)
-- data_type : 변환하고자 하는 데이터 타입
-- length : 대상 데이터 형식의 길이를 지정하는 선택적 정수로 기본값은 30 이다.

SELECT CAST ( 10 AS varchar(10) ) + 'BOX'


-- CONVERT (data_type [(length)], expression[,style] )

-- style : CONVERT 함수가 식을 변환하는 방법을 지정 [datetime, float, real, money, smallmoney, xml, binary, char, varbinary, varchar, ... ]

SELECT CONVERT (char(25), GETDATE(), 121) + '출고'
