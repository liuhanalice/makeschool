//: Playground - noun: a place where people can play

import UIKit

func paidrome(lines:String) ->Bool
{
    let length = lines.characters.count
    for i in 0...Int(length/2)
    {
        let front = lines.index(lines.startIndex, offsetBy: i)
        let back = lines.index(lines.startIndex, offsetBy:length-i-1)
        
        if lines[front] != lines[back]
        {
            return false
        }
        
    }
        return true
}


paidrome(lines: "annaaa")
paidrome(lines: "anna")
paidrome(lines: "Anna")
paidrome(lines: "racecar")
