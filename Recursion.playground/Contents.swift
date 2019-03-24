import UIKit

var str =  "Hello World!"

func reverse(normal: inout String) -> String {

    if (normal.count <= 0){
        return normal
    }
    
    var normalCopy = String(normal.suffix(normal.count-1))
    return reverse(normal: &normalCopy) + "\(Array(normal)[0])"
}

var test = reverse(normal: &str)
print(test)
