protocol DriveVehicle {
    func haveASeat()
    func closeTheDoor()
    func useProtection()
    func lookAtTheMirror()
    func turnSignal()
    func driveForward()
    func startVehicle()
}

extension DriveVehicle {
    
    func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("This method should be overriden")
    }
    
    func closeTheDoor() {
        
    }
    
    func useProtection() {
        preconditionFailure("This method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("This method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("This method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("This method should be overriden")
    }
    
}

class Bicycle: DriveVehicle {
    
    func haveASeat() {
        print("Sit down on a bicycle seat")
    }
    
    func useProtection() {
        print("Wear a helmet")
    }
    
    func lookAtTheMirror() {
        print("Look at the left mirror")
    }
    
    func turnSignal() {
        print("Show left hand")
    }
    
    func driveForward() {
        print("Go-Go-Go!")
    }
    
}

class Car: DriveVehicle {
    
    func haveASeat() {
        print("Sit down on a car seat")
        closeTheDoor()
    }
    
    func closeTheDoor() {
        print("Close the door")
    }
    
    func useProtection() {
        print("Bucle up")
    }
    
    func lookAtTheMirror() {
        print("Look at the rearview mirror")
    }
    
    func turnSignal() {
        print("Turn on left light")
    }
    
    func driveForward() {
        print("Push pedal!")
    }
    
}

let car = Car()
let bicycle = Bicycle()

car.startVehicle()
print("-------------")
bicycle.startVehicle()
