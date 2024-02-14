#Flask is a Python microframework used to build web applications and REST APIs. 
#Flask provides a solid backbone for your applications while leaving many design choices up to you. 
#Flask’s main job is to handle HTTP requests and route them to the appropriate function in the application.

from flask import Flask
from flask import request

app = Flask(__name__)



@app.route("/")
def hello_learner():
    return "<h1>Hello, Welcome to our youtube channel DataSciLearn</h1>"

@app.route("/hello_learner1")
def hello_learner1():
    return "<h1>DataSciLearn is a channel dedicated to providing high-quality learning content for data science enthusiasts and practitioners. </h1>"

@app.route("/hello_learner2")
def hello_learner2():
    return "<h1>The channel covers various topics related to data science, including data analysis, data visualization, machine learning, deep learning, natural language processing, and more.Stay Motivated and Keep Learning. This repository contains day-wise notes and code snippets for our comprehensive crash course on Data Science. This comprehensive crash course is designed to provide you with a solid foundation in data science using Python. Each day covers key topics, hands-on exercises, and practical examples to help you master essential concepts in a step-by-step manner, laying the foundation for a successful journey into the world of data science and Gen AI.</h1>"
@app.route("/test")

def test():
    a = 6*5
    return "This is my function to run an app {}".format(a)

@app.route("/test2/test2")
def test2():
    data = request.args.get('x')
    return "This is data input from my url {}".format(data)
    
    
    
    
    

if __name__ == "__main__":
    app.run(host="0.0.0.0")
    

