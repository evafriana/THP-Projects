// Fonctionnalité 1

// const footer = document.querySelector("footer");
// footer.addEventListener("click", (event) => {
//   console.log("clique")
// });


// Fonctionnalité 1b

const footer = document.querySelector("footer");
let x = 1
footer.addEventListener("click", (event) => {
  console.log(`clic numéro ${x}`)
  x++
});


// Fonctionnalité 2

const hamburgerMenu = document.querySelector(".navbar-toggler");
const navbarHeader = document.getElementById("navbarHeader");
hamburgerMenu.addEventListener("click", (event) => {
  navbarHeader.classList.toggle("collapse");
});


// Fonctionnalité 3

const editFirstCard = document.querySelectorAll('.btn-group')[0].children[1];
const textFirstCard = document.getElementsByClassName("card-body")[0];

editFirstCard.addEventListener("click", (event) => {
  textFirstCard.style.color ="red"
});


// Fonctionnalité 4

const editSecondCard = document.querySelectorAll(".btn-group")[1].children[1];
const textSecondCard = document.getElementsByClassName("card-body")[1];

editSecondCard.addEventListener("click", (event) => {
  if (textSecondCard.style.color === "green") {
    textSecondCard.style.color = "";
  }
  else {
    textSecondCard.style.color = "green";
  }
});


// Fonctionnalité 5

const navbar = document.querySelector("header");

navbar.addEventListener("dblclick", (event) => {
  if (document.querySelector("link").disabled === false) {
    document.querySelector("link").disabled = true ;
  }
  else {
    document.querySelector("link").disabled = false ;
  }
});


// Fonctionnalité 6

const view = document.querySelectorAll(".btn-success");
const img = document.querySelectorAll(".card-img-top");
const text = document.querySelectorAll(".card-text");

for (let i = 0; i < view.length; i++) {
  view[i].addEventListener("mouseover", (event) => {
    if (text[i].style.display !== "none") {
      img[i].style.width = "20%"
      text[i].style.display = "none"
    } else {
      img[i].style.width = "100%"
      text[i].style.display = ""
    }
  })
};


// Fonctionnalité 7

const card = document.querySelector(".album > .container > .row");
const btnGrey = document.querySelector(".btn.btn-secondary.my-2");

btnGrey.addEventListener("click", (event) => {
  card.insertBefore(card.lastElementChild, card.firstElementChild);
})


// Fonctionnalité 8

const btnblue = document.querySelector(".btn.btn-primary.my-2");

btnblue.addEventListener("click", (event) => {
  event.preventDefault();
  card.insertBefore(card.firstElementChild, card.lastElementChild);
});


// Fonctionnalité 9

const logo = document.querySelector(".navbar-brand");

logo.addEventListener("keypress", (event) => {
 if (event.key === "a")  {
    document.body.className = "";
    document.body.classList.add("col-4");
  }
 else if (event.key === "y") {
    document.body.className = "";
    document.body.classList.add("col-4", "offset-4");
  }
 else if (event.key === "p") {
    document.body.className = "";
    document.body.classList.add("col-4", "offset-8");
  }
 else if (event.key === "b") {
    document.body.className = "";
 }

});


