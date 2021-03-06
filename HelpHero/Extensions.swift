//
//  Extensions.swift
//  HelpHero
//
//  Created by Jerry Chen on 3/30/17.
//  Copyright © 2017 Jerry Chen. All rights reserved.
//

import UIKit


// Settings
let windowWidth = UIScreen.main.bounds.width
let windowHeight = UIScreen.main.bounds.height

let heroColor = UIColor.fromRGB(0x487b8e)
let offGrey = UIColor.fromRGB(0xf4f4f4)
let ashGrey = UIColor.fromRGB(0x555555)
let borderGrey = UIColor.fromRGB(0xdfdedf)

let transparent = UIColor.black.withAlphaComponent(0)
let halfTransparent = UIColor.black.withAlphaComponent(0.5)
let mostlyTransparent = UIColor.black.withAlphaComponent(0.3)

let projectsArray = ["Algorithms and Coding",
                     "OOP",
                     "Digital Leash",
                     "Digital Clock",
                     "TableView",
                     "Navigation Control",
                     "Programmatic UI",
                     "Apple Maps",
                     "Google Maps/Google Places API",
                     "Animation",
                     "Facebook",
                     "Cloud and Camera",
                     "Slow-Mo Video"]

// ====================================================================
//
// EXTENSIONS
//
// ====================================================================
extension UIColor {
    static func fromRGB(_ rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

extension UIView {
    // ------------------------------------------
    // Method - Add Constraints
    // ------------------------------------------
    // ... means "array of"
    func addConstraintsWithFormat(format: String, views: UIView...) {
        var viewsDictionary = [String:UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "view\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
