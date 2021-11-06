//
//  instructions.swift
//  Bluetooth Digital Keypad
//
//  Created by Ari Wasch on 3/5/20.
//  Copyright © 2020 Ari Wasch. All rights reserved.
//

import Foundation
import UIKit
class Instructions: UIViewController {
//    @IBOutlet weak var textBoi: UITextView!
    @IBOutlet weak var textBoi: UITextView!
    override func viewDidLoad() {
                textBoi.text = "Instructions\n\nThe purpose of this app is to communicate with electronic projects, like Arduinos, through Bluetooth. This app can send data to HM-10 Bluetooth components. It was designed to replace a keypad by making it Bluetooth so Arduino projects can be controlled from a phone instead. Also, this app can send more than keypad characters, it can send strings of text too in the Console. \n \nThere are also joysticks too which send the x and y positions of each stick. The joystick values range from -1 to 1 and send send all the joystick data in one string many times a second. The joysticks send out a stirng that looks like this: \"x1,y1,x2,y2\". x is the horizontal axis of the joystick and y is the vertical axis. 1 is the first joystick and 2 is the second joystick.\n\nExample Arduino Bluetooth joystick code: \nhttps://github.com/ariwasch/Papergryph/blob/master/tank.ino \n\nIf any problems are encountered with your project while using this app, refresh the app."
        super.viewDidLoad()
    }
}

