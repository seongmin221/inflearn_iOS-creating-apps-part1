//
//  ViewController.swift
//  ApplePie
//
//  Created by 이성민 on 2022/05/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    
    @IBOutlet weak var correctWordLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorius", "incandescent", "bug", "program"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0
    var totlaLosses = 0
    
    var currentGame: Game
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
        
    }
    
    func newRound(){
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed)
    }
    
    func updateUI() {
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totlaLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
    }
    
}

