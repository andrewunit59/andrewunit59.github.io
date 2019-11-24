const requestURL = 'https://byui-cit230.github.io/weather/data/towndata.json';

fetch(requestURL)
  .then(function (response) {
    return response.json();
  })
  .then(function (jsonObject) {
    console.table(jsonObject);  // temporary checking for valid response and data parsing
    for (let i = 0; i < towndata.length; i++ ) {
        const towndata = jsonObject['towndata'];

        let card = document.createElement('section');
        let h2 = document.createElement('h2');

        h2.textContent = towndata[i].name + ' ' + towndata[i].lastname;

        card.appendChild(h2);

        document.querySelector('div.cards').appendChild(card);
    }
  });

