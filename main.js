//show menu dans un petit ecran
const showMenu = (toggleId, navId) =>{
    const toggle = document.getElementById(toggleId),
          nav = document.getElementById(navId)
 
    toggle.addEventListener('click', () =>{
        // Add show-menu class to nav menu
        nav.classList.toggle('show-menu')
 
        // Add show-icon to show and hide the menu icon
        toggle.classList.toggle('show-icon')
    })
 }
 
 showMenu('MENU','header-left')
 
 //LES avis des clients
 const cmnt=["Mon expérience avec l'agence de voyage FlyAway a été exceptionnelle du début à la fin. Leur équipe était très professionnelle et compétente, offrant des conseils utiles et des recommandations personnalisées pour notre voyage. Ils ont ététrès réactifs à toutes nos demandes et ont pris en charge tous les détails, ce qui nous a permis de profiter pleinement de notre séjoursans soucis. Je recommande vivement cette agence à tous ceux qui recherchent un service de qualité et une expérience de voyage sans stress",
 "Mon dernier voyage avec FlyAway a été une véritable escapade de rêve. Leur connaissance approfondie des destinations et leur passion pour le voyage se sont reflétées dans chaque aspect de mon expérience. Je suis impatient de réserver mon prochain voyage avec eux !",
 "Une expérience incroyable avec FlyAway ! Leur équipe professionnelle a rendu notre voyage si facile et agréable. Des réservations sans tracas aux recommandations locales, ils étaient là à chaque étape. Recommandé à tous les voyageurs !"];
 const nom=["Nadir Djahed", "Derouiche hako", "megharbi zaki" ];
 const imgClient=["img/nadir.jpg.jpg","img/hako.jpg", "img/ZAKI.jpg"];
let currentIndex = 0;
function showComment()
{
    const imageElement = document.getElementById('gallery-images');
    imageElement.src = imgClient[currentIndex];
    const nomElement = document.getElementById('liste-nom');
    nomElement.textContent = nom[currentIndex];
    const cmntElement = document.getElementById('liste-cmnt');
    cmntElement.textContent = cmnt[currentIndex];
}
function prevComment()
{
    currentIndex--;
    if( currentIndex<0)
    {
        currentIndex= cmnt.length-1;
    }
    showComment();
}
function nextComment()
{
    currentIndex++;
        if(currentIndex>= cmnt.length)
        {
            currentIndex=0;
        }
    showComment();
}
showComment();

const wrapper = document.querySelector(".up");
const registrerLink = document.querySelector(".registrer-link");
const loginLink = document.querySelector(".login-link");
registrerLink.addEventListener('click',()=>{
    wrapper.classList.add('active');
});
loginLink.addEventListener('click',()=>{
   wrapper.classList.remove('active');
});

const btnPopup = document.querySelector('.account');
const iconClose = document.querySelector('.closee');
const home= document.getElementById('home');

btnPopup.addEventListener('click', () =>{
    wrapper.classList.add('active-popup');
    home.classList.add('hm');

});
iconClose.addEventListener('click', () =>{
    wrapper.classList.remove('active-popup');
    home.classList.remove('hm');
});
