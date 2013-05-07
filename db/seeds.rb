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

Plaza.create([
	{ name:'Cancun'},
	{ name: 'Playa del Carmen'},
	{ name: 'Merida'},
	{ name: 'Chetumal'},
	{ name: 'Cozumel'},
	{ name: 'Tulum'},
	{ name: 'Jose Maria Morelos'},
	{ name: 'Isla Mujeres'},
	{ name: 'Tizimin'},
	{ name: 'Valladolid'},
	{ name: 'Campeche'}])

Source.create([
	{ name:	'Policiaco'},
	{ name: 'Religion'},
	{ name: 'Politica'},
	{ name: 'Politica'}, 
	{ name: 'Educacion'},
	{ name: 'Empresarial/Turismo'},
	{ name: 'Ciencia y tecnologia'},
	{ name: 'Deportes'}, 
	{ name: 'Salud'},
	{ name: 'Economia'},
	{ name: 'Sociales'},
	{ name: 'Espectaculo'},
	{ name: 'Entretenimiento'}, 
	{ name: 'Ayuntamiento'},
	{ name: 'Clima'},
	{ name: 'Medio ambiente'}])

User.create([
	{ name: "Carlos Aguila", email:"caguila@promovision.mx",password: "12345678",password_confirmation:"12345678",plaza: "1"}
	])

mike = User.create(name: "miguel huerta", email:"mhuerta@promovision.mx", password: "linux3963", password_confirmation: "linux3963")
yaz = User.create(name: "Yazmin Vazquez",email:"yvazquez@promovision.mx", password: "12345678", password_confirmation: "12345678")

mike.add_role :root
yaz.add_role :root


