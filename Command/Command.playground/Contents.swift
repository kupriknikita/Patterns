class Account {
    var accountName: String
    var balance: Int
    
    init(accountName: String, balance: Int) {
        self.accountName = accountName
        self.balance = balance
    }
}

protocol Command {
    func execute()
    var isComplete: Bool { get set }
}

class Deposit: Command {
    
    private var _account: Account
    private var _amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        _account.balance += _amount
        isComplete = true
        print("Money is added")
        
    }

}

class Withdraw: Command {
    
    private var _account: Account
    private var _amount: Int
    var isComplete: Bool = false
    
    init(account: Account, amount: Int) {
        self._account = account
        self._amount = amount
    }
    
    func execute() {
        if (_account.balance >= _amount) {
            _account.balance -= _amount
            isComplete = true
            print("Money is removed")
        } else {
            print("Not enough money")
        }
    }
    
}

class TransactionManager {
    
    static let shared = TransactionManager()
    private init() {}
    private var _transactions: [Command] = []
    
    var pendingTransactions: [Command] {
        get {
            return self._transactions.filter { $0.isComplete == false }
        }
    }
    
    func addTransactions(command: Command) {
        self._transactions.append(command)
    }
    
    func processingTransactions() {
        _transactions.filter { $0.isComplete == false }.forEach{ $0.execute() }
    }
}

let account = Account(accountName: "Kuprik Nikita", balance: 500)
let transactionManager = TransactionManager.shared
transactionManager.addTransactions(command: Deposit(account: account, amount: 200))
transactionManager.addTransactions(command: Withdraw(account: account, amount: 400))
transactionManager.pendingTransactions
account.balance
transactionManager.processingTransactions()
account.balance

