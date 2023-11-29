use rdbms;
SELECT distinct Deptno,Job
FROM emp;

Select * FROM emp
ORDER BY Deptno ASC,job DESC;



SELECT distinct job
FROM emp
order by job DESC;


SELECT * 
FROM emp
WHERE Hiredate<('1981-1-1');


SELECT Empno,Ename,Sal,Sal/30,12*Sal annSal FROM emp order by annsal asc;



select * from emp where Comm > Sal;




select Empno,Ename,Sal From emp Where Mgr =7369;


select * from emp where Comm>Sal;

select *
FROM emp
WHERE job='CLERK'
  OR job='ANALYST'
ORDER BY job DESC;


select* from emp where 12*sal between 22000 and 45000;



           select * From emp where  Ename Like's%';


SELECT * from emp Where Empno  not like '78%';


select * from emp Where job='CLERK' AND Deptno =20;

select *from emp w,emp m where w.mgr = m.empno and w.hiredate < m.hiredate ;  
select* from emp w,emp m where w.empno= m.mgr and w.hiredate> m.hiredate;


select * from emp e ,dept d where d.deptno = 30  and e.deptno = d.deptno and e.job in ( select e.job from emp e,dept d where e.deptno = d.deptno and d.deptno=10);



Select* from emp where Sal in (select Sal from emp   where ( Ename = "SMITH" or Ename = "FORD" )) order by Sal desc;


select * from emp where job in (select job from emp where Ename ="SMITH" or Ename = "ALLEN");


select e.job from emp e where e.deptno = 10 and e.job not in (select job from emp where deptno =20);


select max(sal) from emp;


select * from emp where sal in (select max(sal) from emp);


select sum(sal) from emp where empno in(select mgr from emp);


SELECT * FROM emp WHERE Ename LIKE '%A%';


select * from emp where sal in(select min(sal) from emp group by job)order by sal asc;


select * from emp where sal>(select sal from emp where Ename = "BLAKE");

CREATE VIEW v1 AS
SELECT e.Ename, e.job, d.Dname, d.Loc
FROM emp e
JOIN dept d ON e.Deptno = d.Deptno;



