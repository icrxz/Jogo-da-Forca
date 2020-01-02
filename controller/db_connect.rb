class DbConnect

  def get_connection
    require 'pg'
    
    begin
      con = PG.connect :dbname => 'jogo_da_forca', :user => 'icrxz', :password => '123456'
      user = con.user
      db_name = con.db
      pswd = con.pass 

      puts con.server_version
      
      return con

      #con.exec "DROP TABLE IF EXISTS Player"
      con.exec "CREATE TABLE IF NOT EXISTS Player (
        Id SERIAL PRIMARY KEY, 
        Name VARCHAR(30), 
        Login VARCHAR(30) UNIQUE NOT NULL,
        Gender CHAR(1),
        Age INTEGER,
        DateCreated TIMESTAMP,
        DateModified TIMESTAMP);"

    rescue PG::Error, Exception => e
      puts e.message
    ensure
      con.close if con
    end

  end
end
