CREATE DATABASE bts;
USE bts;
CREATE TABLE butter (
	part INT PRIMARY KEY,
    lyric VARCHAR(100));
INSERT INTO butter(part, lyric)
VALUES (1, 'Smooth like butter'),
	   (2, 'Like a criminal undercover'),
	   (3, 'Gonna pop like trouble'),
       (4, 'Breaking into your heart like that'),
       (5, 'Cool shade stunner');

use bts;
SELECT * FROM butter;

# LOCATE >> 위치 반환
select part, locate('i', lyric) as location
from butter;
# 해당 텍스트에 관련 내용이 없으면 '0' 나옴

select part, substring(lyric, 3)
from butter;
# 3번째 문자부터 반환

select part, substring(lyric, 100)
from butter;
# 문자열 길이보다 크면 >> 아무 것도 안 나옴

select part, right(lyric, 3) as l_right, left(lyric, 3) as l_left
from butter;

select part, upper(lyric) as big, lower(lyric) as small
from butter;
# UPPER: 대문자로 변환 // LOWER: 소문자로 변환

select part, length(lyric) as 'len(lyric)'
from butter;

use bts;
select part, concat(left(lyric, 1), right(lyric, 1)) as first_lat
from butter;

select part, replace(lyric, ' ', '_')
from butter;

















