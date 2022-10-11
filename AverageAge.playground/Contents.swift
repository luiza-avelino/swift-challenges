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
    
    printResult(withCount: countLessThanEighteen, withTotal: lessThanEighteen, withLabel: "less than 18")
    
    printResult(withCount: countBetweenNineteenAndForty, withTotal: betweenNineteenAndForty, withLabel: "between 19 and 41")
    
    printResult(withCount: countMoreThanFortyOne, withTotal: moreThanFortyOne, withLabel: "more than 41")
    
    printResult(withCount: Double(values.count), withTotal: allAges, withLabel: "All ages")

}

private func printResult(withCount count: Double, withTotal total: Double, withLabel label: String){
    if count > 0 {
        print("\(label): \(total / count)")
    } else {
        print("\(label): 0")
    }
}

calculateAverageAge(with: [13, 32, 30, 29, 18, 51, 40, 79, 17])
