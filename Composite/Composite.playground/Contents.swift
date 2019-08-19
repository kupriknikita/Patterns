protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var level: Int { get }
}


// Branch
class Manager: Coworker {
    private var coworkers = [Coworker]()
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    
    func getInfo() {
        print(self.level.description + " level manager")
        for coworker in coworkers {
            coworker.getInfo()
        }
    }
}

// Leaf
class LowLevelManager: Coworker {
    var level: Int
    
    init(level: Int) {
        self.level = level
    }
    
    func hire(coworker: Coworker) {
        print("Can't hire")
    }
    
    func getInfo() {
        print(self.level.description + " level manager")
    }
}

let topManager = Manager(level: 1)

let secondLowLevelManagerOne = LowLevelManager(level: 2)
let secondLowLevelManagerTwo = LowLevelManager(level: 2)

topManager.hire(coworker: secondLowLevelManagerOne)
topManager.hire(coworker: secondLowLevelManagerTwo)
topManager.getInfo()

secondLowLevelManagerTwo.hire(coworker: topManager)
secondLowLevelManagerTwo.getInfo()
