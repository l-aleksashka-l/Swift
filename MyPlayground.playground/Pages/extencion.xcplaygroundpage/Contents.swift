extension Int {
    func square() -> Int{
        return self*self
    }
    var isEven:Bool{
        return self%2==0
    }
}
var number = 10
number.square()
number.isEven
