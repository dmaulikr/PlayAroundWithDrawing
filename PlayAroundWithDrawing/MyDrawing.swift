//
//  MyDrawing.swift
//  PlayAroundWithDrawing
//
//  Created by Jonathan L. on 7/29/17.
//  Copyright © 2017 Jonathan L. All rights reserved.
//

import UIKit

@IBDesignable
class MyDrawing: UIView {
    
    override func draw(_ rect: CGRect) {
        let myRect = CGRect(x: 30, y: 30, width: bounds.size.width / 2, height: bounds.size.height / 2)
        let path = UIBezierPath(rect: myRect)
        path.lineWidth = 3.0
        UIColor.black.set()
        path.stroke()
        
        path.move(to: CGPoint(x: myRect.midX, y: 30))
        path.addLine(to: CGPoint(x: myRect.maxX, y: myRect.midY))
        path.stroke()
        path.move(to: CGPoint(x: myRect.maxX, y: myRect.midY))
        path.addLine(to: CGPoint(x: 30, y: myRect.midY))
        path.stroke()
        path.move(to: CGPoint(x: 30, y: myRect.midY))
        path.addLine(to: CGPoint(x: myRect.midX, y: 30))
        path.close()
        //path.fill()
        path.stroke()
        //path.move(to: CGPoint(x: myRect.midX, y: 30))
        path.addArc(withCenter: CGPoint(x: myRect.midX, y: myRect.midY), radius: bounds.size.width / 4, startAngle: CGFloat.pi / 2, endAngle: CGFloat.pi, clockwise: true)
        path.stroke()
        
        
    }

}
