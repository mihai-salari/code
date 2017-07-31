import Foundation

func getCountryFlag(by countryAbbreviation: String) -> String {
	let base: UInt32 = 127397
	var countryFlag: String = ""
	
	for scalar in countryAbbreviation.unicodeScalars {
		countryFlag.unicodeScalars.append(UnicodeScalar(base + scalar.value)!)
	}
	
	return countryFlag
}

print(getCountryFlag(by: "MY"))