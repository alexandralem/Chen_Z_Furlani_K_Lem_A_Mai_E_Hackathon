import getData from "./modules/dataMiner.js";

(() => {
    // Global vars    
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
        card1 = document.querySelector(".card1"),
        card2 = document.querySelector(".card2"),
        card3 = document.querySelector(".card3"),
        stat1 = document.querySelector(".stat1"),
        stat2 = document.querySelector(".stat2"),
        userChoice;


    function getId(event) {
        // Get data from json file
        getData("./data.json", showImagesInfo);

        console.log(event.target.id);
        userChoice = event.target.id;
    }

    function showImagesInfo(data) {
        // Convert JSON data into Object    
        const dataInfo = JSON.parse(JSON.stringify(data));
        // Change image
        pic.src = `images/${data[userChoice].image}`;
        // Change text info
        name.textContent = dataInfo[userChoice].name;
        desc.textContent = dataInfo[userChoice].description;
        price.textContent = dataInfo[userChoice].price;
    }

    function showButtonsAndBannerInfo(data) {
        // Convert JSON data into Object    
        const dataInfo = JSON.parse(JSON.stringify(data));

        // Change text info on buttons
        card1.textContent = dataInfo["fa-users"]["desc"];
        card2.textContent = dataInfo["fa-gear"]["desc"];
        card3.textContent = dataInfo["fa-eye"]["desc"];
        // Change text info on banner
        stat1.textContent = dataInfo["stats"]["stat1"];
        stat2.textContent = dataInfo["stats"]["stat2"];
    }

    dots.forEach(dot => {
        dot.addEventListener("click", getId)
    });


    icons.forEach(icon => {
        console.log(icon.id);
    })

    // Get data from json file
    getData("./data.json", showButtonsAndBannerInfo);


})();