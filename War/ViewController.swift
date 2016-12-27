//
//  ViewController.swift
//  War
//
//  Created by Xuehua Chen on 10/30/16.
//  Copyright © 2016 Xuehua Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView:UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!

    var leftScore = 0
    var rightScore = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9",
        "card9","card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender:  UIButton) {
        print("deal tapped")
        let leftNumber = Int(arc4random_uniform(14))
        
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        let rightNumber = Int(arc4random_uniform(14))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
}

