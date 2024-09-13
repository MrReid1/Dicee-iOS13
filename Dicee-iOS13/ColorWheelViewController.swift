//
//  ColorWheelViewController.swift
//  Dicee-iOS13
//
//  Created by Anastasios Rigatos on 13/9/2024.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

import UIKit

class ColorWheelViewController: UIViewController, UIColorPickerViewControllerDelegate {
    
    @IBOutlet weak var selectedColorView: UIView! // To show the selected color

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedColorView.layer.borderWidth = 1
        selectedColorView.layer.borderColor = UIColor.black.cgColor
    }
    
    // Action to present the color picker when the user taps a button
    @IBAction func openColorPicker(_ sender: Any) {
        let colorPicker = UIColorPickerViewController()
        colorPicker.delegate = self
        colorPicker.supportsAlpha = true // Allow alpha adjustments if needed
        present(colorPicker, animated: true, completion: nil)
    }
    
    // Delegate method called when the user selects a color
    func colorPickerViewControllerDidSelectColor(_ viewController: UIColorPickerViewController) {
        selectedColorView.backgroundColor = viewController.selectedColor
    }
    
    // Optional: Handle when the color picker is dismissed
    func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
        print("Selected color: \(viewController.selectedColor)")
    }
}
