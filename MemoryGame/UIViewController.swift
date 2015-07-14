//
//  UIViewController.swift
//  MemoryGame
//
//  Created by ED on 7/14/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

import UIKit

extension UIViewController {
    func execAfter(delay: Double, block: () -> Void) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), block)
    }
}
