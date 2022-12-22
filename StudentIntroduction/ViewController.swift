//
//  ViewController.swift
//  StudentIntroduction
//
//  Created by Christopher Crowley on 12/19/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var introduceMyselfButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.delegate = self
        firstNameTextField.layer.shadowRadius = 15.0
        firstNameTextField.layer.shadowOpacity = 0.2
        lastNameTextField.delegate = self
        lastNameTextField.layer.shadowRadius = 15.0
        lastNameTextField.layer.shadowOpacity = 0.2
        schoolNameTextField.delegate = self
        schoolNameTextField.layer.shadowRadius = 15.0
        schoolNameTextField.layer.shadowOpacity = 0.2
        
        yearSegmentControl.layer.shadowRadius = 15.0
        yearSegmentControl.layer.shadowOpacity = 0.2
        
        morePetsStepper.layer.shadowRadius = 15.0
        morePetsStepper.layer.shadowOpacity = 0.2
        
        introduceMyselfButton.layer.cornerRadius = 10.0
        introduceMyselfButton.layer.shadowRadius = 15.0
        introduceMyselfButton.layer.shadowOpacity = 0.2
        
       
    }

    @IBAction func morePetsStepperIsPressed(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceMyselfButtonIsPressed(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        
        let introduction = "Hello, CodePath! My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameTextField.endEditing(true)
        lastNameTextField.endEditing(true)
        schoolNameTextField.endEditing(true)
        return true
    }
}



