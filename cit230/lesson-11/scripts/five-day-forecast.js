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

//Creates the 5 day forecast
   let currentDay = weekDayNumber;

    if (weekDayNumber < 6){
        day1 = daysOfWeek[weekDayNumber + 1];
        document.getElementById("day1").innerHTML = day1;
    }

   for (i = 1; i < 6; i++) {
       // add one day to the current day
       currentDay++;
       
       //If current day is greater than 6 (Saturday), reset it to 0.
       if (currentDay > 6){
           currentDay = 0;
       }

       const element = document.getElementById(`day${i}`);

       element.innerHTML.daysOfWeek[currentDay];
   }

   const apiForecastURL = 'https://api.openweathermap.org/data/2.5/weather?id=5604473&appid=ec3bf9c2261a8ec6e27a75dfc3df01e2&units=imperial';

   fetch(apiForecastURL)
    .then(
        (response) => response.json()
    )
    .then(
        (forecasts) => {
            let nextDate = new Date();
            nextDate.setDate(nextDate.getDate() + 1);
            let dateString = getDateString(nextDate);
            let hourString = '18:00:00';
            let counter = 1;

                    //loop through results
                    forecasts.list.forEach(
                        (forecast) => {
                            if (forecast.dt_txt.includes(dateString)&&
                                forecast.dt_txt.includes(hourString)){
                                    console.log(forecast.main.temp);

                                const element = document.getElementById('temp$(counter)')
                                element.innerHTML = forecast.main.temp + '&deg;';
                                //Increment variables
                                counter += 1;
                                nextDate.setDate(nextDate.getDate() + 1);
                                dateString = getDateString(nextDate)
                            }
                        }
                    )
                }
            )
        
    

    function getDateString(date){
        let dateString =
        // get full year
        date.getFullYear() + '-' +

        // get month
        (date.getMonth() + 1) + '-' +

        // get day
        date.getDate();

        return dateString;
    }