require_relative 'stateConsole'

class StateLogin < StateConsole
  def show_screen
    super
    puts("\t\t\tSeja bem vindo ao Jogo da velha!\n\n")
    print("Digite seu login: ")
    @login = gets.to_s.strip.downcase
    if @login == "igor"
      return StateMenu
    else
      return StateCreateUser
    end
  end
end

