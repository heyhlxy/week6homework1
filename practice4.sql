# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

SELECT employee.id,name,age,gender,companyId,salary,companyName,avgsal
FROM employee,company,
   (SELECT AVG(salary) AS avgsal,companyId AS cid
    FROM employee
    GROUP BY companyId)AS avgSalary
WHERE companyId=cid 
AND company.id = companyId
AND salary>avgsal;
