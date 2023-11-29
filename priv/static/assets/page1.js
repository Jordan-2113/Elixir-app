

function sidebarSlide(){
    document.getElementById('sidebar').classList.toggle('side-bar-open')
}

var footerContent = ["Pigmentation are formed by melanin, a common condition on any ages and gender that makes some areas of the skin darker than others. According to our professional analysis, freckles, sunburn, melasma, age spots, nevus of Ota etc. can be easily removal by our recommanded aesthetic regimens.","Aging, sun damage, lack of collagen protein and elastic fibers, fat displacement and weakend muscle tone cause skin sagging, makin droopy skin and wrinkles, dynamic lines and static lines and static lines. Dynamic lines are known as expression lines, they develop in response to repeated muscle contractions like crow's feet and forehead lines. As the time goes by, dynamic lines will become statics lines, deepen and permanently wrinkles develop such as nasolabial folds and neck lines.","There are so many reasons causes dry skin like age, climate, health conditions, occupations etc. Lack of moisture and nutrients make skin rough, dull, itchy and appear enlarged pores, wrinkles and accelerate skin aging. Hence, keeping skin moisturized is as important as keeping the skin clean, which are the conditions to maintain flawless skin.","After the age of 25, collagen and elastin start to lose, the skin and contour are not as firm as young. As a results, a number of aging signs like wrinkles, laxity and double chin are appeared.","The metabolism tends to show with age, cells reduce the ability to regenerate as effectively; also the regulation of collagen and hydration are decreased, leading dull, rough, dry and acne skin. We provide a wide range of peeling regimes, which are suitable for dull skin, acne skin, dry skin and aging skin.","As aged, collagen and elastin are naturally decrease, fine lines are forming on the outer corners of eyes and neck. Over time, wrinkles. Hence, targeted zone-specific regimens are necessary to against the signs of aging around eyes and neck.","Do you still remove your unwanted hair by waxing, shaving, depilatory creams or tweezing? These are non-permanent methods, which become a grooming routine in lifetime. Laser Hair Removal is quick, safe, painless, and incredibly effect is a permanent solution helping you feel confidence at anytime.","Age, fat distribution, muscle mass and lifestyle causse people partial obesity. Besides on diet, some workout is necessary for improvement. Both manual body care and advanced equipment, are not only to eliminate fat, but also tighten and train up the muscle at the specific areas, resulting a ideal body figure.","Everyone feels some kind of pain from time to time, pain may cause of bad postures, injuries, excessive exercise etc. Pain can also last for months or years(chronic pain), our pain management can help to reduce or relieve pain.Let's experience how it's work and make you feel better.","Massage is a powerful natural therapy that is good for mental and physical health. Massage is not only self-pampering, but also consider as an integrative medicine. It is a tool for promoting blood circulation, stress reduction, calm anxiety, pain relief and target to certain health situations.","Beauty Injection uses noninvasive or minimally invasive techniques to improve the appearance of your skin and contour. Injection such as hyaluronic acid dermal filler and adding volume for a smoother, younger look."]

var sidebarTitle = ['BRIGHTENING & WHITENING','TIGHTENING & REJUVENTION','MOISTURIZING & NOURISHING','CONTOUR LIFTING','PEELING','SOLUTION FOR EYES AND NECK','SHAPE & FITNESS','HAIR REMOVAL','PAIN MANAGEMENT','RELEASE & RELAX','PERFECTION','PERFECTION'];

var sidebarbgdColor = ["#C1B5B5","#C8BFB0","#A79B9B","#B7A194","#8F8586","#B09288","#81847D","#767A57","#BDAE9B","#A18B80","#A29F96"]

var twocontentbgd = ["url('./assets/image/Flower01.jpg')","url('./assets/image/Flower02.jpg')","url('./assets/image/Flower03.jpg')","url('./assets/image/Rendering02.jpg')"];

var onecontentbgd = ["url('./assets/image/0-BeautyGirl02.jpg')","url('./assets/image/1-BeautyGirl07.jpg')","url('./assets/image/2-BeautyGirl05.jpg')","url('./assets/image/3-BeautyGirl04.jpg')","url('./assets/image/4-BeautyGirl06.jpg')","url('./assets/image/5-BeautyGirl08.jpg')","url('./assets/image/6-Body06.jpg')","url('./assets/image/7-Body05.jpg')","url('./assets/image/8-Body03.jpg')","url('./assets/image/9-Relax01.jpg')","url('./assets/image/10-BeautyGirl09.jpg')"]



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
    // document.getElementById('leftSlider').removeAttribute('style');
    // document.getElementById('rightSlider').removeAttribute('style');
});