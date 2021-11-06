//
//  ViewController.swift
//  NFC Digital Keypad
//
//  Created by Ari Wasch on 12/24/19.
//  Copyright © 2019 Ari Wasch. All rights reserved.
//

import UIKit
import CoreNFC
class ViewController: UIViewController {
    var result: String = ""
    var done: Bool = false
    var write: Bool = false
    public var recordText: String = ""
    public var recordText2: String = ""
    var otherTrue: Bool = false
    let defaults = UserDefaults.standard
    var mess: String = "hello world"
    var timer: Timer?


    var message = NFCNDEFMessage.init(
        records: [
            NFCNDEFPayload.wellKnownTypeURIPayload(
                string: "hello world")!
        ]
    )
    var session: NFCNDEFReaderSession?
    
    func ViewController(){
        
    }
//    func returnWords() -> String{
//        print(ViewController.recordText)
//        return ViewController.recordText
//    }
    @IBAction func joystickButton(_ sender: Any) {
        timer?.invalidate()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.black
    }
    override func viewDidAppear(_ animated: Bool) {
        UserDefaults.standard.set("", forKey: "record")
        recordText = ""
    
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
      return UIInterfaceOrientationMask.portrait
      }
    override var shouldAutorotate: Bool {
            return false
    }


    @IBAction func start1(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("1")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("1")
                    print("1")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func one(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func two(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    @IBAction func start2(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("2")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("2")
                    print("2")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    
    @IBAction func start3(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("3")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("3")
                    print("3")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func three(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func start4(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("4")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("4")
                    print("4")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func four(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func start5(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("5")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("5")
                    print("5")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func five(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func start6(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("6")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("6")
                    print("6")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func six(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func start7(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("7")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("7")
                    print("7")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func seven(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func start8(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("8")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("8")
                    print("8")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func eight(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func start9(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("9")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("9")
                    print("9")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func nine(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func start0(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("0")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("0")
                    print("0")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func zero(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func startA(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("A")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("A")
                    print("A")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func A(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func startB(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("B")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("B")
                    print("B")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func B(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func startC(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("C")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("C")
                    print("C")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func C(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func startD(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("D")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("D")
                    print("D")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func D(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    
    @IBAction func startAsterick(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("*")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("*")
                    print("*")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func asterick(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
    
    @IBAction func startHastag(_ sender: Any) {
        print("start")
        if serial != nil {
            var count: Int = 0
            serial.sendMessageToDevice("#")
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                if(count > 10){
                    serial.sendMessageToDevice("#")
                    print("#")
                }
                count += 1
            }
            timer?.fire()
        }
    }
    @IBAction func hashtag(_ sender: Any) {
        timer?.invalidate()
        print("Stop")
    }
//    func startWrite(m: String){
//        guard NFCReaderSession.readingAvailable else {
//            return
//        }
//        write = true
//        mess = m
//        message = NFCNDEFMessage.init(
//            records: [
//                NFCNDEFPayload.wellKnownTypeURIPayload(
//                    string: m)!
//            ]
//        )
//        session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
//        session?.alertMessage = "Hold your iPhone near an NDEF tag to write the message."
//        session?.begin()
//    }
    
    
    
    
}
extension ViewController: NFCNDEFReaderSessionDelegate {

    // 1
    func readerSessionDidBecomeActive(_ session: NFCNDEFReaderSession) {
        print("Started scanning for tags")
    }

    // 2
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        
        print("Detected tags with \(messages.count) messages")
        
        for messageIndex in 0 ..< messages.count {
            
            let message = messages[messageIndex]
            print("\tMessage \(messageIndex) with length \(message.length)")
            
            for recordIndex in 0 ..< message.records.count {
                
                let record = message.records[recordIndex]
                print("\t\tRecord \(recordIndex)")
                print("\t\t\tidentifier: \(String(data: record.identifier, encoding: .utf8))")
                print("\t\t\ttype: \(String(data: record.type, encoding: .utf8))")
                print("\t\t\tpayload: \(String(data: record.payload, encoding: .utf8))")
            }
        }
    }
    
    // 3
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        print("Session did invalidate with error: \(error)")
    }
    //write
    func readerSession(_ session: NFCNDEFReaderSession, didDetect tags: [NFCNDEFTag]) {
        if(write){
        if tags.count > 1 {
            // Restart polling in 500 milliseconds.
            let retryInterval = DispatchTimeInterval.milliseconds(500)
            session.alertMessage = "More than 1 tag is detected. Please remove all tags and try again."
            DispatchQueue.global().asyncAfter(deadline: .now() + retryInterval, execute: {
                session.restartPolling()
            })
            return
        }
        // Connect to the found tag and write an NDEF message to it.
        let tag = tags.first!
        session.connect(to: tag, completionHandler: { (error: Error?) in
            if nil != error {
                session.alertMessage = "Unable to connect to tag."
                self.done = true
                session.invalidate()
                return
            }
            
            tag.queryNDEFStatus(completionHandler: { (ndefStatus: NFCNDEFStatus, capacity: Int, error: Error?) in
                guard error == nil else {
                    session.alertMessage = "Unable to query the NDEF status of tag."
                    self.result = "Unable to query the NDEF status of tag."
                    self.done = true
                    session.invalidate()
                    return
                }

                switch ndefStatus {
                case .notSupported:
                    session.alertMessage = "Tag is not NDEF compliant."
                    self.result = "Tag is not NDEF compliant."
                    var recordText = "Tag is not NDEF compliant."
                    self.done = true
                    session.invalidate()
                case .readOnly:
                    session.alertMessage = "Tag is read only."
                    self.result = "Tag is read only."
                    self.recordText = "Tag is read only."
                    self.done = true
                    session.invalidate()
                case .readWrite:
                    
                    tag.writeNDEF(self.message, completionHandler: { (error: Error?) in
                        if nil != error {
                            session.alertMessage = "Write NDEF message fail: \(error!)"
                            self.recordText = "Write NDEF message fail"
                        } else {

                            session.alertMessage = "Write NDEF message successful."
                        DispatchQueue.main.async {
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
                            self.recordText += " \(time.hour ?? 00):\(time.minute ?? 00):\(time.second ?? 00) Write: \(self.mess) \n"
                            UserDefaults.standard.set(self.recordText, forKey: "record")

                            }
//                            console1.update(string: message, type: <#T##String#>) = "success"
                        }
                        print(self.recordText)

                        self.done = true
                        UserDefaults.standard.set("true", forKey: "key")
                        session.invalidate()
                    })
                    
                @unknown default:
                    session.alertMessage = "Unknown NDEF tag status."
                    self.result = "Unknown NDEF tag status."
                    self.recordText = "Unknown NDEF tag status."
                    self.done = true
                    session.invalidate()
                }
            })
        })
        }
        }
    }


////
////  ViewController.swift
////  NFC Digital Keypad
////
////  Created by Ari Wasch on 12/24/19.
////  Copyright © 2019 Ari Wasch. All rights reserved.
////
//
//import UIKit
//import CoreNFC
//class ViewController: UIViewController {
//    var result: String = ""
//    var done: Bool = false
//    var write: Bool = false
//    public var recordText: String = ""
//    public var recordText2: String = ""
//    var otherTrue: Bool = false
//    let defaults = UserDefaults.standard
//    var mess: String = "hello world"
//    var timer: Timer?
//    var message = NFCNDEFMessage.init(
//        records: [
//            NFCNDEFPayload.wellKnownTypeURIPayload(
//                string: "hello world")!
//        ]
//    )
//    var session: NFCNDEFReaderSession?
//
//    func ViewController(){
//
//    }
////    func returnWords() -> String{
////        print(ViewController.recordText)
////        return ViewController.recordText
////    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        self.view.backgroundColor = UIColor.black
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        UserDefaults.standard.set("", forKey: "record")
//        recordText = ""
//
//    }
//
//    @IBAction func one(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("1")
//        }
//    }
//    @IBAction func two(_ sender: Any) {
//        timer?.invalidate()
//        print("Stop")
//    }
//
//    @IBAction func start(_ sender: Any) {
//        print("start")
//        if serial != nil {
//            var count: Int = 0
//            serial.sendMessageToDevice("2")
//            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
//                if(count > 10){
//                    serial.sendMessageToDevice("2")
//                    print("2")
//                }
//                count += 1
//            }
//            timer?.fire()
//        }
//    }
//
//    @IBAction func three(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("3")
//        }
//    }
//    @IBAction func four(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("4")
//        }
//    }
//    @IBAction func five(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("5")
//        }
//    }
//    @IBAction func six(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("6")
//        }
//
//    }
//    @IBAction func seven(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("7")
//        }
//    }
//    @IBAction func eight(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("8")
//        }
//    }
//    @IBAction func nine(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("9")
//        }
//    }
//    @IBAction func zero(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("0")
//        }
//    }
//    @IBAction func A(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("A")
//        }
//
//    }
//    @IBAction func B(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("B")
//        }
//
//    }
//    @IBAction func C(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("C")
//        }
//
//    }
//    @IBAction func D(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("D")
//        }
//
//    }
//    @IBAction func asterick(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("*")
//        }
//
//    }
//    @IBAction func hashtag(_ sender: Any) {
//        if serial != nil {
//            serial.sendMessageToDevice("#")
//        }
//
//    }
////    func startWrite(m: String){
////        guard NFCReaderSession.readingAvailable else {
////            return
////        }
////        write = true
////        mess = m
////        message = NFCNDEFMessage.init(
////            records: [
////                NFCNDEFPayload.wellKnownTypeURIPayload(
////                    string: m)!
////            ]
////        )
////        session = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
////        session?.alertMessage = "Hold your iPhone near an NDEF tag to write the message."
////        session?.begin()
////    }
//
//
//
//
//}
//extension ViewController: NFCNDEFReaderSessionDelegate {
//
//    // 1
//    func readerSessionDidBecomeActive(_ session: NFCNDEFReaderSession) {
//        print("Started scanning for tags")
//    }
//
//    // 2
//    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
//
//        print("Detected tags with \(messages.count) messages")
//
//        for messageIndex in 0 ..< messages.count {
//
//            let message = messages[messageIndex]
//            print("\tMessage \(messageIndex) with length \(message.length)")
//
//            for recordIndex in 0 ..< message.records.count {
//
//                let record = message.records[recordIndex]
//                print("\t\tRecord \(recordIndex)")
//                print("\t\t\tidentifier: \(String(data: record.identifier, encoding: .utf8))")
//                print("\t\t\ttype: \(String(data: record.type, encoding: .utf8))")
//                print("\t\t\tpayload: \(String(data: record.payload, encoding: .utf8))")
//            }
//        }
//    }
//
//    // 3
//    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
//        print("Session did invalidate with error: \(error)")
//    }
//    //write
//    func readerSession(_ session: NFCNDEFReaderSession, didDetect tags: [NFCNDEFTag]) {
//        if(write){
//        if tags.count > 1 {
//            // Restart polling in 500 milliseconds.
//            let retryInterval = DispatchTimeInterval.milliseconds(500)
//            session.alertMessage = "More than 1 tag is detected. Please remove all tags and try again."
//            DispatchQueue.global().asyncAfter(deadline: .now() + retryInterval, execute: {
//                session.restartPolling()
//            })
//            return
//        }
//        // Connect to the found tag and write an NDEF message to it.
//        let tag = tags.first!
//        session.connect(to: tag, completionHandler: { (error: Error?) in
//            if nil != error {
//                session.alertMessage = "Unable to connect to tag."
//                self.done = true
//                session.invalidate()
//                return
//            }
//
//            tag.queryNDEFStatus(completionHandler: { (ndefStatus: NFCNDEFStatus, capacity: Int, error: Error?) in
//                guard error == nil else {
//                    session.alertMessage = "Unable to query the NDEF status of tag."
//                    self.result = "Unable to query the NDEF status of tag."
//                    self.done = true
//                    session.invalidate()
//                    return
//                }
//
//                switch ndefStatus {
//                case .notSupported:
//                    session.alertMessage = "Tag is not NDEF compliant."
//                    self.result = "Tag is not NDEF compliant."
//                    var recordText = "Tag is not NDEF compliant."
//                    self.done = true
//                    session.invalidate()
//                case .readOnly:
//                    session.alertMessage = "Tag is read only."
//                    self.result = "Tag is read only."
//                    self.recordText = "Tag is read only."
//                    self.done = true
//                    session.invalidate()
//                case .readWrite:
//
//                    tag.writeNDEF(self.message, completionHandler: { (error: Error?) in
//                        if nil != error {
//                            session.alertMessage = "Write NDEF message fail: \(error!)"
//                            self.recordText = "Write NDEF message fail"
//                        } else {
//
//                            session.alertMessage = "Write NDEF message successful."
//                        DispatchQueue.main.async {
//                            let currentDateTime = Date()
//                            let userCalendar = Calendar.current
//                            let requestedComponents: Set<Calendar.Component> = [
//                                .hour,
//                                .minute,
//                                .second
//                            ]
//                            let time = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
//                            time.hour   // 22
//                            time.minute // 42
//                            time.second // 17
//                            self.recordText += " \(time.hour ?? 00):\(time.minute ?? 00):\(time.second ?? 00) Write: \(self.mess) \n"
//                            UserDefaults.standard.set(self.recordText, forKey: "record")
//
//                            }
////                            console1.update(string: message, type: <#T##String#>) = "success"
//                        }
//                        print(self.recordText)
//
//                        self.done = true
//                        UserDefaults.standard.set("true", forKey: "key")
//                        session.invalidate()
//                    })
//
//                @unknown default:
//                    session.alertMessage = "Unknown NDEF tag status."
//                    self.result = "Unknown NDEF tag status."
//                    self.recordText = "Unknown NDEF tag status."
//                    self.done = true
//                    session.invalidate()
//                }
//            })
//        })
//        }
//        }
//    }
//
//
//
//
//
//
//////
//////  ViewController.swift
//////  Bluetooth Digital Keypad
//////
//////  Created by Ari Wasch on 2/11/20.
//////  Copyright © 2020 Ari Wasch. All rights reserved.
//////
////
////import UIKit
////
////class ViewController: UIViewController {
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // Do any additional setup after loading the view.
////    }
////    @IBAction func sendData(_ sender: Any) {
////        serial.sendMessageToDevice("uh oh stinky")
////    }
////
////
////}
////
