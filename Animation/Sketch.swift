import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var x2 : Int
    
    var x3 : Int
    
    var x4 : Int
    
    var x5 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        canvas.drawShapesWithBorders = false
        
        // Set starting position
        x = 250
        
        x2 = 250
        
        x3 = 250
        
        x4 = 250
        
        x5 = 250
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        x2 -= 1
        
        x3 += 1
        
        x4 -= 1
        
        x5 += 1
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = .purple
        canvas.drawEllipse(at: Point(x: x, y: 450), width: 50, height: 50)
        canvas.fillColor = .orange
        canvas.drawEllipse(at: Point(x: x2, y: 350), width: 50, height: 50)
        canvas.fillColor = .green
        canvas.drawEllipse(at: Point(x: x3, y: 250), width: 50, height: 50)
        canvas.fillColor = .blue
        canvas.drawEllipse(at: Point(x: x4, y: 150), width: 50, height: 50)
        canvas.fillColor = .black
        canvas.drawEllipse(at: Point(x: x5, y: 50), width: 50, height: 50)
        
    }
    
}
