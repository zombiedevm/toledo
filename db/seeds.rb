# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'Bienvenido al Sistema de administracion Toledo'
puts 'Cargano usuarios y roles del sistema....'
Role.create([
  { :name => 'root' },
  { :name => 'jefe_de_informacion', :modulo => 'noticias' },
  { :name => 'director_de_noticias' , :modulo => 'noticias' },
  { :name => 'reportero',:modulo => 'noticias' },
  { :name => 'coordinador_de_noticas', :modulo => 'noticias'},
  { :name => 'camarografo' , :modulo => 'noticias'},
  { :name => 'editor',  :modulo => 'noticias'},
  { :name => 'corresponsal' , :modulo => 'noticias'},
  {:name => 'capturista' , :modulo => 'noticias'}])

mike = User.create(email:"mhuerta@promovision.mx", password: "linux3963", password_confirmation: "linux3963")
yaz = User.create(email:"yvazquez@promovision.mx", password: "12345678", password_confirmation: "12345678")

mike.add_role :root
yaz.add_role :root


