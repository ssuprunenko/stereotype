# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(
  title:       'Microfirst',
  description: 'First IT company in Hopeland',
  location:    'Hopeland, Dreamburg',
  worker_id:   [1]
);

Worker.create(
  name:     'Peter van Pig',
  age:       37,
  position: 'CEO'
);