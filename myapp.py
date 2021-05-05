#https://blog.csdn.net/guolindonggld/article/details/83386920

from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hi! It works!'

if __name__=='__main__':
    app.run(host='0.0.0.0')

