# ChargeIt-记账微信小程序

## 产品创意

注：欢迎补充，想法写到下面即可。

1. 基本功能：实现一个微信的记账功能（重前端）
2. 扩展功能：账本数据可视化，消费推荐，同类推荐，用户画像（重后端）

## Stage1

工作内容：熟悉微信小程序语法和开发环境

相关资源：

> [开发工具-windows64位](https://servicewechat.com/wxa-dev-logic/download_redirect?type=x64&from=mpwiki&download_version=1021904091&version_type=1)
>
> [小程序开发指南](https://developers.weixin.qq.com/miniprogram/dev/devtools/download.html )
>
> [学做小程序在线课程](http://www.xuetangx.com/courses/course-v1:TsinghuaX+2018032801X+2018_T1/about )
>
> [微信小程序入门与实战](https://ke.qq.com/course/376950?from=800005949&taid=3153936219750518 )

## Stage2

工作内容：数据库表设计第一版

三张主要表，用户表（User），类别表（category）和账单表（bill）。  
其中用户表和账单表，类别表和账单表之间是一对一关系，用户表和类别表之间是多对多关系，多对多关系设计了中间表(user_category)进行映射。  

```sql
-- 查询所有人的消费账单
select `user`.id,username,category_id,cost,bill.createDate from user,bill where `user`.id=bill.user_id

-- group by多个字段，只有每个字段都相等才会归为一组，否则会认为是两个不同的分组
-- 查询每个用户的总消费
select `user`.id,username,sum(cost) from user,bill where `user`.id=bill.user_id group by user_id,username

-- 查询所有人的每天的账单消费金额
-- sql执行顺序 from->where->group by->select->having->select->group by
select `user`.id,username,sum(cost),month(bill.createDate) as month,day(bill.createDate) as day from user,bill where `user`.id=bill.user_id group by user_id,username,month(bill.createDate),day(bill.createDate)



-- 统计每个用户每个月各个类目的消费金额
-- select后的别名可以在group by后使用
select `user`.id,category.`name` as cate_name,sum(cost),bill.category_id,month(bill.createDate)  from user,category,bill where `user`.id=bill.user_id and category.id = bill.category_id group by cate_name,category_id,`user`.id,month(bill.createDate) order by `user`.id;
```

