id := 0
CoordMode, Mouse, Screen

+^D::
If(id==0){
    Click,Left,100,100
}else If(id==1){
    Click,Left,100,500
}else If(id==2){
    Click,Left,500,100
}else If(id==3){
    Click,Left,500,500
}
id+=1
if(id >3){ 
    id := 0
}
MsgBox, % id
return