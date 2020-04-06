// Simple class
class BankAccount {
    var name : String
    var balance : Double
    
    init(name: String, balance: Double){
        self.name = name
        self.balance = balance
    }
    
    func deposit(_ amount:Double){
        balance += amount
    }
    
    func withdraw(_ amount: Double){
        balance -= amount
    }
}

var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.deposit(50)
daveAccount.withdraw(10)
var myAccount = BankAccount(name: "Strawberry", balance: 10.00)
myAccount.deposit(100)


// Subclass
class AtmBankAccount : BankAccount {
    var withdrawFee : Double
    let defaultWithdrawFee : Double = 2.0
    
    //Subclass init
    override init(name: String, balance: Double){
        withdrawFee = defaultWithdrawFee
        super.init(name: name, balance: balance)
    }
    
    //New init
    init(name : String, balance : Double, withdrawFee : Double){
        self.withdrawFee = withdrawFee
        super.init(name: name, balance: balance)
    }
    
    //Convenience init
    convenience init() {
        self.init(name: "Anonymous", balance: 0)
    }
    
    override func withdraw(_ amount: Double) {
        super.withdraw(amount)
        balance -= withdrawFee
    }
}

var bobAccount = AtmBankAccount()
bobAccount.deposit(100)
bobAccount.withdraw(40)
bobAccount.name = "Bob"

var myAccount2 = AtmBankAccount(name: "Me", balance: 100)
myAccount2.withdraw(10)

var myAccount3 = AtmBankAccount(name: "Me", balance: 100, withdrawFee: 0.01)
myAccount3.withdraw(10)
myAccount3.withdraw(10)
myAccount3.withdraw(10)
myAccount3.withdraw(10)

