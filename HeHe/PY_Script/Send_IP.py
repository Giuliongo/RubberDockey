import socket              

s = socket.socket()       
host = socket.gethostname() 
port = 25464             
s.connect((host, port))
s.send("Connected !")
f = open('C:\\.HeHe\\IP\\IP.txt','rb')
print 'Sending...'
l = f.read(1024)
while (l):
    print 'Sending...'
    s.send(l)
    l = f.read(1024)
f.close()
print "Done Sending"
print s.recv(1024)
s.close           
