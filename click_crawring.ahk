id := 0
CoordMode, Mouse, Screen
CLICKPOS_X1 := 100
CLICKPOS_X2 := 100
CLICKPOS_X3 := 100
CLICKPOS_X4 := 100
CLICKPOS_Y1 := 100
CLICKPOS_Y2 := 100
CLICKPOS_Y3 := 100
CLICKPOS_Y4 := 100
IniRead, CLICKPOS_X1, .\click_crawring.ini, CLICKPOS, X1
IniRead, CLICKPOS_X2, .\click_crawring.ini, CLICKPOS, X2
IniRead, CLICKPOS_X3, .\click_crawring.ini, CLICKPOS, X3
IniRead, CLICKPOS_X4, .\click_crawring.ini, CLICKPOS, X4
IniRead, CLICKPOS_Y1, .\click_crawring.ini, CLICKPOS, Y1
IniRead, CLICKPOS_Y2, .\click_crawring.ini, CLICKPOS, Y2
IniRead, CLICKPOS_Y3, .\click_crawring.ini, CLICKPOS, Y3
IniRead, CLICKPOS_Y4, .\click_crawring.ini, CLICKPOS, Y4

+^!D::
If(id==0){
    MouseClick,Left,%CLICKPOS_X1%,%CLICKPOS_Y1%, , 0
}else If(id==1){
    MouseClick,Left,%CLICKPOS_X2%,%CLICKPOS_Y2%, , 0
}else If(id==2){
    MouseClick,Left,%CLICKPOS_X3%,%CLICKPOS_Y3%, , 0
}else If(id==3){
    MouseClick,Left,%CLICKPOS_X4%,%CLICKPOS_Y4%, , 0
}
id+=1
if(id >3){ 
    id := 0
}

return