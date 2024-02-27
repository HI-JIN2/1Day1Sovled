-- 코드를 입력하세요
SELECT b.WRITER_ID as USER_ID,u.NICKNAME, sum(PRICE) as TOTAL_SALES
from USED_GOODS_BOARD b
join USED_GOODS_USER u
on b.WRITER_ID = u.USER_ID
where b.STATUS = "DONE"
group by b.WRITER_ID
having  sum(PRICE)>=700000
order by 3