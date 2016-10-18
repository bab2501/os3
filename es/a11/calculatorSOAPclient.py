import SOAPpy
server = SOAPpy.SOAPProxy("http://boktor.blaauwgeers.net:6000/")

# You are welcome
print "SOAPpy Calculator v0.01)"
print "You are welcome"
print "================================="

# Input the varia
va = int(raw_input("Please enter variable A: "))
vb = int(raw_input("Please enter variable B: "))

#input to the function readline
vo = {0 : server.hello(),
           1 : server.add(va,vb),
           2 : server.sub(va,vb),
           3 : server.mul(va,vb),
           4 : server.div(va,vb)
}

print "================================="
print "What operator do you need?"
print "options = {0 : server.hello(),   "
print "           1 : server.add(va,vb),"
print "           2 : server.sub(va,vb),"
print "           3 : server.mul(va,vb),"
print "           4 : server.div(va,vb)"
print "}"
print "---------------------------------"
vf = int(raw_input("Please enter a number (0-4): "))
print "================================="
print " "

print "Responce:"
print vo[vf]
print "Thank you for using my calculator"
print "================================="

