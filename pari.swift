let currentDate = NSDate();

// Initialize Date string
var dateStr = "2018/07/13"

// Set date format
var dateFmt = NSDateFormatter()
dateFmt.timeZone = NSTimeZone.defaultTimeZone()
dateFmt.dateFormat =  "yyyy-MM-dd 00:00"

// Get NSDate for the given string
var challengeDateBegin = dateFmt.dateFromString(dateStr)

let date1 = calendar.startOfDayForDate(currentDate)
let date2 = calendar.startOfDayForDate(challengeDateBegin!)

print(date1)
print(date2)

let flags = NSCalendarUnit.Day
    let components = calendar.components(flags, fromDate: date1, toDate: date2, options: [])
    print("amount of days \(components.day)")

