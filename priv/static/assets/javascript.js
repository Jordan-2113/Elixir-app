const one = document.getElementById('one');
const two = document.getElementById('two');
const three = document.getElementById('three');
const four = document.getElementById('four');
const five = document.getElementById('five');
const six = document.getElementById('six');

console.log("HIHI");
console.log(window);
console.log(one);
window.addEventListener('scroll', ()=>{
  let onetop = one.getBoundingClientRect().top;
  let twotop = two.getBoundingClientRect().top;
  let threetop = three.getBoundingClientRect().top;
  let fourtop = four.getBoundingClientRect().top;
  let fivetop = five.getBoundingClientRect().top;
  let sixtop = six.getBoundingClientRect().top;
  if (onetop < 500){
      document.getElementById('main').classList.add('main-one');
  } else {
      document.getElementById('main').classList.remove('main-one');
  }
  if (onetop < 0) {
      document.getElementById('mainheader').style.display = 'none';
      document.getElementById('summaryHolder').style.opacity = '1';
      document.getElementById('sixBgd').classList.add('for-six-bgd');
  } else {
      document.getElementById('mainheader').removeAttribute('style');
      document.getElementById('summaryHolder').style.opacity = '0';
      document.getElementById('sixBgd').classList.remove('for-six-bgd');
  }
  if (document.getElementById('sectionsevenTop').getBoundingClientRect().top > 0) {
    if (document.getElementById('sectionsevenTop').getBoundingClientRect().top < 760){
      document.getElementById('sixList').style.position = 'fixed';
      document.getElementById('sixList').style.top = '130px';
      document.getElementById('sevenList').removeAttribute('style');
    } else {
      document.getElementById('sixList').removeAttribute('style');
      document.getElementById('sevenList').style.position = 'absolute';
      document.getElementById('sevenList').style.top = '-759px';
    }
  } else {
    document.getElementById('sixList').removeAttribute('style');
  }



  if(twotop < 300 && threetop > 300){
    document.getElementById('twocontentText').style.display = "block";
  } else {
    document.getElementById('twocontentText').removeAttribute('style');
  }
  if(threetop < 300 && fourtop > 300){
    document.getElementById('threecontentText').style.display = "block";
  } else {
    document.getElementById('threecontentText').removeAttribute('style');
  }
  if(fourtop < 300 && fivetop > 300){
    document.getElementById('fourcontentText').style.display = "block";
  } else {
    document.getElementById('fourcontentText').removeAttribute('style');
  }
  if(fivetop < 300 && sixtop > 300){
    document.getElementById('fivecontentText').style.display = "block";
  } else {
    document.getElementById('fivecontentText').removeAttribute('style');
  }


  // if(fivetop < 350){
  //   document.getElementById('fsLine').style.opacity = '1';
  // } else {
  //   document.getElementById('fsLine').style.opacity = '0';
  // }
  // if(fivetop < 300){
  //   document.getElementById('fsCircle1').style.opacity = '1';
  //   document.getElementById('fsLine1').style.opacity = '1';
  // } else {
  //   document.getElementById('fsCircle1').style.opacity = '0';
  //   document.getElementById('fsLine1').style.opacity = '0';
  // }
  // if (fivetop < 260){
  //   document.getElementById('fsCircle1').style.transform = 'translate(403px, 224px)';
  //   document.getElementById('fsLine1').style.transform = 'translate(460.5px, 259px)';
  // } else {
  //   document.getElementById('fsCircle1').style.transform = 'translate(403px, 364px)';
  //   document.getElementById('fsLine1').style.transform = 'translate(460.5px, 399px)';
  // }
  // if (fivetop < 220){
  //   document.getElementById('fsCircle3').style.opacity = '1';
  //   document.getElementById('fsLine3').style.opacity = '1';
  // } else {
  //   document.getElementById('fsCircle3').style.opacity = '0';
  //   document.getElementById('fsLine3').style.opacity = '0';
  // }
  // if(fivetop < 180){
  //   document.getElementById('fsCircle3').style.transform = 'translate(403px, 504px)';
  //   document.getElementById('fsLine3').style.transform = 'translate(460.5px, 539px)';
  // } else {
  //   document.getElementById('fsCircle3').style.transform = 'translate(403px, 364px)';
  //   document.getElementById('fsLine3').style.transform = 'translate(460.5px, 399px)';
  // }
  // if (fivetop < 140){
  //   document.getElementById('fsCircle2').style.opacity = '1';
  //   document.getElementById('fsLine2').style.opacity = '1';
  // } else {
  //   document.getElementById('fsCircle2').style.opacity = '0';
  //   document.getElementById('fsLine2').style.opacity = '0';
  // }
  // if (fivetop < 100){
  //   document.getElementById('fsText').style.opacity = '1';
  // } else {
  //   document.getElementById('fsText').style.opacity = '0';
  // }
});

var myVar = setInterval(() => {
    const date = new Date()
    var month = date.getMonth()
    var day = date.getDate()
    var hour = date.getHours()
    var minute = date.getMinutes()
    var enmonth = '';
    switch (month) {
      case 0:
        enmonth = 'JANUARY'
        break
      case 1:
        enmonth = 'FEBRUARY'
        break
      case 2:
        enmonth = 'MARCH'
        break
      case 3:
        enmonth = 'APRIL'
        break
      case 4:
        enmonth = 'MAY'
        break
      case 5:
        enmonth = 'JUNE'
        break
      case 6:
        enmonth = 'JULY'
        break
      case 7:
        enmonth = 'AUGUST'
        break
      case 8:
        enmonth = 'SEPTEMBER'
        break
      case 9:
        enmonth = 'OCTOBER'
        break
      case 10:
        enmonth = 'NOVEMBER'
        break
      case 11:
        enmonth = 'DECEMBER'
        break
      default:
      // code block
    }
    document.getElementById('jsdate').innerHTML = day + ' ' + enmonth;
    document.getElementById('jstime').innerHTML = hour + ': ' + minute;
  }, 1000);

const info = document.getElementsByClassName('info')

function footAbout () {
  document.getElementById('summaryHolder').classList.toggle('page-enter-z')
}

for (var i = 0; i < info.length; i++) {
  info[i].addEventListener('click', footAbout);
}

function iphoneOurservice(){
  document.getElementById('ourserviceIphone').classList.toggle('our-service-iphone-height');
}

for(var i=0;i<7;i++){
  console.log(i);
  console.log(document.getElementsByClassName('header-iphone'));
  document.getElementsByClassName('header-iphone')[i].addEventListener('click', iphoneToggle)
}

function iphoneToggle() {
  document.getElementById('iphoneMenu').classList.toggle('top-0')
}

function osiphoneOurservice(){
  document.getElementById('osourserviceIphone').classList.toggle('our-service-iphone-height');
}

function osiphoneToggle() {
  document.getElementById('osiphoneMenu').classList.toggle('top-0')
}


/*&ajdfhlakjdhflkajdhflkjahdflkjahf*/



function sidebarSlide(){
  document.getElementById('sidebar').classList.toggle('side-bar-open')
}

var footerContent = [
  "Pigmentation are formed by melanin, a common condition on any ages and gender that makes some areas of the skin darker than others. According to our professional analysis, freckles, sunburn, melasma, age spots, nevus of Ota etc. can be easily removal by our recommanded aesthetic regimens.",
  "Aging, sun damage, lack of collagen protein and elastic fibers, fat displacement and weakend muscle tone cause skin sagging, makin droopy skin and wrinkles, dynamic lines and static lines and static lines. Dynamic lines are known as expression lines, they develop in response to repeated muscle contractions like crow's feet and forehead lines. As the time goes by, dynamic lines will become statics lines, deepen and permanently wrinkles develop such as nasolabial folds and neck lines.",
  "There are so many reasons causes dry skin like age, climate, health conditions, occupations etc. Lack of moisture and nutrients make skin rough, dull, itchy and appear enlarged pores, wrinkles and accelerate skin aging. Hence, keeping skin moisturized is as important as keeping the skin clean, which are the conditions to maintain flawless skin.",
  "After the age of 25, collagen and elastin start to lose, the skin and contour are not as firm as young. As a results, a number of aging signs like wrinkles, laxity and double chin are appeared.",
  "The metabolism tends to show with age, cells reduce the ability to regenerate as effectively; also the regulation of collagen and hydration are decreased, leading dull, rough, dry and acne skin. We provide a wide range of peeling regimes, which are suitable for dull skin, acne skin, dry skin and aging skin.","As aged, collagen and elastin are naturally decrease, fine lines are forming on the outer corners of eyes and neck. Over time, wrinkles. Hence, targeted zone-specific regimens are necessary to against the signs of aging around eyes and neck.",
  "Do you still remove your unwanted hair by waxing, shaving, depilatory creams or tweezing? These are non-permanent methods, which become a grooming routine in lifetime. Laser Hair Removal is quick, safe, painless, and incredibly effect is a permanent solution helping you feel confidence at anytime.",
  "Age, fat distribution, muscle mass and lifestyle causse people partial obesity. Besides on diet, some workout is necessary for improvement. Both manual body care and advanced equipment, are not only to eliminate fat, but also tighten and train up the muscle at the specific areas, resulting a ideal body figure.",
  "Massage is a powerful natural therapy that is good for mental and physical health. Massage is not only self-pampering, but also consider as an integrative medicine. It is a tool for promoting blood circulation, stress reduction, calm anxiety, pain relief and target to certain health situations.",
  "Everyone feels some kind of pain from time to time, pain may cause of bad postures, injuries, excessive exercise etc. Pain can also last for months or years(chronic pain), our pain management can help to reduce or relieve pain.Let's experience how it's work and make you feel better.",
  "Beauty Injection uses noninvasive or minimally invasive techniques to improve the appearance of your skin and contour. Injection such as hyaluronic acid dermal filler and adding volume for a smoother, younger look."]

var sidebarTitle = ['BRIGHTENING & WHITENING','TIGHTENING & REJUVENTION','MOISTURIZING & NOURISHING','CONTOUR LIFTING','PEELING','SOLUTION FOR EYES AND NECK','SHAPE & FITNESS','HAIR REMOVAL','RELEASE & RELAX','PAIN MANAGEMENT','PERFECTION','PERFECTION'];

var sidebarbgdColor = ["#C1B5B5","#C8BFB0","#A79B9B","#B7A194","#8F8586","#B09288","#81847D","#767A57","#BDAE9B","#A18B80","#A29F96"]

var twocontentbgd = ["url('./assets/image/Flower01.jpg')","url('./assets/image/Flower02.jpg')","url('./assets/image/Flower03.jpg')","url('./assets/image/Rendering02.jpg')"];

var onecontentbgd = ["url('./assets/image/0-BeautyGirl02.jpg')","url('./assets/image/1-BeautyGirl07.jpg')","url('./assets/image/2-BeautyGirl05.jpg')","url('./assets/image/3-BeautyGirl04.jpg')","url('./assets/image/4-BeautyGirl06.jpg')","url('./assets/image/5-BeautyGirl08.jpg')","url('./assets/image/7-Body05.jpg')","url('./assets/image/6-Body06.jpg')","url('./assets/image/8-Body03.jpg')","url('./assets/image/9-Relax01.jpg')","url('./assets/image/10-BeautyGirl09.jpg')"]
var sbcItem = ["SHRINK PORES","ENHANCE SKIN BRIGHTNESS","WHITEN & REJUVENATE SKIN","REDUCE BLACKHEADS","IMPROVE ACNE","LIGHTEN DARK SPOTS","LIGHTEN ACNE SCARS"]
const linkcontentList = document.getElementsByClassName('linkcontentList');

function contentChange(a){
  for(var i = 0;i < 11;i ++){
      linkcontentList[i].removeAttribute('style');
  }
  linkcontentList[a].style.color = 'black';
  document.getElementById('sidebarHeader').innerHTML = sidebarTitle[a];
  document.getElementById('footer').innerHTML = footerContent[a];
  document.getElementById('sidebar').style.backgroundColor = sidebarbgdColor[a];
  document.getElementById('onecontent').style.backgroundImage = onecontentbgd[a];
  if (a < 6) {
      document.getElementById('twocontent').style.backgroundImage = twocontentbgd[0];
  } else if (a < 8){
      document.getElementById('twocontent').style.backgroundImage = twocontentbgd[1];
  } else if (a < 10) {
      document.getElementById('twocontent').style.backgroundImage = twocontentbgd[2];
  } else {
      document.getElementById('twocontent').style.backgroundImage = twocontentbgd[3];
  }

  if (a !== 10) {
      document.getElementById('slider').style.display = 'none';
  } else {
      document.getElementById('slider').style.display = 'flex';
  }
  if (a == 0) {
    for(var i=0;i<7;i++){
      document.getElementsByClassName('sbc-item')[i].innerHTML = sbcItem[i];
    }
    document.getElementById('sbcfirstTitle').innerHTML = "SALICYLIC ACID PEELING BEGIMEN";
    document.getElementById('sbcfirstText').innerHTML = "Salicylic acid is an organic acid which is extracted from plants. Its fat-soluble nature can penetrate deeply into the stratum corneum and pores of the skin. It is good for exfoliating aging skin, purifying pores, promoting metabolism, and balancing oil secretion.";
  } else {
    for(var i=0;i<7;i++){
      document.getElementsByClassName('sbc-item')[i].innerHTML = "LOREM IPSUM";
    }
    document.getElementById('sbcfirstTitle').innerHTML = "SKIN TREATMENT NAME NO.1";
    document.getElementById('sbcfirstText').innerHTML = "Lorem Ipsum dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
  }
};

document.getElementById('rightSlider').addEventListener('click',() => {
  footerContent[10] = "Certification<p>Identify Authentic Botox®, Juvederm®, Sculptra®,Derma Veil®, Profhilo®, Minus Meso Solution, Teosyal®, Radiesse® are applied.</p>Doctor Consultation<p>All of our beauty injections are overseen by doctor, the aesthetic regimens used are scientifically proved, and the sophisticated equipment acknowledge by the Food and Drugs Administration (FDA) and CE certification.";
  twocontentbgd[3] = "url('./assets/image/Doctor01.jpg')";
  contentChange(10);
  document.getElementById('leftSlider').style.pointerEvents = 'all';
  document.getElementById('rightSlider').removeAttribute('style');
});

document.getElementById('leftSlider').addEventListener('click',() => {
  footerContent[10] = "Beauty Injection uses noninvasive or minimally invasive techniques to improve the appearance of your skin and contour. Injection such as hyaluronic acid dermal filler and adding volume for a smoother, younger look.";
  twocontentbgd[3] = "url('./assets/image/Rendering02.jpg')";
  contentChange(10);
  document.getElementById('leftSlider').removeAttribute('style');
  document.getElementById('rightSlider').style.pointerEvents = 'all';
});

function osSectionTop(a) {
  document.getElementById('osSection').classList.toggle('top-0');
  contentChange(a);
}

function osSectionToponly() {
  document.getElementById('osSection').classList.toggle('top-0');
}

function sidebarOpen() {
  document.getElementById('sidebar').classList.toggle('top-0');
  document.getElementById('osSection').classList.toggle('top-0');
}

var width = window.innerWidth;
if(width <= 800) {
  document.getElementById('sidebarClose').removeEventListener('click', sidebarSlide);
  document.getElementById('sidebarClose').addEventListener('click', sidebarOpen);
} else {
  document.getElementById('sidebarClose').removeEventListener('click', sidebarOpen);
  document.getElementById('sidebarClose').addEventListener('click', sidebarSlide);
}

