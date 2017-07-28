//: Playground - noun: a place where people can play

import UIKit
func findout(array: Array<Int>)
{
    let length = array.count
    var highest = 0
    var lowest = 9999
    for i in 0...length-1
    {
        if(array[i]>highest)
        {
            highest = array[i]
        }
        
        if(array[i]<lowest)
        {
            lowest = array[i]
        }

    }
    
    print("highest:"+"\(highest)")
    print("lowest:"+"\(lowest)")
    
}
findout(array:  [21, 90, 23, 81, 19, 15])
