import Darwin
func greeting(){
        print("Hello string")
}
greeting()
func square(number: Int){
    print( number * number)
}
square(number:2)
func square1(num : Int) -> Int {
    return num * num
}
print(square1(num: 6))
func getuser()->[String]{
    ["Ivan", "Ivanov"]
}
print(getuser()[0])
func getUser()->[String : String]{
    ["fU" : "Ivan", "sU" : "Max"]
}
print(getUser()["sU"])
func getUsers()->(first: String, second:String){
    (first: "Ivan", second: "Max")
}
print(getUsers().first)
func sayHello (to name : String){
    print("Hello, \(name)")
}
sayHello(to :"Ian")
func Hola(_ name : String){
    print("Hello, \(name)")
}
Hola("Ivan")
func holdOn(_ name  :String, nicely : Bool=true){
    if(nicely){
        print("Hola, \(name)")
    }else{
        print("Bye, \(name)")
    }
}
holdOn("Stasya")
holdOn("Kirill",nicely :  false)
func A(numbers: Int...){
    for number in  numbers{
        print("\(number) square is \(number*number)")
    }
}
A(numbers: 1,3, 4,34, 35, 435 )
func doubleIt(number: inout Int){
    number*=3
}
var asd = 5
doubleIt(number: &asd)
print(asd)
print(doubleIt(number: &asd))
print(asd)
let d = { print("js")}
d()
let da  = {(Name: String, age: Int) in print("\(Name) is \(age)")}
da("Mike", 23)
let das  = {(Name: String, age: Int) -> String in return("\(Name) is \(age)")}
das("Sasha", 20)
let payment = {(user : String) -> Bool in
    print("\(user) pay...")
    return true
}
payment("Dima")
let payment1 = {() -> Bool in
    return true
}
payment1()
func check(action: () -> Void){
    print("check payments")
    action()
}
check(action: d)
func animate(_ duration: Double,_ action: () -> Void){
    print("\(duration) event")
    action()
}
animate(5,{print("smth")})
func travel(_ age: Int, _ name: String,_ action: (String, Int) -> String){
    print("lets go \(action(name, age))")
}
travel(23, "kira", das)
func travel4() -> (String) -> Void{
    var counter = 1
    return  {
        print("\(counter). City - \($0)")
        counter+=1
    }
    
}
let result = travel4()
result("Minsk")
result("Gomel")
