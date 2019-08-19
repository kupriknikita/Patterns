class Driver {
    let isGoodDriver: Bool
    let name: String
    
    init(isGoodDriver: Bool, name: String) {
        self.isGoodDriver = isGoodDriver
        self.name = name
    }
    
}

class Car {
    
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
    var badDriveriterator: BadDriverIterator {
        return BadDriverIterator(drivers: drivers)
    }
    
    private let drivers = [
        Driver(isGoodDriver: true, name: "Nikita"),
        Driver(isGoodDriver: false, name: "Ivan"),
        Driver(isGoodDriver: true, name: "Ruslan"),
        Driver(isGoodDriver: true, name: "Max")
    ]

    func makeFirstIterator() -> GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
    func makeSecondIterator() -> BadDriverIterator {
        return BadDriverIterator(drivers: drivers)
    }
    
}

class GoodDriverIterator: IteratorProtocol {
    
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { $0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer {
            current += 1
        }
        
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allDGoodDrivers() -> [Driver] {
        return drivers
    }
    
}

class BadDriverIterator: IteratorProtocol {
    
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { $0.isGoodDriver == false }
    }
    
    func next() -> Driver? {
        defer {
            current += 1
        }
        
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allBadDrivers() -> [Driver] {
        return drivers
    }
    
}

let car = Car()
car.makeFirstIterator().allDGoodDrivers()
car.makeSecondIterator().allBadDrivers()
