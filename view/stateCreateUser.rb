require './model/player'
require './controller/player_controller'

class StateCreateUser < StateConsole
  def show_screen
    super
    puts("\t\t\tCrie um novo usuário!\n\n")
    print("Digite seu login: ")
    @login = gets.to_s.strip
    print("Digite seu nome: ")
    @name = gets.to_s.strip
    print("Digite seu sexo: ")
    @gender = gets.to_s.strip
    print("Digite sua idade: ")
    @age = gets.strip.to_i
    p = Player.new @login, @name, @gender, @age

    

    puts p.name
    puts p
    gets
    return StateLogin
  end
end