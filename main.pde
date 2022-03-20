import random as r

SCALE = 45
SIZE = 630

def switchCase(snake, keyCode):
    if keyCode == UP or key == 'w':
        if not snake.vy > 0:
            snake.vx = 0
            snake.vy = -SCALE
    elif keyCode == DOWN or key == 's':
        if not snake.vy < 0:
            snake.vx = 0
            snake.vy = SCALE
    elif keyCode == LEFT or key == 'a':
        if not snake.vx > 0:
            snake.vx = -SCALE
            snake.vy = 0
    elif keyCode == RIGHT or key == 'd':
        if not snake.vx < 0:
            snake.vx = SCALE
            snake.vy = 0

class Snake():
    def __init__(self):
        self.x = 0
        self.y = 0

        self.vx = 0
        self.vy = 0
    
    def pickLocation(self):
        self.x = r.randint(0, (SIZE/SCALE)-1)*SCALE
        self.y = r.randint(0, (SIZE/SCALE)-1)*SCALE

s = Snake()

def setup():
    frameRate(6.5)
    size(SIZE, SIZE)
    s.pickLocation()

def draw():
    #// generate background grid
    for i in range(SIZE/SCALE):
        for j in range(SIZE/SCALE):
            if (i+j)%2 == 0:
                #// light blue
                stroke(12, 120, 240)
                fill(12, 120, 240)
                rect(i*SCALE, j*SCALE, SCALE, SCALE)
            else:
                #// dark blue
                stroke(12, 60, 120)
                fill(12, 60, 120)
                rect(i*SCALE, j*SCALE, SCALE, SCALE)

    switchCase(s, keyCode)
    if 0 <= s.x+s.vx <= SIZE-SCALE and 0 <= s.y+s.vy <= SIZE-SCALE:
        s.x += s.vx
        s.y += s.vy

    stroke(50, 175, 50)
    fill(50, 175, 50)
    rect(s.x, s.y, SCALE, SCALE)