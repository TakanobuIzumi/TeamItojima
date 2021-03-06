-- 型変換
-- 文字列→数値
SELECT CAST('0001' AS INTEGER) AS int_col;

-- 文字列→日付
SELECT CAST('2009-12-14' AS DATE) AS date_col;

-- NULLを値へ変換
SELECT	COALESCE(NULL, 1)					AS col_1,
		COALESCE(NULL, 'test', NULL)		AS col_2,
		COALESCE(NULL, NULL, '2009-11-01')	AS col_3;

-- str2列のNULLを変換
SELECT	COALESCE(str2, 'NULLです')
FROM	SampleStr;