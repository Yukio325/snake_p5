SCALE = 45
SIZE = 720

def setup():
    size(SIZE, SIZE)

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
            
            #// test for snake positioning
            if i*SCALE < mouseX < (i+1)*SCALE and j*SCALE < mouseY < (j+1)*SCALE:
                stroke(50, 175, 50)
                fill(50, 175, 50)
                rect(i*SCALE, j*SCALE, SCALE, SCALE)
