class StateGame < StateConsole
  def show_screen
    super
    puts "Teste Game"
    gets
    return StateGame
  end
end