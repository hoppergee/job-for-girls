# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "哥哥马上就要开始创建各种数据了"

create_account = User.create([email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account 创建成功'

company_user_name = [
  {name:'美宅', email:"mei@qq.com"}, 
  '语响教育', 
  '端点科技', 
  '三体', 
  '嘟嘟养成记', 
  'Finger', 
  '氦氪', 
  '机动派', 
  '美团点评', 
  '今日头条', 
  '网易', 
  '滴滴出行', 
  '爱奇艺',
  '优酷', 
  '百度', 
  '阿里巴巴', 
  '360', 
  '58到家', 
  '饿了么', 
  '小米', 
  '汽车之家'
]

company_business_scope = [
  '移动互联网,数据服务', '移动互联网,电子商务', '电子商务,旅游', '移动互联网,数据服务', '移动互联网,企业服务', '硬件,其他', '移动互联网,O2O'
]

company_financing_process = [
  '未融资', '天使轮', 'A轮', 'B轮', 'C轮', 'D轮', '上市公司', '不需要融资'
]

