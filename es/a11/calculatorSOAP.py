import SOAPpy
#from json import dumps
import math

# define functions
def add(x, y):
   """This function adds two numbers"""
   return x + y

def sub(x, y):
   """This function subtracts two numbers"""
   return x - y

def mul(x, y):
   """This function multiplies two numbers"""
   return x * y

def div(x, y):
   """This function divides two numbers"""
   if x==0 and y==0:
        return 'got you 0/0 = error :P'
   else:
        return x / y


def hello():
    return "Hello Mick"
server = SOAPpy.SOAPServer(("boktor.blaauwgeers.net", 7000))
server.registerFunction(hello)
server.registerFunction(add)
server.registerFunction(sub)
server.registerFunction(mul)
server.registerFunction(div)
server.serve_forever()

