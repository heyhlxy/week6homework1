# 1.创建数据库employee_db
CREATE DATABASE IF NOT EXISTS employee_db /*!40100 DEFAULT CHARACTER SET utf8 */;

# 2.在数据库employee_db中创建table：`Employee`
CREATE TABLE IF NOT EXISTS Employee(
  id INT PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(10) NOT NULL,
  companyId INT NOT NULL,
  salary INT NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8; 

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA LOCAL INFILE 'E:/ThoughtWorks/week6/week6homework1/employee-data.csv' 
INTO TABLE employee
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n';

# 4.在数据库employee_db中创建table：`Company`
CREATE TABLE Company(
  id INT PRIMARY KEY,
  companyName VARCHAR(40) NOT NULL,
  employeesNumber INT(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA LOCAL INFILE 'E:/ThoughtWorks/week6/week6homework1/company-data.csv'
INTO TABLE company
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT *
FROM employee
WHERE name LIKE '%n%'
AND salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中