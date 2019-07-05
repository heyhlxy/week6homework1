# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
SELECT companyName,name
FROM (
  SELECT companyName,name
  FROM company,employee
  WHERE company.id=employee.companyId
)cn
RIGHT JOIN(
  SELECT name AS sname,MAX(salary)
  FROM employee
  GROUP BY companyId
)ns
ON cn.name = ns.sname;