select Department,
count(case when Marks>80 then 1 else null end) as Dept_HighScore_Count
from student
group by Department;
