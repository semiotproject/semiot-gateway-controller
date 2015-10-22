import urllib.request

server_host = 'localhost'
server_port = 8888

for num in range(0,4):
	urllib.request.urlopen("http://"+server_host+":"+str(server_port)+"/api?id=1&value="+str(num)).read()

#from tornado import websocket

#from websocket import create_connection
#ws = create_connection("ws://localhost:8888/ws")
#print("Sending 'Hello, World'...")
#ws.send("Hello, World")
#print("Sent")
#print("Reeiving...")
#result = ws.recv()
#print("Received '%s'" % result)
#ws.close()
