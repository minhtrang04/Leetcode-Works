# Write your MySQL query statement below
select x,y,z,
CASE
   WHEN x<0 and y<0 and z<0 THEN 'No'
   WHEN (x+y)>z and (y+z)>x and (x+z)>y THEN 'Yes'
   else 'No'
   end as triangle
   from Triangle
