class Human{
    var age: Int
    var name: String
    func move(){
        print("\(name) moving")
    }
    init(_ age: Int,_ name: String){
        self.age = age
        self.name = name
    }
    var ages: Double{
        get{
            return Double(age)
        }
        set(newAges){
            self.age = Int(newAges)
        }
    }
}
var man = Human(12, "Karina")
man.name
man.move()
print(man.ages)
man.ages = 13.2
print(man.age)
print(man.ages)
struct human{
    var age: Int
    var name: String
    
    mutating func move(){
        print("Hola, get out")
    }
}
var a = human(age: 32,name: "Gosha")
print(a)
a.move()
let str = "I wanna be ur monster"
str.count
str.hasPrefix("I")
str.uppercased()
str.split(separator: " ")
str.sorted()
class Cat{
    var name: String
    var age: Int{
        didSet{
            if age>maxAge
            {
                age = oldValue}
        }
    }
    var maxAge = 30
    static var count = 0
    init(_ age: Int,_ name: String){
        self.age = age
        self.name = name
        Cat.count+=1
    }
    
}

var l = Cat( 4, "kat")
print(l)
l.age = 40
print(l)
var t  = Cat( 3, "km")
print(Cat.count)
class Siam:Cat{
    
}
var o = Siam(23,"siam")
print(o.age)
print(Cat.count)

