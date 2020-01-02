class StateConsole
  def show_screen
    Gem.win_platform? ? (system "cls") : (system "clear")
  end
end