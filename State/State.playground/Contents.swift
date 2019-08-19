protocol State {
    func on(printer: Printer)
    func off(printer: Printer)
    func printDocument(printer: Printer)
}

class On: State {
    
    func on(printer: Printer) {
        print("It is on arleady")
    }
    
    func off(printer: Printer) {
        printer.set(state: Off())
        print("Turning printer off")
    }
    
    func printDocument(printer: Printer) {
        print("Documents are printing")
        printer.set(state: Print())
    }
    
}

class Off: State {
    
    func on(printer: Printer) {
        print("Turning printer on")
        printer.set(state: On())
    }
    
    func off(printer: Printer) {
        print("It is off arleady")
    }
    
    func printDocument(printer: Printer) {
        print("We can't print, it's off!")
    }
    
}

class Print: State {
    
    func on(printer: Printer) {
        print("It is on arleady")
    }
    
    func off(printer: Printer) {
        print("Turning printer off")
        printer.set(state: Off())
    }
    
    func printDocument(printer: Printer) {
        print("It's arleady printing")
        printer.set(state: Print())
    }
    
}

class Printer {
    var state: State
    
    init() {
        self.state = On()
    }
    
    func set(state: State) {
        self.state = state
    }
    
    func turnOn() {
        state.on(printer: self)
    }
    
    func turnOff() {
        state.off(printer: self)
    }
    
    func print() {
        state.printDocument(printer: self)
    }
}

let printer = Printer()
printer.print()
printer.turnOff()
printer.print()
printer.print()
