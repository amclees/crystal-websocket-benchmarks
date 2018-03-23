require "http"

puts "Creating broadcast socket"
socket = HTTP::WebSocket.new("localhost", "/main", port: 3000)
puts "Created socket"

loop do
  puts "Sending message"
  socket.send("Hello world!")
end
