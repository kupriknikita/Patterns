enum CarType {
    case huge, fast
}

protocol Car {
    func drive()
}

class HugeCar: Car {
    func drive() {
        print("You drive huge car")
    }
}

class FastCar: Car {
    func drive() {
        print("You drive fast car")
    }
}

class CarFactory {
    static func produceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
            case .huge: car = HugeCar()
            case .fast: car = FastCar()
        }
        
        return car
    }
}

let hudeCar1 = CarFactory.produceCar(type: .huge)
let fastCar1 = CarFactory.produceCar(type: .fast)
