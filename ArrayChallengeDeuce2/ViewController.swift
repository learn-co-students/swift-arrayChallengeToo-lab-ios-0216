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
    var deliLine: [String] = ["adrian"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        addNameToDeliLine(name: "Adrian")
        nowServing()
        deliLineDescription()
    }

   
    
    
    // Create your methods here
    
    func addNameToDeliLine(name: String)-> String {
        
        if deliLine.isEmpty {
            
            deliLine.append(name)
            
            print(" I am empty and i am not doing anything 1.")

            return "Welcome \(name), you're first in line!"
            
        }else {
    
        if name == "Billy Crystal" {
            
                deliLine[0] = name
                let billy = "Welcome Billy! You can sit wherever you like."
            print("I am billy")
                return billy
            }else if name == "Meg Ryan" {
                deliLine[0] = name
                let meg = "Welcome Meg! You can sit wherever you like."
            print("I am meg")
            return meg
            }else {
                deliLine.append(name)
            
            print("I am someone")
                return "Welcome \(name), you're number y in line"
            }
        
        }
        
    }
    
    func nowServing()-> String {
        
        if deliLine.isEmpty {
            return "There is no-one to be served."
        }
        print(deliLine)
        deliLine.removeFirst()
        print("new deli line ",deliLine)
        
        return "Now serving x!"
    }
    
    func deliLineDescription()-> String {
        
        if deliLine.isEmpty {
            
            return "The line is currently empty."
        }else {
            
                print("I am doing something nowwww")
            
            var newString :String = ""
            
            for (index, name) in deliLine.enumerated() {
                
                newString = "The line is: \(index + 1). \(name) \n"
                
            }
            
            return newString
            
        }
        
        
    }

}

