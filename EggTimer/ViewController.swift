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
        var time = 0
        var timer = Timer()
        
        @IBAction func eggBtnPress(_ sender: UIButton) {
            let hardness = sender.currentTitle!
            time = array[hardness]!
            
            //ths method used to terminate timer
            timer.invalidate()
            
    //        if hardness == "Soft" {
    //            print(softTime)
    //        }else if hardness == "Medium"{
    //            print(mediumTime)
    //        }else{
    //            print(hardTime)
    //        }
            
            timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
        
        //Argument of '#selector' refers to instance method 'updateTime()' that is not exposed to Objective-C
        //Add '@objc' to expose this instance method to Objective-C
        @objc func updateTime(){
            if(time>0){
//                time=time-1
                time-=1
                print("timeCounter \(time)")
            }
        }
        

    }
