class TipCalculator {
    let total: Double
    let taxPct: Double
    let subtotal: Double
    
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1) //: No need to use self.subtotal as there is no conflict
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsExplicit: [Double] = [0.15, 0.18, 0.20]
        
        // 2
        var retVal = [Int: Double]()
        for possibleTip in possibleTipsExplicit {
            let intPct = Int(possibleTip*100)
            retVal[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retVal
    }
}

let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()

