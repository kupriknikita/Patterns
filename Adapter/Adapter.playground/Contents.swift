
// Adaptee
class SimpleCar {
    func sound() -> String {
        return "bip-bip"
    }
}

// Target
protocol SupercarProtocol {
    func makeNoise() -> String
}

class SuperCar: SupercarProtocol {
    func makeNoise() -> String {
        return "wroom-wroom"
    }
}

// Adapter
class SuperCarAdapter: SupercarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
}

let simpleCar = SimpleCar()
simpleCar.sound()
let superCar = SuperCar()
superCar.makeNoise()
let superCarAdapter = SuperCarAdapter(simpleCar: simpleCar)
superCarAdapter.makeNoise()
