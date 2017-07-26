//: Playground - noun: a place where people can play

import UIKit
func removeduplicate(mystring:String)
{
    let length = mystring.characters.count
    var changetoarray = [Character]()
    for char in mystring.characters
    {
        changetoarray.append(char)
    }
    
    var array = [Character]()
    array.append(changetoarray[0])
    //print(changetoarray)
    //print(length)
    for current in 1...length-1
    
     {
       
       var judge =  false
        
        for j in 0...current-1
            {
               if changetoarray[j] != changetoarray[current]
               {
                   judge = true
                }
               else
               {
                judge = false
                break
                }
                
            }
        
        if judge == true
        {
            array.append(changetoarray[current])
          
        }
        
    
    }
   
    print(String(array))
}

removeduplicate(mystring: "cmymas a")
