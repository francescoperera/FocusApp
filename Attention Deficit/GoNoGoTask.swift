//
//  GoNoGoTask.swift
//  Attention Deficit
//
//  Created by Francesco Perera on 11/28/15.
//  Copyright © 2015 Francesco Perera. All rights reserved.
//

import Foundation
import UIKit

class GoNoGoViewController: UIViewController {
    
    var coloredSquare : UIImageView!
    
    func startTask() {
        self.coloredSquare = UIImageView(frame: CGRectMake(200, 300, 100, 100))
        self.coloredSquare.backgroundColor = UIColor.redColor()
        self.coloredSquare.layer.cornerRadius = 8.0
        self.coloredSquare.clipsToBounds = true
        
    }
    
}

