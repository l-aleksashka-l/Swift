//enum
enum Result{
    case success
    case fail
}
let result = "fail"
let results = "failure"
var res: Result
res = .success
enum Activity{
    case sport
    case music(volume: Double)
    case books(pages: Int)
}
let ACTIVITY: Activity
ACTIVITY = .sport
switch ACTIVITY{
case .sport: print("run")
case .music: print("mus")
case .books: print("read")
default: print("nothing")
}
let activ = Activity.music(volume: 24.3)
enum games: String {
    case footbal = "foot"
    case basketball = "hand"
}
print(games.basketball.rawValue)
    