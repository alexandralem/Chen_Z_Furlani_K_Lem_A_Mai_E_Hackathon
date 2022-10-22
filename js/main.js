import { getData } from "./modules/dataMiner.js";

(() => {
    const hamburger = document.getElementById('hamburger');
    const navUl = document.getElementById('nav-ul');
    
    hamburger.addEventListener('click', () => {
        navUl.classList.toggle('show');
    })


    let pic = document.querySelector(".pic"),
        name = document.querySelector(".name"),
        desc = document.querySelector(".description"),
        price = document.querySelector(".price"),
        dots = document.querySelectorAll('.dot'),
        icons = document.querySelectorAll(".icon"),
        userChoice,
        things,
        faveData;

        function getId (event) {
            getData("./data.json", buildProduct);
            
            console.log(event.target.id); 
            userChoice = event.target.id;
        }

        function buildProduct(data) {
        
            faveData = data;
          
            pic.src = `images/${data[userChoice].image}`;
            
            showInfo();

           things = Object.keys(data);
           console.log(data);
            
        }
    
        function showInfo() {
            name.textContent = faveData[userChoice].name;
            desc.textContent = faveData[userChoice].description;
            price.textContent = faveData[userChoice].price;
        }

    
        
        dots.forEach(dot => {
            dot.addEventListener("click", getId)});


         icons.forEach(icon => {
                console.log(icon.id);
                

            })

        
       
        
      
})();