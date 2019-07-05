#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

SELECT companyName,avgSalary
FROM(
  SELECT companyId,avgSalary
  FROM(
    SELECT AVG(salary) AS avgSalary,companyId
    FROM employee
    GROUP BY companyId
  )AS comAvgSalary
  ORDER BY avgSalary DESC
  LIMIT 1) AS maxAvgSalary,company
WHERE company.id=maxAvgSalary.companyId;
