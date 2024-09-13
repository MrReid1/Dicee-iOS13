//
//  ViewController.swift
//  Dicee-iOS13
//
//  Anastasios Rigatos
//
//

import UIKit

@available(iOS 14.0, *)
class ViewController: UIViewController, UIColorPickerViewControllerDelegate {
    @IBOutlet weak var FirstDice: UIImageView!
    @IBOutlet weak var SecondDice: UIImageView!
    @IBOutlet weak var selectedColorView: UIView! // To show the selected color
    
    @IBOutlet weak var LabelFirstDice: UILabel!
    @IBOutlet weak var LabelSecondDice: UILabel!
    
    @IBOutlet weak var ColorWheelDiceOne: UIColorWell!
    @IBOutlet weak var ColorWheelDiceTwo: UIColorWell!
    
    
    
    
    
    
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
  
        // Create a button to open the color picker
        // Create a button to open the color picker
                let colorPickerButton = UIButton(type: .system)
                colorPickerButton.setTitle("Pick a Color", for: .normal)
                colorPickerButton.frame = CGRect(x: 100, y: 100, width: 150, height: 50)
                colorPickerButton.addTarget(self, action: #selector(showColorPicker), for: .touchUpInside)
                view.addSubview(colorPickerButton)
        
        
        
        
    }
    @objc func showColorPicker() {
           let colorPicker = UIColorPickerViewController()
           colorPicker.delegate = self  // Set the delegate
           
           present(colorPicker, animated: true, completion: nil)
       }

       // Delegate method to detect when a color is selected
       func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
           let selectedColor = viewController.selectedColor
           
           // Change background color to the selected color
           self.view.backgroundColor = selectedColor
       }
   
    
    @IBAction func ChangeDiceButton(_ sender: UIButton) {
        imageViewList = [oneDice,twoDice,threeDice,fourDice,fiveDice,sixDice]
        let firstRandomNumber = Int.random(in: 0...imageViewList.count-1)
        let secondRandomNumber = Int.random(in: 0...imageViewList.count-1)
        
        FirstDice.image = imageViewList[firstRandomNumber].image
        SecondDice.image = imageViewList[secondRandomNumber].image
        
        LabelFirstDice.text = String(firstRandomNumber+1)
        LabelSecondDice.text = String(secondRandomNumber+1)
        
        LabelFirstDice.textColor = ColorWheelDiceOne.selectedColor
        debugPrint(ColorWheelDiceOne.selectedColor!)
    }
    
    @IBAction func ColorWheel(_ sender:ColorWheelViewController){
        debugPrint("Color wheel pressed.")
    }
}

