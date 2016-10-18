import SOAPpy
server = SOAPpy.SOAPProxy("http://boktor.blaauwgeers.net:6000/")
print 'hello'
print server.hello()
print 'add 1 and 2'
print server.add(1,2)
