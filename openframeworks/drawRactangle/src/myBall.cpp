//
//  myBall.cpp
//  mySketch0721
//
//  Created by Jay Jin on 2015. 7. 21..
//
//

#include "myBall.h"

myBall::myBall()
{
    
}

myBall::~myBall()
{

}

void myBall::setup()
{
    for(int i=0; i<50; i++){
        xPos[i] = ofRandomWidth();
        yPos[i] = ofRandomHeight();
    }
}

void myBall::draw()
{
    ofFill();
    for (int i = 0; i < 50; i++){
        ofSetColor((int)ofRandom(0,255),(int)ofRandom(0,255),(int)ofRandom(0,255));
        ofRect(xPos[i],yPos[i],ofRandom(10,20),ofRandom(10,20));
    }
    ofSetHexColor(0x000000);

    
}

void myBall::animatedDraw(int x, int y)
{
    ofDrawBitmapString("haha", 50, 50);
    for(int i=0; i<50; i++) {
        ofRect(xPos[i], yPos[i], 10, 20);
    }
}