import SOAPpy
server = SOAPpy.SOAPProxy("http://localhost:/6000")
print server.hello()
