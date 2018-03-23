require "http"

puts "Creating client socket"
socket = HTTP::WebSocket.new("localhost", "/main", port: 3000)
puts "Created socket"

socket.on_message do |message|
  puts message
end

socket.run
