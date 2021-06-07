import Foundation

public extension Int {
    
    var roman: String? {
        
        if (self < 1 || self > 3999){ return nil }
        
        var x = self
        var result = ""
        while (x > 0){
            if (x >= 1000){
                result += "M"
                x -= 1000
                continue
            }
            if (x >= 900 && x < 1000){
                result += "CM"
                x -= 900
                continue
            }
            if (x >= 500 && x < 900){
                result += "D"
                x -= 500
                continue
            }
            if (x >= 400 && x < 500){
                result += "CD"
                x -= 400
                continue
            }
            if (x >= 100 && x < 400){
                result += "C"
                x -= 100
                continue
            }
            if (x >= 90 && x < 100){
                result += "XC"
                x -= 90
                continue
            }
            if (x >= 50 && x < 90){
                result += "L"
                x -= 50
                continue
            }
            if (x >= 40 && x < 50){
                result += "XL"
                x -= 40
                continue
            }
            if (x >= 10 && x < 40){
                result += "X"
                x -= 10
                continue
            }
            if (x == 9){
                result += "IX"
                x -= 9
                continue
            }
            if (x >= 5 && x < 9){
                result += "V"
                x -= 5
                continue
            }
            if (x == 4){
                result += "IV"
                x -= 4
                continue
            }
            if (x < 4){
                result += "I"
                x -= 1
                continue
            }
        }
        
        return result
        
    }
}
 
