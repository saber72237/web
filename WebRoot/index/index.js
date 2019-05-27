window.onload=function (){
    var bg = document.getElementById('bg');
    if(screen.width>2000){
        bg.src = '../images/index_bg_xl.jpg';
    }
    else if(screen.width>1000){
        bg.src = '../images/index_bg_l.jpg';
    }
    else{
        bg.src = '../images/index_bg_s.jpg';
    }
}
