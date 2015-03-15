# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

names = %w(レコーダー イヤホン マイク WEBカメラ 洗濯機 冷蔵庫 エアコン ノートPC 40型TV デジタルカメラ)

names.each do |name|
  random = [*1..10].sample
  Product.create! name: name, price: random * 1000, released_on: random.day.ago
end
