//
//  UIView+.swift
//  PaperBoy
//
//  Created by Winston Maragh on 9/26/18.
//  Copyright © 2018 Winston Maragh. All rights reserved.
//

import UIKit


// UIVIEW
extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

// MARK: STRING
extension String {
    func decodeToUTF8() -> String{
        let dataStr = self.data(using: String.Encoding.isoLatin1)
        return String(data: dataStr!, encoding: String.Encoding.utf8)!
    }
}


// MARK: UIColor
extension UIColor {
    static let appYellow = UIColor(red: 255/255, green: 255/255, blue: 75/255, alpha: 0.9)

}
