protocol Car {
    func drive()
}

class LittleSizeCar: Car {
    func drive() {
        print("Drive a little car")
    }
}

class MiddleSizeCar: Car {
    func drive() {
        print("Drive a middle car")
    }
}

protocol Bus {
    func drive()
}

class LittleSizeBus: Bus {
    func drive() {
        print("Drive a little bus")
    }
}

class MiddleSizeBus: Bus {
    func drive() {
        print("Drive a middle bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class LittleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Little size bus is created")
        return LittleSizeBus()
    }
    
    func produceCar() -> Car {
        print("Little size car is created")
        return LittleSizeCar()
    }
}

class MiddleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Middle size bus is created")
        return MiddleSizeBus()
    }
    
    func produceCar() -> Car {
        print("Middle size car is created")
        return MiddleSizeCar()
    }
}

let littleSizeFactory = LittleSizeFactory()
let littleBus = littleSizeFactory.produceBus()
let littleCar = littleSizeFactory.produceCar()

let middleSizeFactory = MiddleSizeFactory()
let middleBus = middleSizeFactory.produceBus()
let middleCar = middleSizeFactory.produceCar()

