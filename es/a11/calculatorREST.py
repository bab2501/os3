from flask import Flask, request
from flask_restful import Resource, Api
from json import dumps
import math

app = Flask(__name__)
api = Api(app)


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

class CalcDMa(Resource):
    def get(self, fa, fb):
        fc = add(float(fa),float(fb))
        result = {'input A': [fa], 'input B': [fb], 'output C': [fc]}
        return result
class CalcDMs(Resource):
    def get(self, fa, fb):
        fc = subtract(float(fa),float(fb))
        result = {'input A': [fa], 'input B': [fb], 'output C': [fc]}
        return result
class CalcDMm(Resource):
    def get(self, fa, fb):
        fc = multiply(float(fa),float(fb))
        result = {'input A': [fa], 'input B': [fb], 'output C': [fc]}
        return result
class CalcDMd(Resource):
    def get(self, fa, fb):
        fc = divide(float(fa),float(fb))
        result = {'input A': [fa], 'input B': [fb], 'output C': [fc]}
        return result

api.add_resource(CalcDMa, '/calc/addition/<string:fa>/<string:fb>/')
api.add_resource(CalcDMs, '/calc/subtraction/<string:fa>/<string:fb>/')
api.add_resource(CalcDMm, '/calc/multiplication/<string:fa>/<string:fb>/')
api.add_resource(CalcDMd, '/calc/division/<string:fa>/<string:fb>/')

if __name__ == '__main__':
    app.run(host='0.0.0.0',debug=True)
