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
            let array = ["Soft":2,"Medium":5,"Hard":20]
            var secondsPass = 0
            var totalTime = 0
            var timer = Timer()
            
            @IBOutlet weak var titleLabel: UILabel!
            @IBAction func eggBtnPress(_ sender: UIButton) {
                
                // you can use progressbar.progres = 1.0
//                progressbar.setProgress(0.0, animated: true)
                progressbar.progress = 0
                secondsPass = 0
                let hardness = sender.currentTitle!
                titleLabel.text = hardness
                totalTime = array[hardness]!
                
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
            
            @IBOutlet weak var progressbar: UIProgressView!
            
            //Argument of '#selector' refers to instance method 'updateTime()' that is not exposed to Objective-C
            //Add '@objc' to expose this instance method to Objective-C
            @objc func updateTime(){
                if(secondsPass<totalTime){
                    
                    //time=time+1
                    secondsPass+=1
                    
                    let percentProgress = Float(secondsPass) / Float(totalTime)
                    progressbar.progress=percentProgress
//                    print(percentProgress)
//                    progressbar.setProgress(percentProgress, animated: true)
                    
    //                print("timeCounter \(time)")
                    
                }else{
                    timer.invalidate();
                    titleLabel.text = "Done!";
//                    progressbar.setProgress(1.0, animated: true)
                    progressbar.progress=1.0
                }
            }
            

        }
