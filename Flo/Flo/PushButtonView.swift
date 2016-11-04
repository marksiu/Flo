//
//  PushButtonView.swift
//  Flo
//
//  Created by Mark Siu on 16/10/2016.
//  Copyright © 2016 Mark Siu. All rights reserved.
//

import UIKit
@IBDesignable

class PushButtonView: UIButton {
    
    
    
    @IBInspectable var fillColor: UIColor = defaultLayout().colorWithColorIdentifier(colorIdentifier: ColorIdentifier.text)

    @IBInspectable var colorWithColorIdentifier: ColorIdentifier = ColorIdentifier.lightGrey
    
    @IBInspectable var fontWithFontIdentifier: FontIdentifier = FontIdentifier.body1
    
    @IBInspectable var isAddButton: Bool = true
    
    override func draw(_ rect: CGRect) {
        var path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        //set up the width and height variables
        //for the horizontal stroke
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //create the path
        var plusPath = UIBezierPath()
        
        //set the path's line width to the height of the stroke
        plusPath.lineWidth = plusHeight
        
        //move the initial point of the path
        //to the start of the horizontal stroke
        plusPath.move(to: CGPoint(
            x:bounds.width/2 - plusWidth/2 + 0.5,
            y:bounds.height/2 + 0.5))
        
        //add a point to the path at the end of the stroke
        plusPath.addLine(to: CGPoint(
            x:bounds.width/2 + plusWidth/2 + 0.5,
            y:bounds.height/2 + 0.5))
        
        if (isAddButton) {
            plusPath.move(to: CGPoint(x: bounds.width/2 + 0.5, y:bounds.height/2 - plusWidth/2 + 0.5))
            
            plusPath.addLine(to: CGPoint(x: bounds.width/2 + 0.5, y:bounds.height/2 + plusWidth/2 + 0.5))
        }
        
        //set the stroke color
        UIColor.white.setStroke()
        
        //draw the stroke
        plusPath.stroke()
    }
}
