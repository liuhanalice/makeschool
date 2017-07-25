//: Playground - noun: a place where people can play



import UIKit

func split (string: String) -> [Character] {
    var array: [Character] = []
    for letter in string.characters {
        array.append(letter)
    }
    return array
}

func isPaladrome(word: String) -> Bool {
    let letters = split(string: word)
    
    if letters == letters.reversed() {
        return true
    }
    
    return false
}

print(isPaladrome(word: "racecar"))