class Enemy {
    let strenght = 1600
}

protocol MilitaryChain {
    var strenght: Int { get }
    var nextRank: MilitaryChain? { get set }
    func shouldDefeatViaStrenght(amount: Int)
}

class Soldier: MilitaryChain {
    var strenght: Int = 100
    var nextRank: MilitaryChain?
    
    func shouldDefeatViaStrenght(amount: Int) {
        if amount < strenght {
            print("Soldier got it!")
        } else {
            nextRank?.shouldDefeatViaStrenght(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    var strenght: Int = 500
    var nextRank: MilitaryChain?
    
    func shouldDefeatViaStrenght(amount: Int) {
        if amount < strenght {
            print("Officer got it!")
        } else {
            nextRank?.shouldDefeatViaStrenght(amount: amount)
        }
    }
}

class General: MilitaryChain {
    var strenght: Int = 1000
    var nextRank: MilitaryChain?
    
    func shouldDefeatViaStrenght(amount: Int) {
        if amount < strenght {
            print("General got it!")
        } else {
            print("We cannot defeat this enemy :(")
        }
    }
}

let enemy = Enemy()

let soldier = Soldier()
let officer = Officer()
let general = General()

soldier.nextRank = officer
officer.nextRank = general

soldier.shouldDefeatViaStrenght(amount: enemy.strenght)
officer.shouldDefeatViaStrenght(amount: enemy.strenght)




