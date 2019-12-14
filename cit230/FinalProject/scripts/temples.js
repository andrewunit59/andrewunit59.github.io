fetch('json/temples.json')
    .then(
        (response) => response.json() 
    )
    .then(
            (res) => {
                let templeDiv = "";
                for (let temple of res.temples) {
                    
                    for (let i = 0; i < temple.length; i++ ) {
                        let card = document.createElement('section');
                        let h2 = document.createElement('h2');

                        h2.textContent = temples[i].TempleName;
                        card.appendChild(h2);

                        document.querySelector('div#my-cards').appendChild(card);
                    }
                    
                    
                }
                document.getElementById('my-cards').innerHTML = templeDiv;
            }
        );