//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

/**
 Range Oparators
        a...b               // Closed Operat
        a..<b     // half open range
        ..b               // One Side Range
 */

/**
 Optionals
   var player: String ?= nil
   player = "kavinda"
   print(player) //optional(kavinda)
   print(player!) // kavinda
   player = nil
   print(player) //exception
 **/

class ViewController: UIViewController {
    
    let softTime = 2
    let mediumTime = 5
    let hardTime = 10
    
    @IBAction func eggBtnPress(_ sender: UIButton) {
        var hardness = sender.currentTitle
        
        if hardness == "Soft" {
            print(softTime)
        }else if hardness == "Medium"{
            print(mediumTime)
        }else{
            print(hardTime)
        }
    }
    

}
