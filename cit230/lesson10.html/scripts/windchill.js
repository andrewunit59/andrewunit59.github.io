//const apiURL = 'https://api.openweathermap.org/data/2.5/weather?id=5604473&appid=ec3bf9c2261a8ec6e27a75dfc3df01e2&units=imperial';

fetch(apiURL).catch
    .then(
        (response) => {
            response.json()
        }
        )
    .then(
        (currentWeather) => {
            //DEBUG;
            console.log(currentWeather);

let currentTemp = currentWeather.main.temp;
let windSpeed = currentWeather.wind.speed;
let windChill;

if  (currentTemp < 50 && windSpeed > 3) {
 windChill =35.74 + 0.6215 * currentTemp - 35.75 * Math.pow(windSpeed, 0.16) 
    + 0.4275 * currentTemp * Math.pow(windSpeed, 0.16);
}

document.getElementById("currentTemp").innerHTML = currentTemp + '&deg;';
document.getElementById("windSpeed").innerHTML = windSpeed + ' mph';
document.getElementById("windChill").innerHTML = Math.round(windChill) + '&deg;'; 