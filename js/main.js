import { getData } from "./modules/dataMiner.js";

(() => {
    const hamburger = document.getElementById('hamburger');
    const navUl = document.getElementById('nav-ul');
    
    hamburger.addEventListener('click', () => {
        navUl.classList.toggle('show');
    })


    let cardholders = document.querySelectorAll(".card"),
        name = document.querySelector(".name"),
        desc = document.querySelector(".description"),
        price = document.querySelector(".price"),
        faveData;

        function buildProduct(data) {
        
            faveData = data;
          
            cardholders.forEach(cardholder => {
                console.log(cardholder.id);
                cardholder.firstElementChild.src = `images/${data[cardholder.id].image}`;
                cardholder.addEventListener('click', showInfo);
            })
    
            
        }
    
        function showInfo() {
            name.textContent = faveData[this.id].name;
            desc.textContent = faveData[this.id].desc;
            price.textContent = faveData[this.id].type;
        }

        getData(`./data.json`, buildProduct);
    
})();