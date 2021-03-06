-- 無名ウィンドウ関数
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW) AS moving_avg
FROM Shohin;

-- 名前付きウィンドウ関数
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER W AS moving_avg
FROM Shohin
WINDOW W AS (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW);

-- 名前付きウィンドウ構文では、ウィンドウの使いまわしが可能
SELECT shohin_id, shohin_mei, hanbai_tanka,
 AVG (hanbai_tanka) OVER W AS moving_avg,
 SUM (hanbai_tanka) OVER W AS moving_avg,
 COUNT (hanbai_tanka) OVER W AS moving_avg,
 MAX (hanbai_tanka) OVER W AS moving_avg
FROM Shohin
WINDOW W AS (ORDER BY shohin_id
                          ROWS BETWEEN 2 PRECEDING
						           AND CURRENT ROW);