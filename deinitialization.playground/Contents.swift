//: Playground - noun: a place where people can play

import UIKit

var str = "deinitialization"

class Bank {
    static var coinsInBank = 10_000
    
    static func distribute(coins numberOfCoinRequested:
        Int) -> Int {
        let numberOfCoinsToVend =
            min(numberOfCoinRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}
var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")

print("There are now \(Bank.coinsInBank) coins left in the bank")

playerOne!.win(coins: 2_000)
print("There are now \(Bank.coinsInBank) coins left in the bank")

playerOne = nil
print("PlayerOne has left the game")

print("The bank now has \(Bank.coinsInBank) coins")