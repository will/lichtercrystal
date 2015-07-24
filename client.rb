require 'socket'

PORT = 33333
HOST = ENV['SERVER'] || 'lights.socoded.com'

def lights(target: 0, i: 0, r: 0, g: 0, b: 0)
  s = UDPSocket.new
  s.send([i, r, g, b, target].join(","), 0, HOST, PORT)
  s.close
end
