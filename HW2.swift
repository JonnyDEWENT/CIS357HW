
//Problem 1
var authors:Dictionary<String,Float> = ["Mark Twain":8.9, "Nathaniel Hawthorne":5.1, "John Steinbeck":2.3, "C.S. Lewis":9.9, "Jon Krakaur":6.1]

var i = 0
var total:Float = 0
while(i < authors.count){
    total = total + Array(authors)[i].value
    i=i+1
}
let size:Float = Float(i+1)
let avg = total / size

//Problem 2
if avg < 5.0 {
    print("Low")
}
else if avg >= 5.0 && avg < 7.0{
    print("Moderate")
}
else {
    print("High")
}

//Problem 3
var count = 15
var stringOut:String = ""
if count >= 0{
    switch count{
    case 0:
        stringOut = "none"
        break
    case 1..<5:
        stringOut = "a few"
        break
    case 5..<10:
        stringOut = "several"
        break
    case 10..<99:
        stringOut = "tens of"
        break
    case 100..<1000:
        stringOut = "hundreds of"
        break
    case 1000..<1000000:
        stringOut = "thousands of"
        break
    default:
        stringOut = "millions of"
        break
    }
    
}

//Problem 4

func verbalizeNumber(count: Int) -> String {
    
    var stringOut:String = ""
    if count >= 0{
        switch count{
        case 0:
            stringOut = "none"
            break
        case 1..<5:
            stringOut = "a few"
            break
        case 5..<10:
            stringOut = "several"
            break
        case 10..<99:
            stringOut = "tens of"
            break
        case 100..<1000:
            stringOut = "hundreds of"
            break
        case 1000..<1000000:
            stringOut = "thousands of"
            break
        default:
            stringOut = "millions of"
            break
        }
        
    }
    return stringOut
}


//Problem 5
var iterator = 1
for iterator in stride(from:1, to: 10000, by: 1000){
    let str:String = verbalizeNumber(count: iterator)
    print(str + "\niterator value: \(iterator)\n\n")
}

//Problem 6
func verbalizeAndShoutNumber (count: Int) -> String {
    return verbalizeNumber(count: count).uppercased()
}

//Problem 7

func expressNumbersElegantly(max: Int, verbalizeFunction: (Int) -> String)  -> String {
    var catStr:String = ""
    for iterator in stride(from:1, to: max, by: 1000){
        let str:String = verbalizeFunction(iterator)
        catStr += str + "\niterator value: \(iterator)\n\n"
    }
    
    return catStr
}

var tempFunc: (Int) -> String
tempFunc = verbalizeNumber

print(expressNumbersElegantly(max: 2000, verbalizeFunction: tempFunc))

tempFunc = verbalizeAndShoutNumber
print(expressNumbersElegantly(max: 2000, verbalizeFunction: tempFunc))

//Problem 8

func expressNumbersVeryElegantly(maxIterator max: Int, function verbalizeFunction: (Int) -> String) -> String {
    return expressNumbersElegantly(max: max, verbalizeFunction: verbalizeFunction)
}

print(expressNumbersVeryElegantly(maxIterator: 20000, function: tempFunc))

//Problem 9

var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets nuc 'em Joe!", "ah, there is just something about Swift"]

let capitalize = famousLastWords.map ({
    (uncapped: String) -> String in
    return uncapped.prefix(1).uppercased() + uncapped.dropFirst()
})

func printOddEven(coolInt: Int) {
    for i in 1...coolInt {
        switch(i%2){
        case 0:
            print("\(i) is EVEN")
            break
        case 1:
            print("\(i) is ODD")
            break
        default:
            break
        }
        
    }
    
}

printOddEven(coolInt: 32)
// [4.0, 16.0, 25.0, 49.0]
