#!/usr/bin/python3
"""Starts a Flask web application"""


from flask import Flask, render_template


app = Flask(__name__)


@app.route("/", strict_slashes=False)
def hello_hbnb():
    """Returns a greeting message"""
    return "Hello HBNB!"


@app.route("/hbnb", strict_slashes=False)
def hbnb():
    """Returns a short greeting message"""
    return "HBNB"


@app.route("/c/<text>", strict_slashes=False)
def c_route(text):
    """Returns 'C' followed by the value of <text>"""
    return f"C {text.replace('_', ' ')}"


@app.route("/python/<text>", strict_slashes=False)
@app.route("/python/", strict_slashes=False)
def python_route(text='is cool'):
    """Returns 'Python' followed by the value of <text>"""
    return f"Python {text.replace('_', ' ')}"


@app.route("/number/<int:n>", strict_slashes=False)
def int_route(n):
    """Returns 'n is a number' only if  n is an int"""
    return f"{n} is a number"


@app.route("/number_template/<int:n>", strict_slashes=False)
def int_temp_route(n):
    """Returns an int template"""
    return render_template('5-number.html', n=n)


@app.route("/number_odd_or_even/<int:n>", strict_slashes=False)
def odd_even_temp_route(n):
    """
    display a HTML page only if n is an integer
    with a H1 tag: 'Number: n is even|odd' inside the tag BODY
    """
    return render_template('6-number_odd_or_even.html', n=n)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
