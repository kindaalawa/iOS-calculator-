//
//  ViewController.swift
//  Calculator
//
//  Created by ehab farhat on 01/03/2024.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var calculating: UILabel!
    @IBOutlet weak var result: UILabel!
    
    var expression = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clear()
    }
    
    func clear() {
        expression = ""
        calculating.text = ""
        result.text = ""
    }

    @IBAction func equals(_ sender: Any) {
        let last = String(expression.suffix(2))
        if last == "/0"{
            displayErrorAlert(message: "Error: Division by zero")
            return
        }
        else{
            let checkPercent = expression.replacingOccurrences(of: "%", with: "*0.1")
            let value = NSExpression(format: checkPercent)
            let resultValue = value.expressionValue(with: nil, context: nil) as! Double
            calculating.text = expression
            result.text = String(resultValue)
            expression = ""
        }
    }
    
    func displayErrorAlert(message: String) {
        let alertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func clearBtn(_ sender: Any) {
        clear()
    }
    
    @IBAction func erase(_ sender: Any) {
        if (!expression.isEmpty) {
            expression.removeLast()
            calculating.text = expression
        }
    }
    
    func addLabel(value: String) {
        expression += value
        calculating.text = expression
    }
    
    @IBAction func percent(_ sender: Any) {
        addLabel(value: "%")
    }
    
    @IBAction func divide(_ sender: Any) {
        addLabel(value: "/")
    }
    
    @IBAction func multiply(_ sender: Any) {
        addLabel(value: "*")
    }
    
    @IBAction func minus(_ sender: Any) {
        addLabel(value: "-")
    }
    
    @IBAction func plus(_ sender: Any) {
        addLabel(value: "+")
    }
    
    @IBAction func decimal(_ sender: Any) {
        addLabel(value: ".")
    }
    
    @IBAction func zeroBtn(_ sender: Any) {
        addLabel(value: "0")
    }
    
    @IBAction func oneBtn(_ sender: Any) {
        addLabel(value: "1")
    }
    
    @IBAction func twoBtn(_ sender: Any) {
        addLabel(value: "2")
    }
    
    @IBAction func threeBtn(_ sender: Any) {
        addLabel(value: "3")
    }
    
    @IBAction func fourBtn(_ sender: Any) {
        addLabel(value: "4")
    }
    
    @IBAction func fiveBtn(_ sender: Any) {
        addLabel(value: "5")
    }
    
    @IBAction func sixBtn(_ sender: Any) {
        addLabel(value: "6")
    }
    
    @IBAction func sevenBtn(_ sender: Any) {
        addLabel(value: "7")
    }
    
    @IBAction func eightBtn(_ sender: Any) {
        addLabel(value: "8")
    }
    
    @IBAction func nineBtn(_ sender: Any) {
        addLabel(value: "9")
    }
}
