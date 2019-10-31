//
//  ViewController.swift
//  Homework6
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedController: UISegmentedControl!
    @IBOutlet var selectionSwitch: UISwitch!
    @IBOutlet var selectionButton: UIButton!
    @IBOutlet var continueButton: UIButton!
    
    struct GatewayParams {
        var selectorOnTwo: Bool
        var switchOn: Bool
        var buttonSelected: Bool
        lazy var readyToProceed: Bool = selectorOnTwo == true && switchOn == true && buttonSelected == true ? true : false
    }
    
    var gatewayParams = GatewayParams(selectorOnTwo: false, switchOn: false, buttonSelected: false)
    
    @IBAction func segmentedControllerDidChangeValue(_ sender: UISegmentedControl) {
        gatewayParams.selectorOnTwo = segmentedController.selectedSegmentIndex == 1
        continueButton.isEnabled = gatewayParams.selectorOnTwo == true && gatewayParams.switchOn == true && gatewayParams.buttonSelected == true ? true : false

    }
    
    @IBAction func selectionSwitchDidChangeValue(_ sender: UISwitch) {
        gatewayParams.switchOn = selectionSwitch.isOn
        continueButton.isEnabled = gatewayParams.selectorOnTwo == true && gatewayParams.switchOn == true && gatewayParams.buttonSelected == true ? true : false

    }
    
    @IBAction func selectionButtonTapped(_ sender: UIButton) {
        gatewayParams.buttonSelected.toggle()
        continueButton.isEnabled = gatewayParams.selectorOnTwo == true && gatewayParams.switchOn == true && gatewayParams.buttonSelected == true ? true : false
    }
    
}

