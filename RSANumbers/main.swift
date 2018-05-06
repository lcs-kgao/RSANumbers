//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here


// Create variables
var lowerInput = 0
var upperInput = 0
var RSA = 0

//Check

while 1 == 1 {
    
    
    //Ask for input
    print("Enter the lower limit of range")
    
    //Waiting for input
    let numberInput = readLine()
    
    //check for nil
    guard let validInput = numberInput else{
        continue
        
    }
    
    //Check for integer
    guard let givenInput = Int(validInput) else{
        continue
        
    }
    
    //check for range
    if givenInput < 1 || givenInput > 1000 {
        continue
        
    }
    
    lowerInput = givenInput
    break
    
}

while 1 == 1 {
    
    //Ask for input
    print("Enter the upper limit of range")
    
    //Waiting for input
    let numberInput = readLine()
    
    //check for nil
    guard let validInput = numberInput else{
        continue
        
    }
    
    //Check for integer
    guard let givenInput = Int(validInput) else{
        continue
        
    }
    
    //check for range
    if givenInput < lowerInput || givenInput > 1000 {
        continue
        
    }
    
    upperInput = givenInput
    break
}


// PROCESS
// Implement the primary logic of the problem here

//func divisor(value: Int) -> Int {
//
//    var divisor = 0
//
//    for i in 1...value{
//        if value % i == 0 {
//            divisor += 1
//        }
//    }
//    return divisor
//}

// List the numbers
for numbers in lowerInput...upperInput  {
  var divisor = 0
    // Check the number of divisors for each value
    for i in 1...numbers{
        if numbers % i == 0 {
            divisor += 1
        }
    }
    // Count the number of RSA
    if divisor == 4 {
        RSA += 1
    }
}


// OUTPUT
// Report results to the user here
print("The number of RSA numbers between \(lowerInput) and \(upperInput) is \(RSA)")


