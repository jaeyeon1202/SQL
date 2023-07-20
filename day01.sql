select * from all_users; -- 모든 사용자 보기

create table person( --테이블 생성 명령어
    num number, -- number: 숫자만 사용
    name varchar2(20), --문자를 저장하는 varchar2, 괄호안은 바이트 => 20바이트만큼 저장하겠다.
    birth varchar2(20), --대소문자 구분 안함
    tel varchar2(20),
    primary key(num) -- 유일한 값(중복을 허용하지 않는다),기본키, 중복되면 문제 발생 -> primaey key로 지정
    -- num, name, birth, tel 등은 컬럼명 이라고 한다.
    );
    
    desc person;
    
    
insert into person values(1000, '김개똥', '990513','01056891245'); -- 데이터 저장
insert into person values(1000, '김개똥', '990513','01056891245');
insert into person values(1001, '김개똥', '990513','01056891245');
insert into person(num, name, birth, tel)
    values(1002, '홍길동', '990513','01056891245');
    
    desc person;

insert into person values(1003);

insert into person(num, name, birth, tel)
    values(1002, '홍길동', '990513','01056891245');
    
insert into person(num) values(1002);


select * from person; -- 데이터 조회 명령어

select name from person;

-- where: 조건절
select * from person where name='김개똥';
select * from person where num=1000;


-- delete: 삭제
delete from person;
select * from person;

insert into person values(1000, '김개똥', '990513','01056891245'); -- 데이터 저장
insert into person values(1000, '김개똥', '990513','01056891245');
insert into person values(1001, '김개똥', '990513','01056891245');
insert into person(num, name, birth, tel)
    values(1002, '홍길동', '990513','01056891245');
    

select * from person;

delete from person where num=1001;
select * from person;



-- update: 저장된 데이터를 수정할 때
update person set name='김길이', tel='aaa' where num=1000;
select * from person;

commit;


select * from person;

insert into person (num, name, birth, tel)
    values(1003, '홍길동', '990315','01048967865');
   
select * from person;
delete from person;
rollback;
select * from person;

-- commit, rollback: 저장되는 데이터에 대해서만 적용된다.
-- 테이블 생성 또는 컬럼 변경 등 기본 틀에 대해서는 사용하지 않는다.



-----------------------------------------------
-- 문제
create table student(
    pk varchar2(10),
     name varchar2(10),
     kor varchar2(5),
     eng varchar(5),
     mat varchar2(5)
    );
    
select * from student;

insert into student (pk, name, kor, eng, mat)
    values('1000','김일상','95','85','75');

insert into student (pk, name, kor, eng, mat)
    values('1001', '매머드', '65', '93', '78');

insert into student (pk,name, kor,eng,mat)
    values('1002', '다나카', '93', '85', '96');
    
select * from student;

update student set kor='99', eng='88', mat='77' where pk='1000';

select * from student;

commit;

select * from student;

delete from student;

rollback;

select * from  student;


create table score 
    (name varchar2(10),
    kor number,
    eng number);
    
select * from score;

insert into score(name, kor, eng) values('다나카', 95, 85);
insert into score(name, kor, eng) values('뽕뽕이',99, 88);

select * from score;
commit;

update score set name='콩재' where kor=99;

select * from score;

delete from score;

select * from score;

rollback;

select * from score;

update score set kor=88, eng=78 where name='다나카';

select * from score;

insert into score(name, kor, eng)values('오뚜기', 66, 79);
select * from score;

update score set kor=99, eng=88 where name='뽕뽕이';
select * from score;

delete from score where name='뽕뽕이';

select * from score;


delete from score;
commit;
select * from score;                                          


-- alter table 테이블명 add 컬럼명: 컬럼추가
-- alter table 테이블명 modify 컬럼명: 컬럼수정
-- alter table 테이블명 drop 컬럼명: 컬럼삭제
-- 왠만하면 컬럼명을 수정하지 않기 때문에, 처음에 잘 만들어야 한다.
--컬러에 대해 수정하면 나중에 자바에서 사용한 코드를 다 수정해야 한다.

create table test_table (num number);
-- 합성어는 언더바로 구분

desc test_table;

alter table test_table add (name varchar2(20));
desc test_table;
-- name varchar2(20) 컬럼 추가

alter table test_table modify(name number);
desc test_table;
-- name number로 수정

alter table test_table drop column name;
desc test_table;
-- name 컬럼 삭제

alter table test_table rename column num to num_bbb;
desc test_table;
-- rename: 컬럼 이름 변경

drop table test_table;
-- 테이블 삭제

select * from student;
drop table student;


create table student(
id varchar2(10),
name varchar2(20),
kor varchar2(5),
eng varchar2(5),
math varchar2(5),
primary key(id)
);

insert into student values('1','고길동','100','100','100');
insert into student values('2','김말이','90','90','90');
insert into student values('3','현대인','80','80','80');

commit;

select * from student;

select * from student where kor>90;
-- 90점 이상인거 가져와

select * from student where kor != 100;
-- kor이 100이 아닌것을 가져와

select * from student where eng>=100;
-- eng가 100이상인거 가져와



select math/2 from student where id=1;
-- id가 1인 데이터의 math/2 값을 가져와

select math+10 from student where id=1;
-- id가 1인 데이터의 math+100 값을 가져와

select math-100 from student where id=1;
-- id가 1인 데이터의 math-100의 값을 가져와



select * from student;
select * from student where kor>=90 and math=100;
-- 고길동 100 100 100
select * from student where kor>=90 or math=100;
-- 고길동, 김말이
select * from student where kor != 90 and math !=100;
-- 현대인

select * from student;
select * from student where kor>=90 and kor<=100;
--고길동, 김말이
select * from student where kor between 90 and 100;
-- 고길동, 김말이 => kor이 90~100사이의 값을 가져와

create table test_number(
    num_ps number(5, 2),  -- (전체자리수, 소숫점 자리수)
    num_p number(3),      -- 정수 자리수 3
    num number            -- 정수 실수 가변
);

select * from test_number;

insert into test_number values(1.123456, 63, 56.153);
select * from test_number;

insert into test_number values(123.123456, 66543, 5326.136353);

create table test_date(my_date date); --date자료형
--날짜를 저장

insert into test_date values(sysdate); --현재 시스템 날짜
insert into test_date values('2023/07/06');
select * from test_date;
--년월일만 보이지만 내부적으로 저장될때는 시간까지 다 저장된다.

alter session set nls_date_format = 'YYYY/MM/DD HH:Mi:SS';
-- 보여지는 환경을 변경 => 내부적으로는 다 저장되어 있다.
select * from test_date;

insert into test_date values('2021/09/22 12:30');
select * from test_date;

create table test_char(
    ch char(5),         -- 고정크기
    vch varchar2(5)     -- 가변크기
);

insert into test_char values('1','123');
select lengthb(ch), lengthb(vch) from test_char;

create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('홍길동',2000000,'컴퓨터','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;

--------Quiz------

create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('홍길동',2000000,'컴퓨터','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;

--정보
insert into employee values('설까치',1800000,'삼성','2017/10/24');
insert into employee values('로버트',1850000,'애플','2019/01/04');
insert into employee values('고도리',2200000,'엘지','2017/11/06');
insert into employee values('김개똥',2500000,'SK','2017/04/14');
insert into employee values('리우뚱',2410000,'샤오미','2018/01/09');
insert into employee values('강민',1900000,'삼성','2019/10/24');
insert into employee values('할리',1800000,'애플','2019/12/04');
insert into employee values('심심해',4630000,'엘지','2015/04/02');
insert into employee values('놀아줘',2770000,'SK','2017/01/24');
insert into employee values('왕만두',3650000,'샤오미','2016/08/04');
insert into employee values('머리빨',4210000,'삼성','2015/03/18');
insert into employee values('마리오',2720000,'애플','2017/01/04');
insert into employee values('최치우',4320000,'엘지','2015/06/07');
insert into employee values('안깔쌈',3490000,'SK','2015/09/07');
insert into employee values('끝짱',2200000,'샤오미','2017/05/04');
insert into employee values('막장',1920000,'삼성','2018/11/24');
insert into employee values('드라마',3420000,'애플','2016/07/29');
insert into employee values('개똥이',1800000,'엘지','2018/12/24');
insert into employee values('마포구',2230000,'SK','2018/01/05');
insert into employee values('소고기',1800000,'샤오미','2019/01/09');
insert into employee values('짜장면',2100000,'삼성','2017/10/24');
insert into employee values('소곱창',2200000,'애플','2017/11/04');
insert into employee values('참이슬',1950000,'엘지','2017/10/24');
insert into employee values('뤼우뚱',1800000,'SK','2018/10/24');
insert into employee values('위메프',1800000,'샤오미','2019/12/07');
insert into employee values('북경시',1880000,'삼성','2018/11/14');
insert into employee values('스미스',1970000,'애플','2019/06/04');
insert into employee values('핸드폰',7200000,'엘지','2010/01/27');
insert into employee values('빅스비',3570000,'SK','2015/02/17');
insert into employee values('노라줘',3200000,'샤오미','2015/11/24');
insert into employee values('사이다',2400000,'삼성','2017/09/26');
insert into employee values('김말이',7000000,'애플','2010/01/21');
insert into employee values('오도독',6230000,'엘지','2011/08/19');

insert into employee values('쌈지돈',3710000,'SK','2015/08/19');
insert into employee values('화장지',1770000,'샤오미','2019/04/28');
insert into employee values('소화기',1920000,'삼성','2019/10/07');
insert into employee values('박효신',2670000,'애플','2017/11/24');
insert into employee values('판빙빙',3120000,'엘지','2016/05/19');
insert into employee values('김재욱',4190000,'SK','2015/01/02');
insert into employee values('송혜교',4280000,'샤오미','2015/01/02');
insert into employee values('송중기',3700000,'삼성','2016/02/17');
insert into employee values('손홍민',2220000,'애플','2018/02/04');
insert into employee values('백종원',2760000,'엘지','2017/10/14');
insert into employee values('오창석',2620000,'SK','2017/09/04');
insert into employee values('스텔라',2500000,'샤오미','2017/11/20');
insert into employee values('멕스웰',1970000,'삼성','2017/10/30');
insert into employee values('조현',  2720000,'애플','2018/11/11');
insert into employee values('류현진',2600000,'엘지','2015/11/19');
insert into employee values('은지원',5670000,'SK','2017/10/16');
insert into employee values('전효성',3750000,'샤오미','2015/09/15');
insert into employee values('이채은',3400000,'삼성','2016/02/09');
insert into employee values('최고봉',8900000,'애플','2010/01/04');
insert into employee values('광화문',1860000,'엘지','2017/10/24');
insert into employee values('동대문',1790000,'SK','2017/10/24');
insert into employee values('서대문',2880000,'샤오미','2016/02/27');
insert into employee values('대통령',2320000,'삼성','2016/05/24');
insert into employee values('예지원',1780000,'애플','2019/01/09');
insert into employee values('정소민',2900000,'엘지','2016/10/22');
insert into employee values('워너원',3000000,'SK','2015/10/10');
insert into employee values('북한군',3200000,'샤오미','2015/11/11');
insert into employee values('남한군',2500000,'삼성','2016/12/19');
insert into employee values('짜투리',1850000,'애플','2018/04/03');
insert into employee values('이승기',1900000,'엘지','2018/01/01');
insert into employee values('기차길',1790000,'SK','2018/05/02');
insert into employee values('길거리',2700000,'샤오미','2016/07/20');

commit;

select * from employee;
select * from employee where name like '김%';    -- 김으로 시작하는 모든 값
select * from employee where name like '%똥';    -- 똥으로 끝나는 모든 값
select * from employee where name like '%이%';    -- 이가 들어있는 모든 값

select * from employee order by join_company desc;  -- 내림차순
select * from employee order by join_company asc;  -- 오름차순
-- job은 오름차순으로 나온 결과 중 salary을 내림차순으로 
select * from employee order by job asc, salary desc;

select * from employee;
-- 이름, 월급, 회사, 입사년도

-- (Q1)현재 연봉이 1억이 넘는 사람 출력
select * from employee where salary*12> 100000000;

-- (Q2) 2015년 이전(2014년도 부터)에 입사한 사람의 이름과 입사년도를 출려하시오
select name, join_company from employee where join_company < '2015/01/01';

-- (Q3) 급여가 280만원 ~ 300만원 사이에 있는 사람들을 출력하시오.
select * from employee where salary between 2800000 and 3000000;

-- (Q4) 입사년도가 2015년 이상이며 연봉이 6000만원 인상인 사람들을 출력하시오.
select * from employee where join_company>'2015/01/01' and salary*12>=60000000;

-- (Q5) 회사가 삼성이거나 엘지이며 연봉이 5000만원 이상인 사람들을 출력하시오.
select * from employee where (job='삼성' or job='엘지') and salary*12 >= 50000000;

-- (Q6) 회사는 오름차순으로 정렬하고 연봉은 내림 차순으로 정렬하고 이름에 '김'이 들어가며 연봉은 3000만원 이상인 모든 내용을 출력허시오.
select * from employee 
    where name like '%김%' and salary*12 >=30000000
    order by job asc, salary desc;
    
 
