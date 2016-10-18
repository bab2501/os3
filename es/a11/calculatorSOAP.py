import SOAPpy
#from json import dumps
import math

# define functions
def add(x, y):
   """This function adds two numbers"""
   return x + y

def subtract(x, y):
   """This function subtracts two numbers"""
   return x - y

def multiply(x, y):
   """This function multiplies two numbers"""
   return x * y

def divide(x, y):
   """This function divides two numbers"""
   if x==0 and y==0:
        return 'got you 0/0 = error :P'
   else:
        return x / y


