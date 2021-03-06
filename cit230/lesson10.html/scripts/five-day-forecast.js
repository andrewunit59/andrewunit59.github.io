function toggleMenu() {
	document.getElementsByClassName("navigation")[0].classList.toggle("responsive");
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

  // const apiForecastURL = 'https://api.openweathermap.org/data/2.5/weather?id=5604473&appid=ec3bf9c2261a8ec6e27a75dfc3df01e2&units=imperial'; -->

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
                            if (forecast.dt_txt.includes(hourString)) {
                                    console.log(forecast.main.temp);

                                const tempElement = document.getElementById('temp$(counter)')
                                tempElement.innerHTML = forecast.main.temp_max + '&deg;';

                                // add day of week
                                let nextDate = new Date(forecast.dt_txt);

                                const dayElement = document.getElementById(`day${counter}`);
                                dayElement.innerHTML = daysOfWeek[nextDate.getDay()];

                                //add image
                                const imageElement = document.getElementById(`img${counter}`);

                                //Increment variables
                                counter += 1;
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