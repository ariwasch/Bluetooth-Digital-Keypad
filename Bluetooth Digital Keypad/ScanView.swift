//
//  ScanViewController.swift
//  Bluetooth Digital Keypad
//
//  Created by Ari Wasch on 2/11/20.
//  Copyright © 2020 Ari Wasch. All rights reserved.
//

import UIKit
import CoreBluetooth

class ScanView: UIViewController, UITableViewDataSource, BluetoothSerialDelegate, UITableViewDelegate {
    func serialDidChangeState() {
        print("state changed")

    }
    
    func serialDidDisconnect(_ peripheral: CBPeripheral, error: NSError?) {
        print("failed")
    }
    
    
//    var peripherals:[CBPeripheral] = []
//    var manager:CBCentralManager? = nil
//    static var mainPeripheral:CBPeripheral? = nil

    @IBOutlet weak var tableView: UITableView!
    
    /// The peripherals that have been discovered (no duplicates and sorted by asc RSSI)
    var peripherals: [(peripheral: CBPeripheral, RSSI: Float)] = []
    
    /// The peripheral the user has selected
    var selectedPeripheral: CBPeripheral?
    
    /// Progress hud shown
//    var progressHUD: MBProgressHUD?

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        manager = CBCentralManager(delegate: self, queue: nil); //I NEED THIS FUCKING THING OR IT DOES NOT DISCOVER DEVICES
        
        serial = BluetoothSerial(delegate: self)
        serial.startScan()

        self.tableView.dataSource = self
        self.tableView.allowsSelection = true
        self.tableView.delegate = self //THIS LITTLE FUCKER, FUCK FUCK FUCK
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        scanBLEDevices()
//        refresh()
        print("hi")
//        let selectedRow: IndexPath? = tableView.indexPathForSelectedRow
//        if let selectedRowNotNill = selectedRow {
//            tableView.deselectRow(at: selectedRowNotNill, animated: true)
//        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return 1
        return peripherals.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")!
        let peripheral = peripherals[indexPath.row]
        cell.textLabel?.text = peripherals[(indexPath as NSIndexPath).row].peripheral.name
        cell.textLabel?.textColor = UIColor.systemGreen
        return cell

    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select")
        serial.stopScan()
        selectedPeripheral = peripherals[(indexPath as NSIndexPath).row].peripheral
        serial.connectToPeripheral(selectedPeripheral!)
//        progressHUD = MBProgressHUD.showAdded(to: view, animated: true)
//        progressHUD!.labelText = "Connecting"

//        let peripheral = peripherals[indexPath.row]
//
//        manager?.connect(peripheral, options: nil)
        performSegue(withIdentifier: "segue", sender: self)
    }
//    func scanBLEDevices() {
//        //manager?.scanForPeripherals(withServices: [CBUUID.init(string: parentView!.BLEService)], options: nil)
//
//        //if you pass nil in the first parameter, then scanForPeriperals will look for any devices.
////        manager?.scanForPeripherals(withServices: nil, options: nil)
//
//        //stop scanning after 3 seconds
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
//            self.stopScanForBLEDevices()
//        }
//        print("done scanning")
//        print("length ", peripherals.count)
//    }
    @IBAction func refresh2(_ sender: Any) {
        print("refresh")
//        scanBLEDevices()
        let selectedRow: IndexPath? = tableView.indexPathForSelectedRow
        print("selet ", selectedRow)
        
        peripherals = []
        tableView.reloadData()
//        tryAgainButton.isEnabled = false
        title = "Scanning ..."
        serial.startScan()
//    tableView.selectRow(at: IndexPath?, animated: <#T##Bool#>, scrollPosition:
//        <#T##UITableView.ScrollPosition#>) .selectedItems.map
    }
//    func stopScanForBLEDevices() {
//        manager?.stopScan()
//    }
    func serialDidDiscoverPeripheral(_ peripheral: CBPeripheral, RSSI: NSNumber?) {
        // check whether it is a duplicate
        for exisiting in peripherals {
            if exisiting.peripheral.identifier == peripheral.identifier { return }
        }
        
        // add to the array, next sort & reload
        let theRSSI = RSSI?.floatValue ?? 0.0
        peripherals.append((peripheral: peripheral, RSSI: theRSSI))
        peripherals.sort { $0.RSSI < $1.RSSI }
        tableView.reloadData()
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print(central.state)
    }
    
//    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
//
//        //pass reference to connected peripheral to parent view
//        ScanView.mainPeripheral = peripheral
////        peripheral.delegate = ViewController
//        peripheral.discoverServices(nil)
//
//        //set the manager's delegate view to parent so it can call relevant disconnect methods
////        manager?.delegate = ViewController
//
//        if let navController = self.navigationController {
//            navController.popViewController(animated: true)
//        }
//
//        print("Connected to " +  peripheral.name!)
//    }
    
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        print(error!)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

