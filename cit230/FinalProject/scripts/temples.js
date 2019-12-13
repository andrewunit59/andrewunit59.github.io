fetch('json/temples.json')
    .then(
        (response) => response.json()
    )
    .then(
        (temples).forEach(
            (temple) => {
                console.log(temple.TempleName);
            }
        )
    )