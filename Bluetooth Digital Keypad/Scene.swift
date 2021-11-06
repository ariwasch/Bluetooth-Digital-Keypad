//
//  Gameplay.swift
//  JoystickTank
//
//  Created by Alex Nagy on 05/07/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import SpriteKit

class Scene: SKScene {
  
    var timer: Timer?

    lazy var analogJoystick: AnalogJoystick = {
//      let js = AnalogJoystick(diameter: 200, colors: nil, images: (substrate: #imageLiteral(resourceName: "jSubstrate"), stick: #imageLiteral(resourceName: "jStick")))
    let js = AnalogJoystick(diameter: 200, colors: (UIColor.separator, UIColor.systemGreen), images: nil)

      js.position = CGPoint(x: ScreenSize.width * 0.25 - js.radius, y: ScreenSize.height * -0.25)
      return js
    }()
    
    lazy var analogJoystick2: AnalogJoystick = {
        let js2 = AnalogJoystick(diameter: 200, colors: (UIColor.separator, UIColor.systemGreen), images: nil)
        js2.position = CGPoint(x: ScreenSize.width * 0.25 - js2.radius, y: ScreenSize.height * 0.25)
      return js2
    }()

  
  override func didMove(to view: SKView) {
    setupJoystick()
  }
  

  func setupJoystick() {
    anchorPoint = CGPoint(x: 0.5, y: 0.5)
    addChild(analogJoystick)
    addChild(analogJoystick2)

    if serial != nil {

        var count = 0
        var count2 = 0
        analogJoystick.trackingHandler = { [unowned self] data in
            if(count % 10 == 0){

                if((data.velocity.x != 0 || data.velocity.y != 0) && !self.analogJoystick2.isTracking()){
//                print(data.velocity.x / 100)
//                    print("0,0,\(round(100*(data.velocity.x)/100) / 100),\(round(100*(-data.velocity.y)/100) / 100)")
                    
                    serial.sendMessageToDevice("0,0,\(round(100*(-data.velocity.y)/100) / 100),\(round(100*(data.velocity.x)/100) / 100)")
                }
            }
            count += 1
        }

        analogJoystick2.trackingHandler = { [unowned self] data in
            if(count2 % 10 == 0){
                if(self.analogJoystick.isTracking()){
                    var x2 = self.analogJoystick.data.velocity.x
                    var y2 = self.analogJoystick.data.velocity.y
//                    print("\(round(100*(data.velocity.x)/100) / 100),\(round(100*(-data.velocity.y)/100) / 100),\((round(100*(x2)/100)) / 100),\(round(100*(-y2)/100) / 100)")
                    serial.sendMessageToDevice("\(round(100*(-data.velocity.y)/100) / 100),\(round(100*(data.velocity.x)/100) / 100),\((round(100*(-y2)/100)) / 100),\(round(100*(x2)/100) / 100)")
                }else if(data.velocity.x != 0 || data.velocity.y != 0 && !self.analogJoystick.isTracking()){
                serial.sendMessageToDevice("\(round(100*(-data.velocity.y)/100) / 100),\(round(100*(data.velocity.x)/100) / 100),0,0")
//                    print("\(round(100*(data.velocity.x)/100) / 100),\(round(100*(-data.velocity.y)/100) / 100),0,0")

                }
            
            }
            count2 += 1

        }
    }

    
  }
}

