--2.1
SELECT	shohin_mei, torokubi
FROM	Shohin
WHERE	torokubi >= '2009-04-28';

--2.2
--結果は取得できない

--2.3
SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
WHERE	NOT hanbai_tanka - shiire_tanka < 500;

SELECT	shohin_mei, hanbai_tanka, shiire_tanka
FROM	Shohin
WHERE	hanbai_tanka - 500 >= shiire_tanka;

--2.4
SELECT	shohin_mei, shohin_bunrui, hanbai_tanka * 0.9 - shiire_tanka AS "rieki"
FROM	Shohin
WHERE	(shohin_bunrui = '事務用品' OR shohin_bunrui = 'キッチン用品') AND (hanbai_tanka * 0.9 - shiire_tanka > 100);