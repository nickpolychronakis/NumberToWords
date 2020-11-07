import Foundation


public extension String {
    /// Σε περίπτωση που το κείμενο περιέχει αριθμούς, τους μετατρέπει σε λέξεις. (1 -> ένα)
    var convertNumberToWords: String {
        var localizedNumber: String = ""
        // Αν η γλώσσα της εφαρμογής είναι Ελληνικά
        if Locale.preferredLanguages[0] == "el" {
            // αντικαθιστώ το κόμμα που βάζουμε στην Ελλάδα με τελεία που υποστηρίζει το Double
            localizedNumber = self.replacingOccurrences(of: ",", with: ".")
        } else {
            localizedNumber = self
        }
        // Αν μπορεί να μετατραπεί σε Double τότε επιστρέφουμε την μετατροπή
        if let double = Double(localizedNumber) {
            return double.convertNumberToWords
        }
        return self
    }
}

public extension Double {
    /// Μετατρέπει τον αριθμό σε λέξεις. (1 -> ένα)
    var convertNumberToWords: String {
        let numberValue = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter.string(from: numberValue)!
    }
}
