//: Playground - noun: a place where people can play

import UIKit

// Problem 1
let myString = "Hello, world!"
let cost = 1.99
var cnt:Int = 2
var isDone:Bool = true
let int1 = 0xC
let int2 = 0b1010


//Problem 2
let string1 = myString + " " + "\(cost)"

//Problem 3
var list1:[String] = ["gvsu", "lakers", "rule"]
print("The last entry is " + list1[list1.count - 1])
list1.append("always")
list1 += ["I","hope"]

//Problem 4
for item in list1{
    print(item)
}

for (item,value) in list1.enumerated(){
    print("item \(item + 1): \(value)")
}

//Problem 5
var authors:Dictionary<String,Double> = ["Mark Twain":8.9, "Nathaniel Hawthorne":5.1, "John Steinbeck":2.3, "C.S. Lewis":9.9, "Jon Krakaur":6.1]

//Problem 6
print("Score = \(String(describing: authors["John Steinbeck"]))")
authors["Erik Larson"] = 9.2

// NOTE: Is there a better or more efficient way to do
let val1:Double! = authors["Jon Krakaur"]
let val2:Double! = authors["Mark Twain"]

if val1 > val2 {
    print ("Jon Krakaur")
}
else {
    print ("Mark Twain")
}

//Problem 7
for (author,score) in authors{
    print("\(author): \(score)")
}

//Problem 8
for index in 1...10 {
    print("\(index)")
}

//Problem 9
for index in (1...10).reversed() {
    print("\(index)")
}

//Problem 10
let x = 3
let y = 5
var result = 0

for _ in 0...y
{
    result += x
}

