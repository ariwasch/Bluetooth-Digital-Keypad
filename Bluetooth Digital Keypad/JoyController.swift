//
//  ViewController.swift
//  JoystickTank
//
//  Created by Alex Nagy on 05/07/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import SpriteKit

class JoyController: UIViewController {
    let velocityMultiplier: CGFloat = 0.12

//    @IBOutlet weak var buttonb: UIButton!
    @IBOutlet weak var buttona: UIButton!
    lazy var skView: SKView = {
    let view = SKView()
    //        view.translatesAutoresizingMaskIntoConstraints = false
    view.isMultipleTouchEnabled = true
    return view
  }()
  override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    return UIInterfaceOrientationMask.landscape
    
    }
    override var shouldAutorotate: Bool {
            return true
    }


  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    setupViews()
  }
    override func viewDidAppear(_ animated: Bool) {
//        if(Scene.joy1){
//
//        }else{
//
//        }
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("KDFJDIFIOAFHIOJFIODSNIOFSA")
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if serial != nil {
            serial.sendMessageToDevice("0,0,0,0")
        }

        print("0,0,0,0")
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("0,0,0,0")
        if serial != nil {
            serial.sendMessageToDevice("0,0,0,0")
        }
    }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  fileprivate func setupViews() {
    view.addSubview(skView)
    skView.frame = CGRect(x: 0.0, y: 0.0, width: ScreenSize.width, height: ScreenSize.height)
    
    let scene = Scene(size: CGSize(width: ScreenSize.width, height: ScreenSize.height))
    scene.backgroundColor = UIColor.black
    scene.scaleMode = .aspectFill
    skView.addSubview(buttona)
    skView.presentScene(scene)
    buttona.transform = CGAffineTransform(rotationAngle: 1.572963);
//    buttonb.transform = CGAffineTransform(rotationAngle: -1.572963);

    view.transform = CGAffineTransform(rotationAngle: -1.572963);

//    skView.ignoresSiblingOrder = true
//        skView.showsFPS = true
//        skView.showsNodeCount = true
//        skView.showsPhysics = true
  }
  
}

