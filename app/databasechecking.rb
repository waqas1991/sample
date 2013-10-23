require 'pg'

def connect(db, user, pw)
  PGconn.new('postgres', 5432, '', '', db, user, pw) 
end

begin
  conn = connect('Testing','postgres','ahmed539402')
  puts "Connected to #{conn.db} at #{conn.host}"
rescue PGError=>e 
  puts "Eeeeeeeek!", e
ensure
  conn.close unless conn.nil?
  puts "Connection closed" 
end
