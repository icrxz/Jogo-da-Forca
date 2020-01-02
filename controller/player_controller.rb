require 'pg'

class PlayerController < BaseController
  def initialize()
    super (Player)
  end

  def addPlayer(player)
    @player = player
    
    con = DbConnect.get_connection

    con.transaction do |con|
      con.prepare 'stm1', "INSERT INTO #{@tabela} VALUES (DEFAULT, $1, $2, $3, $4, $5, $6);"
      con.exec_prepared 'stm1', [@player.name, @player.login, @player.gender, @player.age, @player.dateCreated, @player.dateModified]

      rs = con.exec "SELECT * FROM #{@tabela}Player;"
    end

    puts rs.getvalue 0, 0
  end
end