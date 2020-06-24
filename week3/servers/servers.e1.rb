require 'socket'

server = TCPServer.new(2345)
socket = server.accept
socket.send('some message\000', 0)

while true do

  socket.puts "What do you say? Type 'quit' to close connection"
  they_said = socket.gets.chomp
  socket.puts "You said: #{they_said}. Goodbye!"

  if (they_said == "quit")
    socket.puts "Thank you! Goodbye!"
    socket.close
  end
  
end