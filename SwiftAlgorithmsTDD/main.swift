import Foundation


func bubbleSort(data: inout [Int]) -> [Int] {
    for i in 0...data.count - 1{
       for j in 0...data.count - 1 {
           if data[i] < data[j] {
           data.swapAt(j, i)
         }
         
       
       }
     }

    return data
    
}
var list = [Int]()
for _ in 0...1000 {
    let randomNumber = Int.random(in: 0...1000)
    list.append(randomNumber)
}
        
let timeNow = Date().timeIntervalSinceReferenceDate
print(bubbleSort(data: &list))
let timeTaken = Date().timeIntervalSinceReferenceDate - timeNow
print(timeTaken)


