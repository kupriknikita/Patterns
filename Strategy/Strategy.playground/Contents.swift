 import UIKit
 
 protocol SwimBehavior {
    func swim()
 }
 
 class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("Profesional swimming")
    }
 }
 
 class NonSwimmer: SwimBehavior {
    func swim() {
        print("Non swimming")
    }
 }
 
 protocol DiveBehavior {
    func dive()
 }
 
 class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("Profesional diving")
    }
 }
 
 class NewbieDiver: DiveBehavior {
    func dive() {
        print("Newbie diving")
    }
 }
 
 class NonDiver: DiveBehavior {
    func dive() {
        print("Non diving")
    }
 }

 class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior(swimBehavior: SwimBehavior) {
        self.swimBehavior = swimBehavior
    }
    
    func setDiveBehavior(diveBehavior: DiveBehavior) {
        self.diveBehavior = diveBehavior
    }
    
    func run() {
        print("running")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
    
 }
 
 let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: ProfessionalDiver())
 human.setSwimBehavior(swimBehavior: NonSwimmer())
 human.performDive()
 human.performSwim()

