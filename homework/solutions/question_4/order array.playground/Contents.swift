//: Playground - noun: a place where people can play

import UIKit

func orderarray(array1:Array<Int>,array2:Array<Int>)
{
    
    var unsortarray = [Int]()
    for num1 in array1
    {
        unsortarray.append(num1)
    }
    
    for num2 in array2
    {
        unsortarray.append(num2)
    }
    //print(unsortarray)
    
    
    sortarray(myarray: unsortarray)
}


func sortarray(myarray:Array<Int>)
{
    let length = myarray.count
    var newarray = myarray
    //print(length)
    for j in 0...length-2
    {
        for i in 0...length-2-j
        {
            if  newarray[i]>newarray[i+1]
            {
                let temp = newarray[i]
                newarray[i] = newarray [i+1]
                newarray[i+1] = temp
            }
        }
    }
    
    print(newarray)
    
}
orderarray(array1: [4,6,9,10,11,15],array2: [5,7,12,13,14,16])
