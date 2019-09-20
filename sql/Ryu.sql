-- 실전 문제
--3 
describe salgrade;

--4
select empno, ename, job
from emp;

--6
select dname, loc
from dept;

--8 
select distinct hiredate
from emp;

--11 
select ename, sal*6
from emp;

--12  17 19 21 22 23 25
select ename, comm*6
from emp;

--13
select ename as "Name", sal as "Salary"
from emp;

--14 
select empno as 사원번호, ename as 사원이름, hiredate as 입사일,
    deptno as 부서번호
from emp;

--17  
select hiredate ||'에 입사한'||ename||'입니다'
from emp;

--19 
select empno, ename
from emp
where sal >= 2000;

--21 
select ename
from emp
where hiredate = '1980-12-17';

--22 23 25
select dname, loc
from dept
where deptno <> 30;

--23 
select hisal, losal
from salgrade
where grade = 5;

--25
select ename, job, deptno
from emp
where deptno = 10 and job = 'MANAGER';

--연습문제
--1
desc student;

--3
select STU_NO,STU_NAME,STU_DEPT,STU_GRADE,STU_CLASS,STU_GENDER,STU_HEIGHT,STU_WEIGHT
from student;

--5
select STU_NO,STU_NAME
from student;

--7
select STU_NO,STU_NAME,STU_GENDER
from student;

--9
select STU_NO,STU_NAME,STU_GRADE,STU_CLASS
from student;

--11
select SUB_NO,STU_NO,ENR_GRADE
from enrol;

--13
select distinct stu_dept
from student;

--15
select distinct stu_grade
from student;

--17
select distinct stu_class,stu_dept
from student;

--19
select stu_name, stu_weight+5
from STUDENT;

--21
select sub_no as 과목번호, stu_no as 학생번호, enr_grade as 성적
from enrol;

--23
select stu_dept || stu_name
from STUDENT;

--25
select stu_name, stu_dept
from student
where STU_DEPT = '컴퓨터정보';

--27
select stu_name, stu_dept
from student
where STU_DEPT = '전기전자';

--29
select stu_name, stu_weight
from student
where stu_weight >= 65;

--31
select stu_name, stu_no
from student
where STU_DEPT = '컴퓨터정보';

--33 
select stu_name
from student
where STU_gender = 'M';

--35
select STU_NO,STU_NAME,STU_DEPT,STU_GRADE,STU_CLASS,STU_GENDER,STU_HEIGHT,STU_WEIGHT
from student
where STU_DEPT <> '전기전자';

--37
select stu_no
from enrol
where enr_grade >= 80;

--39
select stu_name, stu_no
from student
where STU_DEPT = '컴퓨터정보' and STU_GRADE = 1;

--41
select stu_name
from student
where STU_gender = 'F' and STU_WEIGHT < 60;

--43
select sub_name
from SUBJECT
where SUB_DEPT <> '기계';

--45
select stu_name
from student
where STU_GENDER = 'F' and 160 <= STU_HEIGHT and STU_HEIGHT <= 170;

--47
select STU_NO,STU_NAME,STU_DEPT,STU_GRADE,STU_CLASS,STU_GENDER,STU_HEIGHT,STU_WEIGHT
from student
where STU_GRADE in (1,3);

--49
select STU_NO,STU_NAME,STU_DEPT,STU_GRADE,STU_CLASS,STU_GENDER,STU_HEIGHT,STU_WEIGHT
from student
where STU_no like '_%20%';

--51
select stu_name
from student
where STU_NAME like '옥%';

--53
select stu_name, stu_no
from student
where STU_HEIGHT is not null;

--55
select stu_name, STU_NO, STU_DEPT
from student
where STU_gender = 'M' and STU_GRADE = 1;

--57
select stu_name, STU_NO, STU_DEPT
from student
order by STU_NO;

--59
select stu_name, STU_NO, STU_DEPT
from student
order by STU_GRADE;

--61
select stu_name, STU_NO
from student
order by STU_DEPT,STU_GENDER, STU_GRADE ;

--63
select lower(stu_gender)
from student;

--65
select stu_dept ||'과'|| STU_NO ||'학번'|| stu_name ||'입니다'
from STUDENT;

--67
select stu_name, substr(stu_name,1,1)
from STUDENT;

--69
select stu_dept, length(stu_dept)
from STUDENT;

--71
select stu_dept, instr(stu_dept,'기')
from STUDENT;

--73
select stu_dept, lpad(stu_dept,15,'%')
from STUDENT;

--75
select stu_name, STU_NO, trunc(STU_HEIGHT, -2)
from student
order by STU_GRADE;

--77
select nvl2(stu_height, STU_HEIGHT, '미기록')
from STUDENT;

--79
select STU_NO, stu_name, nvl2(stu_height,stu_height-STU_WEIGHT , -STU_WEIGHT)
from STUDENT;

--81
select nvl(nullif('M',stu_gender),null)
from STUDENT;

--83
select stu_no, stu_name, stu_gender, stu_weight,
CASE stu_gender WHEN 'F' THEN stu_weight-5
                when 'M' then stu_weight+5
       ELSE stu_weight
end as 변경된몸무게
from student;

--85
select max(stu_height)
from STUDENT;

--87
select min(stu_weight)
from STUDENT;

--89 
select max(stu_height),min(stu_height), max(stu_weight), min(stu_weight)
from STUDENT;

--91
select count(stu_dept)
from STUDENT;

