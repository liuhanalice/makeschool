//: Playground - noun: a place where people can play

import UIKit

func palindrome(line:String) ->Bool
{
    var characterscount = 0
    for _ in line.characters
    {
        
        characterscount += 1
        
    }
    var array = [Character](repeatElement("a", count: characterscount))
    var array2 = [Character](repeatElement("b", count: characterscount))
    var current = 0
    for char in line.characters
    {
        current += 1
        array[current-1] = char
        //print(array)
    }
    var current2 = characterscount
    
    for char2 in line.characters
    {
        
        current2 -= 1
        array2[current2] = char2
        //print(array2)
    }
   if array == array2
   {
    return true
    }
   else{
    return false
    }
}





palindrome(line: "annaaa")
palindrome(line: "anna")
palindrome(line: "Anna")
palindrome(line: "racecar")
