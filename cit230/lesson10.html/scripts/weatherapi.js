const apiURL = 'https://api.openweathermap.org/data/2.5/weather?id=5604473&appid=ec3bf9c2261a8ec6e27a75dfc3df01e2&units=imperial';

fetch(apiURL).catch
    .then(
        (response) => {
            response.json()
        }
        )
    .then(
        (currentWeather) => {
            //DEBUG;
            console.log(currentWeather.main.temp);

            let currentTemp = currentWeather.main.temp;
            let currentImageIcon = currentWeather.weather[0].icon;
            let currentImage = 'https://openweathermap.org/img/w/' + currentImageIcon + '.png';
            document.querySelector('#current-temp').textContent = currentTemp;
        }
    );