from p5 import *

SCALE = 24

def setup():
    size(600,600)

def draw():
    background(50,100,50)
    fill(50,150,50)
    stroke(50,150,50)
    rect(200, 300, 600/SCALE, 600/SCALE)

if __name__ == '__main__':
        run()