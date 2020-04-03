select "E1".ename ,"E1".sal, "E2".ename
	from emp "E1"
	join emp "E2"
	on "E1".mgr = "E2".EMPNO
union --联合
select ename,sal,'最大老板'
	from emp
	where mgr is null

select top 3 * from emp               --工资前三的人的信息
	order by sal desc

select top 3 * from emp
	where empno not in (select top 3 empno  from emp order by sal desc) --用编号除去工资前三的人的编号
	order by sal desc

select top 3 * from emp
	where empno not in (select top 6 empno  from emp order by sal desc)		--除去前六
	order by sal desc

select top 3 * from emp
	where empno not in (select top 9 empno  from emp order by sal desc)   --除前九
	order by sal desc

select top 3 * from emp
	where empno not in (select top 12 empno  from emp order by sal desc)  --类推
	order by sal desc