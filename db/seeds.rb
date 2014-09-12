# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "POPULANDO TABELA GENDERS"
puts "------------------------"
genders = Gender.create([{ gender: 'Masculino'}, { gender: 'Feminino' }])

puts "POPULANDO TABELA STATES"
puts "-----------------------"
states = State.create([{ state: 'Ceará'}, { state: 'São Paulo' }])

puts "POPULANDO TABELA CITIES"
puts "-----------------------"
cities = City.create([{ city: 'Fortaleza', state: State.find(1) }])

puts "POPULANDO TABELA POSITIONS"
puts "-----------------------"
positions = Position.create([{ position: 'Administrador' }])

puts "POPULANDO TABELA BRANCHES"
puts "-----------------------"
branches = Branch.create([{ branch: 'ADM', address: 'Av. Das Graviolas, 360', city: City.find(1), state: State.find(1) }])

puts "CRIANDO USUÁRIO PADRÃO"
puts "----------------------"
user = User.create([{ name: 'Administrador', email: 'adm@adm.com', password: 'admadm', password_confirmation: 'admadm', avatar: 'avatar.png', gender: Gender.find(1), birth_date: '1985-10-28', address: 'Av. Das Graviolas, 360', city: City.find(1), state: State.find(1), position: Position.find(1), branch: Branch.find(1), active: true }])

#puts "POPULANDO TIPOS DE UNIFORME"
#puts "---------------------------"
#unifome_piece_type = UniformPieceType.create([{ piece_type: 'Chapéu', picture: 'clothes/hat.png' },
#                                              { piece_type: 'Boné', picture: 'clothes/cap.png' },

#                                              { piece_type: 'Mochila' },
#                                              { piece_type: 'Bolsa', picture: 'clothes/bag.png' },

#                                              { piece_type: 'Luva', picture: 'clothes/shoes.png' },

 #                                             { piece_type: 'Camisa', picture: 'clothes/t-shirt.png'},

  #                                            { piece_type: 'Colar' },
  #                                            { piece_type: 'Anel' },
  #                                            { piece_type: 'Botton' },

  #                                            { piece_type: 'Calça', picture: 'clothes/pants.png' },
  #                                            { piece_type: 'Vestido', picture: 'clothes/dress.png'},

#                                              { piece_type: 'Sapato', picture: 'clothes/shoes.png' }])

