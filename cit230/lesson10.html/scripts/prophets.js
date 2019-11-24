const requestURL = 'https://byui-cit230.github.io/lessons/lesson-09/data/latter-day-prophets.json';

fetch(requestURL)
  .then(
    response => response.json(){
  
      .then(
        response => {
          console.log(response);
          return;
          const prophets = response.prophets;
          console.table(prophets);
      
         
      

    //console.log(prophets);
    prophets.forEach( {
      (prophets) => {
        const prophets = jsonObject['prophets'];

        let article = document.createElement('article');
        let h2 = document.createElement('h2');
        h2.textContent = prophets.name + ' ' + prophets.lastname;
        article.appendChild(h2);
        //Add a date of birth
        let birthdateDiv = document.createElement('div');
        let birthdateLabel = document.createElement('label');
        birthdateLabel.textContent = 'Date of Birth: ';
        let birthdateSpan = document.createElement('span');
        birthdateSpan.textContent = prophets.birthdate;
        birthdateDiv.appendChild(birthdateLabel);
        birthdateDiv.appendChild(birthdateSpan);
        article.appendChild(birthdateDiv);
        //Add a place of birth
        let birthplaceDiv = document.createElement('div');
        let birthplaceLabel = document.createElement('label');
        birthplaceLabel.textContent = 'Place of Birth: ';
        let birthplaceSpan = document.createElement('span');
        birthplaceSpan.textContent = prophets.birthplace;
        birthplaceDiv.appendChild(birthplaceLabel);
        birthplaceDiv.appendChild(birthplaceSpan);
        article.appendChild(birthplaceDiv);
        //Add Image
        let imageDiv = document.createElement('div');
        let image = document.createElement('img');
        image.setAttribute('src', prophets.imageurl);
        image.setAttribute('alt', prophet.name + " " + prophet.lastname + " " + prophet.order);
        imageDiv.appendChild(image);
        article.appendChild(imageDiv);
        
        // Add article to the DOM
        document.querySelector('section.prophets').appendChild(article);
      }
      
  );
  });
    });
  