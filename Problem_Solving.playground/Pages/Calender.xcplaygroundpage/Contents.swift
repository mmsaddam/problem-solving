//: [Previous](@previous)

import Foundation
enum Month: String, CaseIterable {
	case january = "January"
	case february = "February"
	case march = "March"
	case apil = "April"
	case may = "May"
	case june = "June"
	case july = "July"
	case august = "August"
	case september = "September"
	case october = "October"
	case novermber = "November"
	case december = "December"
}

enum Day: String {
	case sat = "Saturday"
	case sun = "Sunday"
	case mon = "Monday"
	case tue = "Tuesday"
	case wed = "Wednesday"
	case thu = "Thusday"
	case fri = "Friday"
	
	var value: Int {
		switch self {
		case .sun:
			return 1
		case .mon:
			return 2
		case .tue:
			return 3
		case .wed:
			return 4
		case .thu:
			return 5
		case .fri:
			return 6
		case .sat:
			return 7
		}
	
	var nextDay: Day {
		switch self {
		case .sun:
			return .mon
		case .mon:
			return .tue
		case .tue:
			return .wed
		case .wed:
			return .thu
		case .thu:
			return .fri
		case .fri:
			return .sat
		case .sat:
			return .sun
			
		}
		
	}
	
	var previousDay: Day {
		switch self {
		case .sun:
			return .sat
		case .mon:
			return .sun
		case .tue:
			return .mon
		case .wed:
			return .thu
		case .thu:
			return .wed
		case .fri:
			return .thu
		case .sat:
			return .fri
			
		}
	}
}



func calender(_ year: Int, _ day: Day, count: Int) -> Day {
	var startingDate = day
	
	Month.allCases.forEach { month in
		switch month {
		case .january:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .february:
			let start = startingDate
			var endDate: Day = start.previousDay
			if year % 4 == 0 {
				endDate = startingDate.nextDay
			}
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
			
		case .march:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .apil:
			let start = startingDate
			var endDate = startingDate.nextDay
			

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .may:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .june:
			let start = startingDate
			var endDate = startingDate.nextDay

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .july:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .august:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .september:
			let start = startingDate
			var endDate = startingDate.nextDay
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .october:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .novermber:
			let start = startingDate
			var endDate = startingDate.nextDay
			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		case .december:
			let start = startingDate
			var endDate = startingDate.nextDay
			endDate = endDate.nextDay

			print("\(month), start: \(start), end: \(endDate)")
			startingDate = endDate.nextDay
		}
		
	}
	var day = day
	for _  in 0..<count % 7 {
		day = day.nextDay
	}
	return day
}

calender(2021, .fri, count: 61)

//: [Next](@next)
