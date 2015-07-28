//
//  myBall.h
//  mySketch0721
//
//  Created by Jay Jin on 2015. 7. 21..
//
//

#ifndef __mySketch0721__myBall__
#define __mySketch0721__myBall__

#include <stdio.h>
#include "ofMain.h"

class myBall {
public:
    myBall();
    ~myBall();
    
    void setup();
    void draw();
    void animatedDraw(int x, int y);
    
    int xPos[50];
    int yPos[50];
};

#endif /* defined(__mySketch0721__myBall__) */
