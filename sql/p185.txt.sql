CREATE TABLE STUDENT1
AS SELECT * FROM STUDENT WHERE STU_GRADE IN (1,2);
CREATE TABLE SUBJECT1
AS SELECT * FROM SUBJECT;
CREATE TABLE ENROL1
AS SELECT * FROM ENROL;

--1
insert into student1
values('20101059','조병준', '컴퓨터정보', 1,'M','B', 164, 70);

--3
insert into student1(stu_no, stu_name, stu_dept, stu_grade, stu_class)
values('20103009', '박소신', '기계', (select stu_grade from student1 where stu_no = '20153075'),
        (select stu_class from student1 where stu_no = '20153075'));
        
select *
from student1;

--5
update student1
set stu_class = 'B'
where stu_no = '20142021';

--7 모든 학생의 학년이 올랐다!.
update student1
set stu_grade = stu_grade + 1;

--9 전자회로실험 과목의 점수가 10점을 감하라
update enrol1
set enr_grade = enr_grade - 10
where sub_no = '106';

--11 20093088 자퇴
delete from student1
where stu_no = '20093088';

--13 과목번호 110 -> 501로
update enrol1
set sub_no = '501'
where sub_no = '110';

--15 enrol1 테이블에서 subject1에 없는 과목번호를 999로 변경
update enrol1
set sub_no = '999'
where sub_no not in (select sub_no from subject1);

--17 enrol1 에서 과목번호 999 를 삭제
delete from enrol1
where sub_no = '999';

--19 enrol 에 없는 과목 삭제
delete subject1
where sub_no not in (select sub_no from enrol1);