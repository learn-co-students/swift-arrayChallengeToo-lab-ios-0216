//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func addNameToDeliLine(name:String)->String{
        
        if name == "Billy Crystal"{
            
            deliLine.insert(name, atIndex: 0)
            
        }else if name == "Meg Ryan"{
            
            deliLine.insert(name, atIndex: 0)
            
        }else{
            
            deliLine.append(name)
        }
        
        var greeting = ""
        
        
        switch name {
            
        case "Billy Crystal":
        
            greeting = "Welcome Billy! You can sit wherever you like."
            
        case "Meg Ryan":
            
            greeting = "Welcome Meg! You can sit wherever you like."
            
        case deliLine.first!:
            
            greeting = "Welcome \(name), you're first in line!"

        default:
            greeting = "Welcome \(name), you're number \(deliLine.indexOf(name)!+1) in line."
        }

        return greeting
    }
    
    func nowServing()->String{
        
        var servingPhrase = ""
        
        if deliLine.isEmpty {
            
            servingPhrase = "There is no-one to be served."
            
        }else{
            
            servingPhrase = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }

        return servingPhrase
    }
    
    func deliLineDescription()-> String{
        
        var phrase = ""
        
        if deliLine.isEmpty{
            
            phrase = "The line is currently empty."
        } else{
            
            phrase = "The line is:\n"

            for (index, name) in deliLine.enumerate(){
                
                if name == deliLine.last{
                    
                    phrase.appendContentsOf("\(index+1). \(name)")

                    
                }else {
                    
                    phrase.appendContentsOf("\(index+1). \(name)\n")
                }
            }
        }
        
        return phrase
    }

}

/*

*/

