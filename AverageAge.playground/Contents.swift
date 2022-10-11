import Foundation

func calculateAverageAge(with values: [Int]) {
    let initialTuple = (lessThan18: 0.0, countLessThan18: 0.0, between19and40: 0.0, countBetween19and40: 0.0, moreThan41: 0.0, countMoreThan41: 0.0, totalAges: 0.0)
    
    let tuple = values.reduce(initialTuple) { acumulator, age in
        var acumulator = acumulator
        
        if age <= 18 {
            let previousValue = acumulator.lessThan18 + Double(age)
            acumulator.lessThan18 = previousValue
            
            let previousCountValue = acumulator.countLessThan18 + 1
            acumulator.countLessThan18 = previousCountValue
        }
        
        else if age >= 19 && age <= 40 {
            let previousValue = acumulator.between19and40 + Double(age)
            acumulator.between19and40 = previousValue
            
            let previousCountValue = acumulator.countBetween19and40 + 1
            acumulator.countBetween19and40 = previousCountValue
        }
        
        else if age >= 41 {
            let previousValue = acumulator.moreThan41 + Double(age)
            acumulator.moreThan41 = previousValue
            
            let previousCountValue = acumulator.countMoreThan41 + 1
            acumulator.countMoreThan41 = previousCountValue
        }
        
        let previousValue = acumulator.totalAges + Double(age)
        acumulator.totalAges = previousValue
       
        return acumulator
    }
    
    printResult(withCount: tuple.countLessThan18, withTotal: tuple.lessThan18, withLabel: "Less than 18")
    
    printResult(withCount: tuple.countBetween19and40, withTotal: tuple.between19and40, withLabel: "Between 19 and 40")
    
    printResult(withCount: tuple.countMoreThan41, withTotal: tuple.moreThan41, withLabel: "More than 41")

    printResult(withCount: Double(values.count), withTotal: tuple.totalAges, withLabel: "All ages")

}

private func printResult(withCount count: Double, withTotal total: Double, withLabel label: String){
    if count > 0 {
        print("\(label): \(total / count)")
    } else {
        print("\(label): 0")
    }
}

calculateAverageAge(with: [13, 32, 30, 29, 18, 51, 40, 79, 17])
