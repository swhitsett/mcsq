# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
images = Image.create(
  [
    { name: 'sfstadium.jpg'},
    { name: 'curry1.jpg'},
    { name: 'derby1.jpg'}
  ]
)

users = User.create(
  [
    {f_name:'a', l_name: 'a', email: 'a@a.com', password: 'aaaaaaaa', password_confirmation: 'a'}
  ]
)
