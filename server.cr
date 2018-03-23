require "kemal"

SOCKETS = [] of HTTP::WebSocket

ws "/main" do |socket|
  SOCKETS << socket

  socket.on_message do |message|
    puts message
    SOCKETS.each { |socket| socket.send message}
  end

  socket.on_close do
    SOCKETS.delete socket
  end
end

Kemal.run
