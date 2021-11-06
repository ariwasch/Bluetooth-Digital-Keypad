//
//  Console.swift
//  NFC Digital Keypad
//
//  Created by Ari Wasch on 12/24/19.
//  Copyright © 2019 Ari Wasch. All rights reserved.
//

import Foundation
import CoreNFC
import UIKit
class Console: UIViewController {
    var session: NFCNDEFReaderSession?
    @IBOutlet weak var textBox: UITextView!
    @IBOutlet weak var textField: UITextField!
    let defaults = UserDefaults.standard
    static var textRecord: String = ""
    var timer = Timer()
    var tempText: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        var thing: String = ""
//        print(view1.done)
//        let key = defaults.string(forKey: "key")
//        if(key == "true"){
        
        
//        if let record = defaults.string(forKey: "record"){
//            textBox.text = record
//            print(record)
//        }
        textBox.text = Console.textRecord
        
//        if(thing != ""){
//            textBox.text! += thing
//            UserDefaults.standard.set("", forKey: "record")
//
//            view1.recordText = ""
//
//        }
//            UserDefaults.standard.set("false", forKey: "key")
//
//        }
    }
    @IBAction func clear(_ sender: Any) {
        textBox.text = ""
        textField.text = ""
        Console.textRecord = ""
    }
    @IBAction func read(_ sender: Any) {
        
    }

    @IBAction func send(_ sender: Any) {
        if(textField.text != "" && serial != nil){
            serial.sendMessageToDevice(textField.text ?? "error")
//            update(string: textField.text ?? "error", type: "Write")
            let currentDateTime = Date()
            let userCalendar = Calendar.current
            let requestedComponents: Set<Calendar.Component> = [
                .hour,
                .minute,
                .second
            ]
            let time = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
            time.hour   // 22
            time.minute // 42
            time.second // 17
            let text = " \(time.hour ?? 00):\(time.minute ?? 00):\(time.second ?? 00) Write: \(textField.text ?? "error") \n"
//            print(textField.text)
//            if(text != tempText){
//                tempText = text
//                Console.textRecord += text
                print(Console.textRecord)
                textBox.text = Console.textRecord
//              print(textBox.text)
                textField.text = ""
//                }
            }
        }
    public func update(string: String, type: String, date: Date){
//            DispatchQueue.main.async {
                let currentDateTime = Date()

                // get the user's calendar
                let userCalendar = Calendar.current

                // choose which date and time components are needed
                let requestedComponents: Set<Calendar.Component> = [
                    .hour,
                    .minute,
                    .second
                ]

                // get the components
                let time = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
                time.hour   // 22
                time.minute // 42
                time.second // 17

                self.textBox.text += " \(time.hour ?? 00):\(time.minute ?? 00):\(time.second ?? 00) \(type): \(string) \n"
//            }
        }
        
    }


    
