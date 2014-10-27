# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Gender.count == 0 then
  puts "POPULANDO TABELA GENDERS"
  puts "------------------------"
  genders = Gender.create([{ gender: 'Masculino'}, { gender: 'Feminino' }])
end

if State.count ==0 then
  puts "POPULANDO TABELA STATES"
  puts "-----------------------"
  states = State.create([{ name: 'Ceará'}])
end

if City.count == 0 then
  puts "POPULANDO TABELA CITIES"
  puts "-----------------------"
  cities = City.create([{ name: 'Fortaleza', state: State.find_by_name('Ceará' )}])
end

if Position.count == 0 then
  puts "POPULANDO TABELA POSITIONS"
  puts "-----------------------"
  positions = Position.create([{ position: 'Administrador' }])
end

if Branch.count == 0 then
  puts "POPULANDO TABELA BRANCHES"
  puts "-----------------------"
  branches = Branch.create([{ branch: 'ADM', address: 'Av. Das Graviolas, 360', city: City.find(1), state: State.find(1) }])
end

if User.count == 0 then
  puts "CRIANDO USUÁRIO PADRÃO"
  puts "----------------------"
  user = User.create([{ name: 'Administrador', email: 'adm@adm.com', password: 'admadm', password_confirmation: 'admadm', avatar: 'avatar.png', gender: Gender.find(1), birth_date: '1985-10-28', address: 'Av. Das Graviolas, 360', city: City.find(1), state: State.find(1), position: Position.find(1), branch: Branch.find(1), active: true }])
end

if UniformPieceType.count == 0 then
  puts "POPULANDO TIPOS DE UNIFORME"
  puts "---------------------------"
  unifome_piece_type = UniformPieceType.create([
    { name: 'Chapéu', picture: 'clothes/hat.png' },
    { name: 'Boné', picture: 'clothes/cap.png' },

    { name: 'Mochila' },
    { name: 'Bolsa', picture: 'clothes/bag.png' },

    { name: 'Luva', picture: 'clothes/shoes.png' },
    { name: 'Camisa', picture: 'clothes/t-shirt.png'},

    { name: 'Colar' },
    { name: 'Anel' },
    { name: 'Botton' },

    { name: 'Calça', picture: 'clothes/pants.png' },
    { name: 'Vestido', picture: 'clothes/dress.png'},
    { name: 'Sapato', picture: 'clothes/shoes.png' }
  ])
end
