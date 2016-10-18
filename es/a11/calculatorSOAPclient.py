import SOAPpy
server = SOAPpy.SOAPProxy("http://boktor.blaauwgeers.net:6000/")
print server.hello()
