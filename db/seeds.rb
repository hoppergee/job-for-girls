# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "哥哥马上就要开始创建各种数据了"

create_account = User.create!([name: '管理员吉', email: 'admin@gmail.com', password: '123456', password_confirmation: '123456', is_admin: 'true'])
puts 'Admin account 创建成功'

company_user_info = [
  {name:'美宅', email:"mei@qq.com"}, 
  {name:'氦氪', email: "ke@qq.com"},
  {name: '美团点评', email: "tuan@qq.com"},
  {name: '今日头条', email: "jin@qq.com"},
  {name: '网易', email: "wang@qq.com"},
  {name: '滴滴出行', email: "di@qq.com"},
  {name: '爱奇艺', email: "ai@qq.com"},
  {name: '优酷', email: "you@qq.com"},
  {name: '百度', email: "bai@qq.com"},
  {name: '阿里巴巴', email:"ali@qq.com"},
  {name: '360', email: "360@qq.com"},
  {name: '58到家', email: "58@qq.com"},
  {name: '饿了么', email: "ele@qq.com"},
  {name: '小米', email: "xiaomi@qq.com"} ,
  {name: '汽车之家', email: "qi@qq.com"} 
]

company_business_scopes = [
  '移动互联网,数据服务', '移动互联网,电子商务', '电子商务,旅游', '移动互联网,数据服务', '移动互联网,企业服务', '硬件,其他', '移动互联网,O2O'
]

company_financing_process = [
  '未融资', '天使轮', 'A轮', 'B轮', 'C轮', 'D轮', '上市公司', '不需要融资'
]

puts 'cool'
company_user_info.each do |company|
  User.create!([
    name: company[:name], 
    email: company[:email], 
    password: '123456', 
    password_confirmation: '123456', 
    is_admin: 'true', 
    is_company: 'true', 
    business_scope: company_business_scopes[rand(company_business_scopes.length)],
    financing_process: company_financing_process[rand(company_financing_process.length)]
  ])
end

job_info = [
  "iOS工程师","后端开发工程师","C#开发","后端开发实习", "后端高级主管", "Golang后端开发",
  "游戏后端","移动开发工程师", "Software Engineers(iOS)", "高级移动开发工程师","测试工程师",
  "前端开发工程师","网络安全工程师","技术总监","构架师"
]

job_description = '
岗位职责：
1、负责iphone客户端软件、SDK开发、调试与维护；
2、完成相关技术文档的编写；
3、与服务器端开发人员沟通解决问题。
任职要求：
1、本科及以上学历；
2、至少2年及以上iOS开发经验，精通Objective-C；
3、思路清晰，喜欢思考，良好的分析和独立解决问题的能力，良好的专业英文文档阅读能力；
4、至少有一款完整的app开发与发布的经验；
5、有电力行业软件开发经验优先。
'

job_city = [
  "北京","香港","上海","广州","浙江","成都","首尔", "东京", "大阪","台中", "台北","高雄",
  "巴黎", "伦敦", "巴塞罗那", "罗马", "佛罗伦萨", "米兰", "威尼斯", "阿姆斯特丹", "尼斯", "慕尼黑", "柏林","马德里",
  "洛杉矶", "纽约", "旧金山", "波士顿", "华盛顿特区", "硅谷", "西雅图", "温哥华", "迈阿密", "圣地亚哥", "拉斯维加斯", "芝加哥",
  "悉尼", "墨尔本", "皇后镇", "黄金海岸", "布里斯班", "奥克兰"
]

job_category = [
  "Java", "Python", "PHP", ".NET", "C#", "C++", "C", "VB", "Delphi", "Perl", "Ruby", 
  "Hadoop", "Node.js", "数据挖掘", "自然语言处理", "搜索算法", "精准推荐", "全栈工程师",
   "Go", "ASP", "Shell", "HTML", "Android", "iOS", "WP", "Flash", "JavaScript", "U3D", "COCOS2D-X"
]

20.times do |index|
  
  categorys = job_category.sample(2)
  
  Job.create!([
    title:  job_info.sample,
    description:  job_description,
    wage_lower_bound: rand(20..39) * 100,
    wage_upper_bound: rand(40..79) * 100,
    is_hidden:  'false',
    category1:  categorys.pop,
    category2:  categorys.pop,
    work_ex_lower_bound:  rand(0..2),
    work_ex_upper_bound:  rand(3..5),
    work_city:  job_city.sample,
    user_id:  rand(2..16)
  ])
end

