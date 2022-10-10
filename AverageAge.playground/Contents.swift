import Foundation

func calculateAverageAge(with values: [Int]) {
    var lessThanEighteen: Double = 0
    var countLessThanEighteen: Double = 0
    
    var betweenNineteenAndForty: Double = 0
    var countBetweenNineteenAndForty: Double = 0
    
    var moreThanFortyOne: Double = 0
    var countMoreThanFortyOne: Double = 0
    
    var allAges: Double = 0
    
    values.forEach({ age in
        if age > 0 {
            if age <= 18 {
                countLessThanEighteen += 1
                lessThanEighteen += Double(age)
            }
            
            else if age >= 19 && age <= 40 {
                countBetweenNineteenAndForty += 1
                betweenNineteenAndForty += Double(age)
            }
            
            else if age >= 41 {
                countMoreThanFortyOne += 1
                moreThanFortyOne += Double(age)
            }
            
            allAges += Double(age)
        }
    })
    
    if lessThanEighteen > 0 {
        print("lessThan 18: \(lessThanEighteen / countLessThanEighteen)")
    } else {
        print("lessThan 18: 0")
    }
    
    if betweenNineteenAndForty > 0 {
        print("between 19 and 41: \(betweenNineteenAndForty / countBetweenNineteenAndForty)")
    } else {
        print("between 19 and 41: 0")
    }
    
    if moreThanFortyOne > 0 {
        print("more than 41: \(moreThanFortyOne / countMoreThanFortyOne)")
    } else {
        print("more than 41: 0")
    }
    
    if allAges > 0 {
        print("All ages: \(allAges / Double(values.count))")
    } else {
        print("All ages: 0")
    }
}

calculateAverageAge(with: [13, 32, 30, 29, 18, 51, 40, 79, 17])
