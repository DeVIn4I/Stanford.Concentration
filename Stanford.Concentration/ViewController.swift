//
//  ViewController.swift
//  Stanford.Concentration
//
//  Created by Pavel Razumov on 27.07.2022.
//

import UIKit

class ViewController: UIViewController {

    var touches = 0 {
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    func flipButton(emoji: String, button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4558810592, green: 0.8725870848, blue: 0.7247846723, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        }
    }
    
    
    
    @IBOutlet var buttonCollection: [UIButton]!
    @IBOutlet weak var touchLabel: UILabel!
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        flipButton(emoji: "🐊", button: sender)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCollection.forEach{ $0.layer.cornerRadius = $0.frame.size.height / 12 }
        
    }

}
