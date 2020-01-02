require_relative 'view/stateLogin'
require_relative 'view/stateCreateUser'
require_relative 'view/stateGame'
require_relative 'view/stateMenu'
require_relative 'view/stateRanking'

state = StateLogin.new

while(true)
  begin
    if(state.is_a? StateConsole)
      stateAux = state.show_screen
      state = stateAux.new
    else
      exit
    end
  rescue Exception => e
    puts e.message
    gets
  end
end