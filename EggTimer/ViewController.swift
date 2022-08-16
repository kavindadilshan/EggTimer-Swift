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
    
//    let softTime = 2
//    let mediumTime = 5
//    let hardTime = 10
    let array = ["Soft":2,"Medium":5,"Hard":10]
    
    @IBAction func eggBtnPress(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(array[hardness]!)
//        if hardness == "Soft" {
//            print(softTime)
//        }else if hardness == "Medium"{
//            print(mediumTime)
//        }else{
//            print(hardTime)
//        }
    }
    

}
