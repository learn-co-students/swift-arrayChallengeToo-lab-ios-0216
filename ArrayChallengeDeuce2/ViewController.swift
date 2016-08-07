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

    func addNameToDeliLine(name: String) -> String {
        
        var greeting : String = ""
        
        switch name {
        
        case "Billy Crystal":
            
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Billy! You can sit wherever you like."
       
        case "Meg Ryan":
            
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Meg! You can sit wherever you like."
        
        default:
            
            deliLine.append(name)
            
            for (numberInLine, nameOfPerson) in deliLine.enumerate() {
                
                switch numberInLine {
                case 0:
                    greeting = "Welcome \(nameOfPerson), you're first in line!"
                default:
                    greeting = "Welcome \(nameOfPerson), you're number \(numberInLine+1) in line."

                }
                
            }
        
        }
        
        return greeting
    }
    
    func nowServing() -> String {
        
        var greeting : String = ""
        
        if  deliLine.isEmpty{
            greeting = "There is no-one to be served."
        }
        
        for name in deliLine {
            
            greeting = "Now serving \(name)!"
            deliLine.removeFirst()
        }
        
        
        print("\n\(greeting)\n")

        return greeting
    }
    
    
    func  deliLineDescription() -> String {
        
        var greeting = "The line is:\n"
        
        if deliLine.count == 0 {
            
             greeting =  "The line is currently empty."

        }
        
        for name in deliLine {
        
            var nameInList = ""
            
            nameInList.appendContentsOf("\(name)\n")
            greeting.appendContentsOf(nameInList)
        
        }
        
        return greeting
    }

}


