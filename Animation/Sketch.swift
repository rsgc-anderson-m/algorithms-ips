//
//  Sketch.swift
//  Animation
//
//  Created by Russell Gordon on 2015-12-05.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

class Sketch {

    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Declare any properties you need for your sketch below this comment, but before init()
    var x = 0
    var s = 1
    var newRandomValue = arc4random_uniform(5)
    var rect1Height = 0
    var rect2Height = 0
    var rect3Height = 0
    var rect4Height = 0
    var rectwidth = 50
    var i = 0
    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1000, height: 600)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw my first rectangle
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 200, bottomRightY: 10, width: rectwidth, height: rect1Height)

        // Draw my second rectangle
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 400, bottomRightY: 10, width: rectwidth, height: rect2Height)
        
        // Draw my third rectangle
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 600, bottomRightY: 10, width: rectwidth, height: rect3Height)

        // Draw my fourth rectangle
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 800, bottomRightY: 10, width: rectwidth, height: rect4Height)
        
        // Draw my x-axis
        canvas.drawLine(fromX: 149, fromY: 10, toX: 970, toY: 10, lineWidth: 3)
        
        // Draw my y-axis
        canvas.drawLine(fromX: 150, fromY: 10, toX: 150, toY: 570, lineWidth: 3)
    
        // Draw my border for my total amounts
        canvas.drawLine(fromX: 10, fromY: 414, toX: 10, toY: 526, lineWidth: 3)
        canvas.drawLine(fromX: 100, fromY: 414, toX: 100, toY: 526, lineWidth: 3)
        canvas.drawLine(fromX: 10, fromY: 525, toX: 100, toY: 525, lineWidth: 3)
        canvas.drawLine(fromX: 10, fromY: 415, toX: 100, toY: 415, lineWidth: 3)
        
        // Print the random values between 1 and 4
        print("the value of x is \(newRandomValue)")
        
        // Chose a random value between 1 and 4, stop simulation at 1600 trials
        if(i < 1600){
            newRandomValue = arc4random_uniform(4)+1
            
            // when a value is chosen add 1 to the height of the corisponding rectangle
            if (newRandomValue == 1){
                rect1Height = rect1Height + 1
                i = i+1
            }
            if (newRandomValue == 2){
                rect2Height = rect2Height + 1
                i = i+1
            }
            if (newRandomValue == 3){
                rect3Height = rect3Height + 1
                i = i+1
            }
            if (newRandomValue == 4){
                rect4Height = rect4Height + 1
                i = i+1
            }
            
        }
        
        // Record the number of times 1 was chosen
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "1 =", size: 15, x: 35, y: 500)
        canvas.drawText(message: String(rect1Height), size: 15, x: 62, y: 500)
        
        // Record the number of times 2 was chosen
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "2 =", size: 15, x: 35, y: 475)
        canvas.drawText(message: String(rect2Height), size: 15, x: 62, y: 475)
        
        // Record the number of times 3 was chosen
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "3 =", size: 15, x: 35, y: 450)
        canvas.drawText(message: String(rect3Height), size: 15, x: 62, y: 450)
        
        // Record the number of times 4 was chosen
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "4 =", size: 15, x: 35, y: 425)
        canvas.drawText(message: String(rect4Height), size: 15, x: 62, y: 425)
        
        // Draw x
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "x", size: 15, x: 975, y: 3)
        
        // Draw y
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "y", size: 15, x: 147, y: 575)
        
        // Draw my scale
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "50", size: 15, x: 125, y: 60)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "100", size: 15, x: 120, y: 110)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "150", size: 15, x: 120, y: 160)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "200", size: 15, x: 120, y: 210)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "250", size: 15, x: 120, y: 260)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "300", size: 15, x: 120, y: 310)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "350", size: 15, x: 120, y: 360)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "400", size: 15, x: 120, y: 410)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "450", size: 15, x: 120, y: 460)
        
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "500", size: 15, x: 120, y: 510)
        
        // Draw number 1 for rectangle 1
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "1", size: 15, x: 185, y: 15)
        
        // Draw number 2 for rectangle 2
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "2", size: 15, x: 385, y: 15)
        
        // Draw number 3 for rectangle 3
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "3", size: 15, x: 585, y: 15)
        
        // Draw number 4 for rectangle 4
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "4", size: 15, x: 785, y: 15)
        
        // Draw my title
        canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
        canvas.drawText(message: "Random Number Graph", size: 20, x: 460, y: 550)
    }
    
}