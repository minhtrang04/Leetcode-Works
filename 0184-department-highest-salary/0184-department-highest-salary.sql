# Write your MySQL query statement below
select Department.name as Department,Employee.name as Employee,
Employee.salary as Salary from Employee left join Department on
Employee.departmentId = Department.id
where (Department.Id, Employee.Salary) in (SELECT DepartmentId, max(Salary)
FROM Employee
GROUP BY DepartmentId)

