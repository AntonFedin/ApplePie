//
//  ViewController.swift
//  ApplePaiAnton
//
//  Created by student on 29.03.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWorldLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }

    var listOfWords = ["Анастасия", "Анна" , "Мария"]
    let incorrectMovesAllowed = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newRound()
    }
    var currentGame: Game!
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
        updateUI()
    }
    func updateUI() {
        let name = "Tree \(currentGame.incorrectMovesRemaining)"
        treeImageView.image = UIImage(named: name)
    }
 
}
