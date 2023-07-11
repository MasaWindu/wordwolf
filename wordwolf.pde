int pagenumber,n=3,m,mm,themaselecter,nn=3,timer,timeset,time,f=1;
boolean pageselect;
float select,thema2,thema3;
Table tbl;


void setup() {
  size(350, 600);
  frameRate(60);
  textSize(70);
  pagenumber = 1;
  buttontype.start = new button(100, 400, 175, 80);
  buttontype.people_low = new button(20, 200, 60, 80);
  buttontype.people_high = new button(250, 200, 60, 80);
  tbl = loadTable("theme.csv");
　textAlign(CENTER);
  
}

void draw(){
  if(pagenumber ==1){
    background(#f0e68c);
    textSize(50);
    fill(0);
    text("WORD WOLF",175,250);
    page.page1();
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 2;
      pageselect = false;
    }
    
  }else if(pagenumber ==2){
    background(#f0e68c);
    page.page2();
    textSize(50);
    fill(0);
    text("Select Playler",175,100);
    numberofplayer(n);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(6>n){
        n+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(n>3){
      n=n-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 3;
      m=2*n;
      select = random(1,n+1);
      thema2 = random(0,50);
      thema3 = random(0,2);
      pageselect = false;
    }
  }else if(pagenumber ==3){
    
    themaselecter = int(select);
    background(#f0e68c);
    page.page3();
    
    playerchange(m);
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      if(m>1){
        m--;
      }else {
        pagenumber = 4;
      }
      pageselect = false;
    }
    
  }else if(pagenumber ==4){
    background(#f0e68c);
    page.page4();
    textSize(50);
    fill(0);
    text("PLAY TIME",175,100);
    text("minutes",175,350);
    numberofplayer(nn);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(10>nn){
        nn+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(nn>3){
      nn=nn-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 5;
      nn= nn*60;
      timeset = second();
      pageselect = false;
    }
  }else if(pagenumber ==5){
    background(#f0e68c);
    page.page5();
    time = second();
    timer = nn-(time-timeset);
    numberofplayer(timer);
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
        pagenumber = 6;
      pageselect = false;
    }
    if(timer <=0 ){
      pagenumber = 6;
    }
    
  }else if(pagenumber ==6){
    background(#f0e68c);
    page.page6();
    textSize(50);
    fill(0);
    text("Select Playler",175,100);
    numberofplayer(f);
    if(buttontype.people_high.GetClicked()==true){
      buttontype.people_high.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_high.select == true){
      if(n>f){
        f+=1;
      }
      buttontype.people_high.select = false;
    }
    if(buttontype.people_low.GetClicked()==true){
      buttontype.people_low.select = true;
    }
    if(Mouse.clickTime==0 && buttontype.people_low.select == true){
      if(f>1){
      f=f-1;
      }
      buttontype.people_low.select = false;
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
      pagenumber = 7;
      pageselect = false;
    }
  }else if(pagenumber ==7){
    background(#f0e68c);
    page.page7();
    if(f==int(select)){
      fill(0);
      textSize(50);
      text( "CITIZEN WON !!!" ,175,250);
    }else{
      fill(0);
      textSize(50);
      text( "WOLF WON !!!" ,175,250);
    }
    if(buttontype.start.GetClicked()==true){
      pageselect = true;
    }
    if(Mouse.clickTime==0 && pageselect == true){
        pagenumber = 1;
        nn=3;
      pageselect = false;
    }
    
  }
  
}

void mousePressed() {
  Mouse.Pressing();
}

void mouseReleased() {
  Mouse.clickTime = 0;
}
