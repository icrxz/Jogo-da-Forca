class StateMenu < StateConsole
  def show_screen
    super
    puts "Teste Menu"
    gets
    return StateMenu
  end
end