//public class button{
//  int x,y;
//  int sizeX,sizeY,size;
//  String text = "";
  
//  private boolean isSelected,select;
  
//  button(int _x, int _y, int _sizeX, int _sizeY){
//    x = _x;
//    y = _y;
//    sizeX = _sizeX;
//    sizeY = _sizeY;
//  }
  
//  public void Text(String _text,int _size){
//    text = _text;
//    size = _size;
//  }
  
//  public boolean GetClicked(){
//    return isSelected;
//  }
  
//  public void Update(){
    
//    isSelected = false;
    
//    if (mouseX > x && mouseX < x + sizeX && mouseY > y && mouseY < y + sizeY) {
      
//      if (Mouse.clickTime == 1){
//        isSelected = true;
//      }
//    }
//  }
  
//  public void Draw(){
//    if (isSelected){
//      fill(35,43,61);
//    }else{
//      fill(255,144,0);
//    }  
//    noStroke();
//    rect(x, y, sizeX, sizeY);
//     fill(255);
//     textSize(size);
//    text(text,x+(sizeX/2),y+60);
//  }
//}
