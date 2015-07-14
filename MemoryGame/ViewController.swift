//
//  ViewController.swift
//  MemoryGame
//
//  Created by ED on 7/13/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

import UIKit

enum Difficulty {
    case Easy, Medium, Hard
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
}

private extension ViewController {
    func setup() {
        view.backgroundColor = UIColor.greenSea()
        
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y/2.0),
            title: "EASY", color: UIColor.emerald(), action: "onEasyTapped:")
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y),
            title: "MEDIUM", color: UIColor.sunflower(), action: "onMediumTapped:")
        buildButtonCenter(CGPoint(x: view.center.x, y: view.center.y*3.0/2.0),
            title: "HARD", color: UIColor.alizarin(), action: "onHardTapped:")
    }
    
    func buildButtonCenter(center: CGPoint, title: String, color: UIColor, action: Selector) {
        let button = UIButton()
        button.setTitle(title, forState: .Normal)
        
        button.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: CGSize(width: 200, height: 50))
        button.center = center
        button.backgroundColor = color
        
        button.addTarget(self, action: action, forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(button)
    }
}

extension ViewController {
    func onEasyTapped(sender: UIButton) {
        newGameDifficulty(.Easy)
    }
    
    func onMediumTapped(sender: UIButton) {
        newGameDifficulty(.Medium)
    }
    
    func onHardTapped(sender: UIButton) {
        newGameDifficulty(.Hard)
    }
    
    func newGameDifficulty(difficulty: Difficulty) {
        let gameViewController = MemoryViewController(difficulty: difficulty)
        presentViewController(gameViewController, animated: true, completion: nil)
    }
}
