# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.create email: 'win@oddesign.expert', password: 'betacamp', name: 'Win', work_field: 'Full-stack Designer', message: '前端攻城型設計師', profession_cd: '0'
Member.create email: 'kimura@oddesign.expert', password: 'betacamp', name: '木村', work_field: 'iOS Developer', message: 'イケメン iOS 職人⭐️', profession_cd: '1'
Member.create email: 'q@oddesign.expert', password: 'betacamp', name: 'Q', work_field: 'Full-stack Developer', message: '中距離汎用型 Rails 前端攻城人形兵器', profession_cd: '1'
Member.create email: 'shengfongwu@gmail.com', password: 'betacamp', name: 'Sean', work_field: 'Rails Developer', message: 'Rails 開發者', profession_cd: '1'
