# Write your MySQL query statement below
select name as Employee from Employee
where Employee.salary>(select salary from Employee as Man
                        where id=Employee.managerId)