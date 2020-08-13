require_relative 'User'

user = User.new
puts user.getName
puts user.getBirth

puts 'Mude o nome:'
user.setName

puts 'Mude o nascimento:'
user.setBirth

puts 'Novos dados:'
puts "Nome: #{user.getName}"
puts "Nascimento: #{user.getBirth}"