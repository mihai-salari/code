import Foundation

func timeOfDayDescription(hour: Int) -> String {
    switch hour {
    case 0, 1, 2, 3, 4, 5:
        return "Early morning"
    case 6, 7, 8, 9, 10, 11:
        return "Morning"
    case 12, 13, 14, 15, 16:
        return "Afternoon"
    case 17, 18, 19:
        return "Evening"
    case 20, 21, 22, 23:
        return "Late evening"
    default:
        return "Invalid hour"
    }
}

print(timeOfDayDescription(hour: 21))
