import UIKit
/*
 
 Chapter 2: Data Types
 
 Most common data types:
 
 String -> var str: String = "Tom"
 Int-> var anInteger: Int = 100
 Float-> var aFloat: Float = 0.2
 Double-> var aDouble: Double = 0.3
 Boolean-> var aBool: Bool = true
 
 */

class Employee{
    var name = " "
    var salary:Int = 0
    var role=" "
    func doWork(){
        print("I do work")
    }
    
}
var emir = Employee()
print(emir.role)
emir.role = "developer"
print(emir.role)
print(emir.salary)

class Manager : Employee{
    override func doWork() {
        super.doWork()
        
    }
    
}

