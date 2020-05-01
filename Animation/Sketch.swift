import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // offset from a strting point

    var offset : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position for all the lines
        offset = 250

    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        offset += 1
        
        // Draw a red ellipse in the middle of the canvas going up and right
        canvas.drawEllipse(at: Point(x: offset, y: 250), width: 50, height: 50)
        
        // Draw a purple ellipse in the middle of the canvas going down and right
        canvas.drawEllipse(at: Point(x: offset, y: 250), width: 50, height: 50)
        
        // Draw a green ellipse in the middle of the canvas going up and left
        canvas.drawEllipse(at: Point(x: offset, y: 250), width: 50, height: 50)
        
        // Draw a yellow ellipse in the middle of the canvas going down and left
        canvas.drawEllipse(at: Point(x: offset, y: 250), width: 50, height: 50)
        
        
    }
    
}
