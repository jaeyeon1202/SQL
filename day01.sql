select * from all_users; -- ��� ����� ����

create table person( --���̺� ���� ��ɾ�
    num number, -- number: ���ڸ� ���
    name varchar2(20), --���ڸ� �����ϴ� varchar2, ��ȣ���� ����Ʈ => 20����Ʈ��ŭ �����ϰڴ�.
    birth varchar2(20), --��ҹ��� ���� ����
    tel varchar2(20),
    primary key(num) -- ������ ��(�ߺ��� ������� �ʴ´�),�⺻Ű, �ߺ��Ǹ� ���� �߻� -> primaey key�� ����
    -- num, name, birth, tel ���� �÷��� �̶�� �Ѵ�.
    );
    
    desc person;
    
    
insert into person values(1000, '�谳��', '990513','01056891245'); -- ������ ����
insert into person values(1000, '�谳��', '990513','01056891245');
insert into person values(1001, '�谳��', '990513','01056891245');
insert into person(num, name, birth, tel)
    values(1002, 'ȫ�浿', '990513','01056891245');
    
    desc person;

insert into person values(1003);

insert into person(num, name, birth, tel)
    values(1002, 'ȫ�浿', '990513','01056891245');
    
insert into person(num) values(1002);


select * from person; -- ������ ��ȸ ��ɾ�

select name from person;

-- where: ������
select * from person where name='�谳��';
select * from person where num=1000;


-- delete: ����
delete from person;
select * from person;

insert into person values(1000, '�谳��', '990513','01056891245'); -- ������ ����
insert into person values(1000, '�谳��', '990513','01056891245');
insert into person values(1001, '�谳��', '990513','01056891245');
insert into person(num, name, birth, tel)
    values(1002, 'ȫ�浿', '990513','01056891245');
    

select * from person;

delete from person where num=1001;
select * from person;



-- update: ����� �����͸� ������ ��
update person set name='�����', tel='aaa' where num=1000;
select * from person;

commit;


select * from person;

insert into person (num, name, birth, tel)
    values(1003, 'ȫ�浿', '990315','01048967865');
   
select * from person;
delete from person;
rollback;
select * from person;

-- commit, rollback: ����Ǵ� �����Ϳ� ���ؼ��� ����ȴ�.
-- ���̺� ���� �Ǵ� �÷� ���� �� �⺻ Ʋ�� ���ؼ��� ������� �ʴ´�.



-----------------------------------------------
-- ����
create table student(
    pk varchar2(10),
     name varchar2(10),
     kor varchar2(5),
     eng varchar(5),
     mat varchar2(5)
    );
    
select * from student;

insert into student (pk, name, kor, eng, mat)
    values('1000','���ϻ�','95','85','75');

insert into student (pk, name, kor, eng, mat)
    values('1001', '�Ÿӵ�', '65', '93', '78');

insert into student (pk,name, kor,eng,mat)
    values('1002', '�ٳ�ī', '93', '85', '96');
    
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

insert into score(name, kor, eng) values('�ٳ�ī', 95, 85);
insert into score(name, kor, eng) values('�ͻ���',99, 88);

select * from score;
commit;

update score set name='����' where kor=99;

select * from score;

delete from score;

select * from score;

rollback;

select * from score;

update score set kor=88, eng=78 where name='�ٳ�ī';

select * from score;

insert into score(name, kor, eng)values('���ѱ�', 66, 79);
select * from score;

update score set kor=99, eng=88 where name='�ͻ���';
select * from score;

delete from score where name='�ͻ���';

select * from score;


delete from score;
commit;
select * from score;                                          


-- alter table ���̺�� add �÷���: �÷��߰�
-- alter table ���̺�� modify �÷���: �÷�����
-- alter table ���̺�� drop �÷���: �÷�����
-- �ظ��ϸ� �÷����� �������� �ʱ� ������, ó���� �� ������ �Ѵ�.
--�÷��� ���� �����ϸ� ���߿� �ڹٿ��� ����� �ڵ带 �� �����ؾ� �Ѵ�.

create table test_table (num number);
-- �ռ���� ����ٷ� ����

desc test_table;

alter table test_table add (name varchar2(20));
desc test_table;
-- name varchar2(20) �÷� �߰�

alter table test_table modify(name number);
desc test_table;
-- name number�� ����

alter table test_table drop column name;
desc test_table;
-- name �÷� ����

alter table test_table rename column num to num_bbb;
desc test_table;
-- rename: �÷� �̸� ����

drop table test_table;
-- ���̺� ����

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

insert into student values('1','��浿','100','100','100');
insert into student values('2','�踻��','90','90','90');
insert into student values('3','������','80','80','80');

commit;

select * from student;

select * from student where kor>90;
-- 90�� �̻��ΰ� ������

select * from student where kor != 100;
-- kor�� 100�� �ƴѰ��� ������

select * from student where eng>=100;
-- eng�� 100�̻��ΰ� ������



select math/2 from student where id=1;
-- id�� 1�� �������� math/2 ���� ������

select math+10 from student where id=1;
-- id�� 1�� �������� math+100 ���� ������

select math-100 from student where id=1;
-- id�� 1�� �������� math-100�� ���� ������



select * from student;
select * from student where kor>=90 and math=100;
-- ��浿 100 100 100
select * from student where kor>=90 or math=100;
-- ��浿, �踻��
select * from student where kor != 90 and math !=100;
-- ������

select * from student;
select * from student where kor>=90 and kor<=100;
--��浿, �踻��
select * from student where kor between 90 and 100;
-- ��浿, �踻�� => kor�� 90~100������ ���� ������

create table test_number(
    num_ps number(5, 2),  -- (��ü�ڸ���, �Ҽ��� �ڸ���)
    num_p number(3),      -- ���� �ڸ��� 3
    num number            -- ���� �Ǽ� ����
);

select * from test_number;

insert into test_number values(1.123456, 63, 56.153);
select * from test_number;

insert into test_number values(123.123456, 66543, 5326.136353);

create table test_date(my_date date); --date�ڷ���
--��¥�� ����

insert into test_date values(sysdate); --���� �ý��� ��¥
insert into test_date values('2023/07/06');
select * from test_date;
--����ϸ� �������� ���������� ����ɶ��� �ð����� �� ����ȴ�.

alter session set nls_date_format = 'YYYY/MM/DD HH:Mi:SS';
-- �������� ȯ���� ���� => ���������δ� �� ����Ǿ� �ִ�.
select * from test_date;

insert into test_date values('2021/09/22 12:30');
select * from test_date;

create table test_char(
    ch char(5),         -- ����ũ��
    vch varchar2(5)     -- ����ũ��
);

insert into test_char values('1','123');
select lengthb(ch), lengthb(vch) from test_char;

create table employee(
name varchar2(15),
salary number,
job varchar2(20),
join_company date
);
insert into employee values('ȫ�浿',2000000,'��ǻ��','2222/12/24');
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
insert into employee values('ȫ�浿',2000000,'��ǻ��','2222/12/24');
select * from employee;
alter session set nls_date_format = 'YYYY/MM/DD';
COMMIT;

--����
insert into employee values('����ġ',1800000,'�Ｚ','2017/10/24');
insert into employee values('�ι�Ʈ',1850000,'����','2019/01/04');
insert into employee values('����',2200000,'����','2017/11/06');
insert into employee values('�谳��',2500000,'SK','2017/04/14');
insert into employee values('�����',2410000,'������','2018/01/09');
insert into employee values('����',1900000,'�Ｚ','2019/10/24');
insert into employee values('�Ҹ�',1800000,'����','2019/12/04');
insert into employee values('�ɽ���',4630000,'����','2015/04/02');
insert into employee values('�����',2770000,'SK','2017/01/24');
insert into employee values('�ո���',3650000,'������','2016/08/04');
insert into employee values('�Ӹ���',4210000,'�Ｚ','2015/03/18');
insert into employee values('������',2720000,'����','2017/01/04');
insert into employee values('��ġ��',4320000,'����','2015/06/07');
insert into employee values('�ȱ��',3490000,'SK','2015/09/07');
insert into employee values('��¯',2200000,'������','2017/05/04');
insert into employee values('����',1920000,'�Ｚ','2018/11/24');
insert into employee values('���',3420000,'����','2016/07/29');
insert into employee values('������',1800000,'����','2018/12/24');
insert into employee values('������',2230000,'SK','2018/01/05');
insert into employee values('�Ұ��',1800000,'������','2019/01/09');
insert into employee values('¥���',2100000,'�Ｚ','2017/10/24');
insert into employee values('�Ұ�â',2200000,'����','2017/11/04');
insert into employee values('���̽�',1950000,'����','2017/10/24');
insert into employee values('����',1800000,'SK','2018/10/24');
insert into employee values('������',1800000,'������','2019/12/07');
insert into employee values('�ϰ��',1880000,'�Ｚ','2018/11/14');
insert into employee values('���̽�',1970000,'����','2019/06/04');
insert into employee values('�ڵ���',7200000,'����','2010/01/27');
insert into employee values('�򽺺�',3570000,'SK','2015/02/17');
insert into employee values('�����',3200000,'������','2015/11/24');
insert into employee values('���̴�',2400000,'�Ｚ','2017/09/26');
insert into employee values('�踻��',7000000,'����','2010/01/21');
insert into employee values('������',6230000,'����','2011/08/19');

insert into employee values('������',3710000,'SK','2015/08/19');
insert into employee values('ȭ����',1770000,'������','2019/04/28');
insert into employee values('��ȭ��',1920000,'�Ｚ','2019/10/07');
insert into employee values('��ȿ��',2670000,'����','2017/11/24');
insert into employee values('�Ǻ���',3120000,'����','2016/05/19');
insert into employee values('�����',4190000,'SK','2015/01/02');
insert into employee values('������',4280000,'������','2015/01/02');
insert into employee values('���߱�',3700000,'�Ｚ','2016/02/17');
insert into employee values('��ȫ��',2220000,'����','2018/02/04');
insert into employee values('������',2760000,'����','2017/10/14');
insert into employee values('��â��',2620000,'SK','2017/09/04');
insert into employee values('���ڶ�',2500000,'������','2017/11/20');
insert into employee values('�߽���',1970000,'�Ｚ','2017/10/30');
insert into employee values('����',  2720000,'����','2018/11/11');
insert into employee values('������',2600000,'����','2015/11/19');
insert into employee values('������',5670000,'SK','2017/10/16');
insert into employee values('��ȿ��',3750000,'������','2015/09/15');
insert into employee values('��ä��',3400000,'�Ｚ','2016/02/09');
insert into employee values('�ְ��',8900000,'����','2010/01/04');
insert into employee values('��ȭ��',1860000,'����','2017/10/24');
insert into employee values('���빮',1790000,'SK','2017/10/24');
insert into employee values('���빮',2880000,'������','2016/02/27');
insert into employee values('�����',2320000,'�Ｚ','2016/05/24');
insert into employee values('������',1780000,'����','2019/01/09');
insert into employee values('���ҹ�',2900000,'����','2016/10/22');
insert into employee values('���ʿ�',3000000,'SK','2015/10/10');
insert into employee values('���ѱ�',3200000,'������','2015/11/11');
insert into employee values('���ѱ�',2500000,'�Ｚ','2016/12/19');
insert into employee values('¥����',1850000,'����','2018/04/03');
insert into employee values('�̽±�',1900000,'����','2018/01/01');
insert into employee values('������',1790000,'SK','2018/05/02');
insert into employee values('��Ÿ�',2700000,'������','2016/07/20');

commit;

select * from employee;
select * from employee where name like '��%';    -- ������ �����ϴ� ��� ��
select * from employee where name like '%��';    -- ������ ������ ��� ��
select * from employee where name like '%��%';    -- �̰� ����ִ� ��� ��

select * from employee order by join_company desc;  -- ��������
select * from employee order by join_company asc;  -- ��������
-- job�� ������������ ���� ��� �� salary�� ������������ 
select * from employee order by job asc, salary desc;

select * from employee;
-- �̸�, ����, ȸ��, �Ի�⵵

-- (Q1)���� ������ 1���� �Ѵ� ��� ���
select * from employee where salary*12> 100000000;

-- (Q2) 2015�� ����(2014�⵵ ����)�� �Ի��� ����� �̸��� �Ի�⵵�� ����Ͻÿ�
select name, join_company from employee where join_company < '2015/01/01';

-- (Q3) �޿��� 280���� ~ 300���� ���̿� �ִ� ������� ����Ͻÿ�.
select * from employee where salary between 2800000 and 3000000;

-- (Q4) �Ի�⵵�� 2015�� �̻��̸� ������ 6000���� �λ��� ������� ����Ͻÿ�.
select * from employee where join_company>'2015/01/01' and salary*12>=60000000;

-- (Q5) ȸ�簡 �Ｚ�̰ų� �����̸� ������ 5000���� �̻��� ������� ����Ͻÿ�.
select * from employee where (job='�Ｚ' or job='����') and salary*12 >= 50000000;

-- (Q6) ȸ��� ������������ �����ϰ� ������ ���� �������� �����ϰ� �̸��� '��'�� ���� ������ 3000���� �̻��� ��� ������ �����ÿ�.
select * from employee 
    where name like '%��%' and salary*12 >=30000000
    order by job asc, salary desc;
    
 
