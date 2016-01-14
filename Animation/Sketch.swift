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
    
    // This runs once, equivalent to setup() in Processing
    init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 1000, height: 600)
        
        // The frame rate can be adjusted; the default is 60 fps
        canvas.framesPerSecond = 60
        
    }
    
    // Runs repeatedly, equivalent to draw() in Processing
    func draw() {
        
        // Generate random value between 1 and 4
        newRandomValue = arc4random_uniform(4)+1

        
        // Clear the background
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
        canvas.drawRectangle(bottomRightX: 0, bottomRightY: 0, width: canvas.width, height: canvas.height)
        
        // Draw rect1
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 200, bottomRightY: 0, width: rectwidth, height: rect1Height)

        // Draw rect2
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 400, bottomRightY: 0, width: rectwidth, height: rect2Height)
        
        // Draw rect3
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 600, bottomRightY: 0, width: rectwidth, height: rect3Height)

        // Draw rect4
        canvas.drawShapesWithBorders = false
        canvas.fillColor = Color(hue: 207, saturation: 88, brightness: 0, alpha: 100)
        canvas.drawRectangle(bottomRightX: 800, bottomRightY: 0, width: rectwidth, height: rect4Height)

        canvas.drawLine(fromX: 150, fromY: 10, toX: 150, toY: 600, lineWidth: 3)
        
        canvas.drawLine(fromX: 10, fromY: 10, toX: 1000, toY: 10, lineWidth: 3)
        
        print("the value of x is \(newRandomValue)")
        
        if (newRandomValue == 1){
            rect1Height = rect1Height + 1
        }
        if (newRandomValue == 2){
            rect2Height = rect2Height + 1
        }
        if (newRandomValue == 3){
            rect3Height = rect3Height + 1
        }
        if (newRandomValue == 4){
            rect4Height = rect4Height + 1
        }
        
    }
    
}