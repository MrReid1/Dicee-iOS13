//
//  ViewController.swift
//  Dicee-iOS13
//
//  Anastasios Rigatos
//  
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstDice: UIImageView!
    @IBOutlet weak var SecondDice: UIImageView!
    
    
     
    var count = 0     //global
    
   
    
    let oneDice = UIImageView(image: #imageLiteral(resourceName: "DiceOne"))
    let twoDice = UIImageView(image: #imageLiteral(resourceName: "DiceTwo"))
    let threeDice = UIImageView(image: #imageLiteral(resourceName: "DiceThree"))
    let fourDice = UIImageView(image: #imageLiteral(resourceName: "DiceFour"))
    let fiveDice = UIImageView(image: #imageLiteral(resourceName: "DiceFive"))
    let sixDice = UIImageView(image: #imageLiteral(resourceName: "DiceSix"))
    
    var imageViewList: [UIImageView] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
        
        
        
        
        
    }
    
    

    
    @IBAction func ChangeDiceButton(_ sender: UIButton) {
        imageViewList = [oneDice,twoDice,threeDice,fourDice,fiveDice,sixDice]
        let randomNumber = Int.random(in: 0...imageViewList.count)
        
        if(count % 2 == 0){
            FirstDice.alpha = 0.5
        }else{
            FirstDice.alpha = 1.0
        }
        count += 1
        debugPrint(count)
    }
}

