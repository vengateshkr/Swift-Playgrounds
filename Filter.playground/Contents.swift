//: Playground - noun: a place where people can play

import UIKit

extension Array{
func myFilter<T>(predicate:(T) -> Bool) -> [T] {
    var result = [Int]()
    for i in self {
        if predicate(i as! T) {
            result.append(i as! Int)
        }
    }
    return result as! [T]
  }
}

let evens = [1,2,3,4].myFilter() {
       return $0 % 2 == 0
}

print(evens)


