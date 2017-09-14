//
//  ViewController.swift
//  BNRWorldTrotter
//
//  Created by Lee Choon Siong on 2017/05/14.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Properties
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "HH" // We want the value of hour only
        
        return df
    }()
    
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }

    // MARK: - UIViewController
    
    override func viewDidLoad() {
        print("DEBUG: TemperatureViewController viewDidLoad")
        
        super.viewDidLoad()
        
        let currentLocale = Locale.current
        let isMetric = currentLocale.usesMetricSystem
        let currencySymbol = currentLocale.currencySymbol
        
        print("DEBUG: isMetric = \(isMetric)")
        print("DEBUG: currencySymbol = \(currencySymbol)")
        
        updateCelsiusLabel()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("DEBUG: TemperatureViewController viewWillAppear")
        super.viewWillAppear(true)
        
        setTemperatureViewControllerBackgroundColor(isDay())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITextFieldDelegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentLocale = Locale.current
        let decimalSeparator = currentLocale.decimalSeparator ?? "."
        
        if let currentText = textField.text {
            print("Current text: \(currentText)")
        } else {
            print("Current text: \"\"")
        }

        print("Replacement text: \(string)")
        
        let invalidInputs = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
        
        // Use locale-independent way
        
        //let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let existingTextHasDecimalSeparator = textField.text?.range(of: decimalSeparator)
        //let replacementTextHasDecimalSeparator = string.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: decimalSeparator)
        
        let replacementTextHasInvalidInput = string.rangeOfCharacter(from: invalidInputs)
        
        // Make sure user provide valid input, special characters such as !@# etc are still
        // not cover in this check yet
        
        if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
            return false
        } else if replacementTextHasInvalidInput != nil {
            return false
        } else {
            return true
        }
    }
    
    // MARK: - Functions
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            self.celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            self.celsiusLabel.text = "???"
        }
    }
    
    func isDay() -> Bool {
        let now = Date()
        let nowString = dateFormatter.string(from: now)
        let nowInt = Int(nowString)
        
        if let value = nowInt, value >= 4 && value <= 19 {
                return true
        }
        
        return false
    }
    
    func setTemperatureViewControllerBackgroundColor(_ isDay: Bool) {
        if isDay {
            self.view.backgroundColor = UIColor.init(red: CGFloat(0.949), green: CGFloat(0.949), blue: CGFloat(0.949), alpha: CGFloat(1.0))
        } else {
            self.view.backgroundColor = UIColor.init(red: CGFloat(0.861), green: CGFloat(0.805), blue: CGFloat(0.576), alpha: CGFloat(1.0))
        }
    }
    
    // MARK: - Actions
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        /*if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }*/
        
        // Use locale-independent way
        if let text = textField.text, let number = numberFormatter.number(from: text) {
            fahrenheitValue = Measurement(value: number.doubleValue, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }
    
    // When user tap the background will dismiss the on-screen keyboard
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        self.textField.resignFirstResponder()
    }
}
