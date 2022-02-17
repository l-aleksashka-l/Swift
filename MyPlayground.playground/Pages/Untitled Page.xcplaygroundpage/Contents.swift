//variables
let greet = "Hello"
var greeting = "Left"
greeting = "Right"
var helloHowAreU = "fine"
print(greet)
var int = 10
var number: Int = 30
var double: Double = 322.3213
print(double)
print(double+double)
print(helloHowAreU+greet)
//condition
var uRHappy = true
if uRHappy {
    print("Good")
}else {
    print("Bad")
}
var whether = "sunny"
switch whether {
case "sunny": print("sunny")
    fallthrough
case "rain": print("rain")
case "snow": print ("snow")
default :print("enjoy your day")
}
var age: Int = 19
switch age{
case 0..<18: print("baby")
case 18..<60: print("daddy")
case 60...:print("grandaddy")
default : print("how old r u?")
}
//cicl
var a = (1...3)
for number in a {
    print("Number is \(number)")
}
for _ in a{
    print("Hello")
}
for index in 1...5{
    print("\(index) mul 3 = \(index*3)")
}
var num:Double = 9
while num < 14{
    print("\(num-1)")
    num+=1
}
//tuple
var person = (name: "Sasha", age: 19, edu: true, weight: 62.3)
print(person)
var tuple1 = (1, "Hola")
var tuple2: (Int, String)
tuple2 = (23, "smth")
person.0
person.1
person.2
person.3
person.name = "Masha"
print(person)
//optional
var x: Int? = 12
//x = nil
if x == nil{
    print("nil")
}else{
    print(x! + 1)
}
let string = "3"
let str = "52a"
let intin = Int(string)
let intn = Int(str)
//Collections
var array = Array<String>()
var array1 = [String] ()
let apple = "apple"
let lemon = "lemon"
let grape = "grape"
let fruits = [apple, lemon, grape]
var shop = ["apple", apple, "juice"]
shop.count
shop.isEmpty
shop.append("butter")
shop[0]
shop[0]="sult"
shop.insert("bread", at: 1)
for item in shop{
    print(item)
}
for(index, value) in shop.enumerated(){
    print("Item \(index+1): \(value)")
}
var set = Set<String>()
var listOfSports: Set<String> = ["football", "soccer", "hockey"]
listOfSports.count
listOfSports.isEmpty
listOfSports.insert("fishing")
listOfSports.insert("football")
for item in listOfSports{
    print(item)
}
listOfSports.remove("soccer")
listOfSports.contains("football")
listOfSports.insert("Badinton")
print("")
for item in listOfSports.sorted(){
    print(item)
}
print("")
for item in listOfSports{
    print(item)
}
var numbers: Set = [3,1,4,56654,2]
for num in numbers.sorted(){
    print(num)
}
var num1: Set = [1,4,5,3,5,6,1]
var num2: Set = [2,3,7,9,6,4,7,10]
num1.union(num2).sorted()
num1.intersection(num2).sorted()
num1.subtracting(num2).sorted()
num2.subtracting(num1).sorted()
num1.symmetricDifference(num2).sorted()
var dict = [Int: String]()
var height = ["Ian": 170.3, "Masha": 160.2, "Andrey" : 150.3]
height["Masha"]
height.isEmpty
height.count
height.updateValue(160.4, forKey: "Masha")
height.removeValue(forKey: "Andrey")
height
for ( heights, name) in height{
    print("\(name) sm has \(heights)")
}
for name in height.keys{
    print("\(name)")
}
for heights in height.values{
    print("\(heights)")
}
var keys = Array(height.keys)
