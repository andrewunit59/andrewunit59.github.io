function toggleMenu() {
	document.getElementsByClassName("navigation")[0].classList.toggle("responsive");
}

var currentDate = new Date();

// get day of week
var weekDayNumber = currentDate.getDay();

//show/hide pancake
  if (weekDayNumber === 5){
      document.getElementById("pancake").removeAttribute("class", "hidden");

  }


var daysOfWeek = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
];

var weekDay = daysOfWeek[weekDayNumber];

currentDateString = weekDay + ', ';

currentDateString = currentDateString + currentDate.getDate();

var months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
];

var monthNumber = currentDate.getMonth();

var month = months[monthNumber];

currentDateString += ' ' + month;

currentDateString += ' ' + currentDate.getFullYear();

document.getElementById('currentDate').innerHTML = currentDateString;

    //Creates the 5 day forecast
    let currentDay = weekDayNumber;

    // if (weekDayNumber < 6){
    //     day1 = daysOfWeek[weekDayNumber + 1];
    //     document.getElementById("day1").innerHTML = day1;
    // }

    for (i = 1; i < 6; i++) {
        // add one day to the current day
        currentDay++;
        
        //If current day is greater than 6 (Saturday), reset it to 0.
        if (currentDay > 6){
            currentDay = 0;
        }

        const element - document.getElementById(`day${i}`);

        element.innerHTML.daysOfWeek[currentDay];
    }
//Debug;
//console.log(currentDate);
//console.log(weekDayNumber);
//console.log(daysOfWeek[0]);