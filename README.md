## 本项目实现的最终作用是基于JSP家教服务找家教平台网站项目
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 学生需求管理
 - 教员信息管理
 - 留言管理
 - 管理员登陆
 - 订单管理
### 第2个角色为教师角色，实现了如下功能：
 - 个人资料管理
 - 密码修改
 - 我的订单查看
 - 授课信息管理
 - 提交反馈
 - 教师登录
 - 时间安排查看
 - 查看学员需求
 - 证件认证
### 第3个角色为学生角色，实现了如下功能：
 - 学员发布需求
 - 学生登录
 - 学生首页
 - 我的订单查看
 - 查找教员
 - 查看学生的需求
 - 查看我的需求
 - 查看老师基本信息
 - 预约教师
## 数据库设计如下：
# 数据库设计文档

**数据库名：** jiajiao_site

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [feedback](#feedback) |  |
| [grade](#grade) |  |
| [lesson](#lesson) |  |
| [manager](#manager) |  |
| [region](#region) |  |
| [reservation](#reservation) |  |
| [student](#student) | 学生信息表 |
| [subject](#subject) |  |
| [teacher](#teacher) | 教师信息表 |
| [user](#user) | 用户表 |

**表名：** <a id="feedback">feedback</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  4   | role |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 角色  |
|  5   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  6   | create_time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="grade">grade</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | g_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | number |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | price |   int   | 10 |   0    |    Y     |  N   |   NULL    | 价格  |

**表名：** <a id="lesson">lesson</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | grade |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | subject |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="manager">manager</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | m_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="region">region</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | r_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="reservation">reservation</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | t_tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | s_tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | subject |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | Rtime |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | Rstatu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | create_time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  9   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  10   | method |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | money |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 金额  |
|  12   | remark |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  13   | s_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="student">student</a>

**说明：** 学生信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | s_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | sex |   varchar   | 4 |   0    |    Y     |  N   |   NULL    | 性别  |
|  5   | age |   int   | 10 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  6   | tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 时间日期  |
|  8   | area |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  10   | grade |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | status |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 状态  |
|  12   | requestSex |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | requestMoney |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | PASSWORD |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  15   | authentication |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  16   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  17   | create_time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |

**表名：** <a id="subject">subject</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | s_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="teacher">teacher</a>

**说明：** 教师信息表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | u_id |   int   | 10 |   0    |    Y     |  N   |   NULL    | 用户ID  |
|  3   | pid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | images |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | t_name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  6   | sex |   char   | 2 |   0    |    Y     |  N   |   NULL    | 性别  |
|  7   | age |   varchar   | 3 |   0    |    Y     |  N   |   NULL    | 年龄  |
|  8   | nationality |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 国籍  |
|  9   | tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  11   | motto |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | introduce |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 介绍  |
|  13   | graduate_school |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | specialty |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | education |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 教育经历  |
|  16   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  17   | authentication |   varchar   | 5 |   0    |    Y     |  N   |   NULL    |   |
|  18   | experience |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  19   | money |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 金额  |
|  20   | teach_time |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  21   | subject |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  22   | area |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  23   | create_time |   datetime   | 19 |   0    |    Y     |  N   |   NULL    | 创建时间  |
|  24   | imageC |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  25   | imageE |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="user">user</a>

**说明：** 用户表

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | tell |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | password |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | role |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 角色  |

**运行不出来可以微信 javape 我的公众号：源码码头**
