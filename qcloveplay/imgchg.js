<!--
//
// ■ 进行动态按钮图文件的切换动作
//

toggleKey = new Object();
toggleKey[0] = "_off";
toggleKey[1] = "_on";
toggleKey[2] = "_ovr";
toggleKey[3] = "_out";
toggleKey[4] = "_mdn";
toggleKey[5] = "_mup";

function imgChange(id,act){
 if(document.images){ document.images[id].src = eval("img." + id + toggleKey[act] + ".src");}
}

// 当这段程序代码应用到播放器使用时：(exobud.js)
// 以函式 imgChange('按钮识别名称',0) 进行的动作即使用 "off" 的图档；
// 以函式 imgChange('按钮识别名称',1) 进行的动作即使用 "on" 的图档。

if(document.images){
 img = new Object();

 
 img.vmute_off = new Image();
 img.vmute_off.src = "./img/mute_off.gif";
 img.vmute_on = new Image();
 img.vmute_on.src = "./img/mute_on.gif";
 
 
 img.pmode_off = new Image();
 img.pmode_off.src = "./img/rndmode_off.gif";
 img.pmode_on = new Image();
 img.pmode_on.src = "./img/rndmode_on.gif";

 
 img.rept_off = new Image();
 img.rept_off.src = "./img/rept_off.gif";
 img.rept_on = new Image();
 img.rept_on.src = "./img/rept_on.gif";

 
 img.playt_off = new Image();
 img.playt_off.src = "./img/play.gif";
 img.playt_on = new Image();
 img.playt_on.src = "./img/play_on.gif";
 img.playt_ovr = new Image();
 img.playt_ovr.src = "./img/play_ovr.gif";

 
 img.pauzt_off = new Image();
 img.pauzt_off.src = "./img/paus_off.gif";
 img.pauzt_on = new Image();
 img.pauzt_on.src = "./img/paus_on.gif";
 img.pauzt_ovr = new Image();
 img.pauzt_ovr.src = "./img/paus_ovr.gif";

 
 img.stopt_off = new Image();
 img.stopt_off.src = "./img/stop.gif";
 img.stopt_on = new Image();
 img.stopt_on.src = "./img/stop_on.gif";
 img.stopt_ovr = new Image();
 img.stopt_ovr.src = "./img/stop_ovr.gif";

 
 img.prevt_out = new Image();
 img.prevt_out.src = "./img/prev.gif";
 img.prevt_ovr = new Image();
 img.prevt_ovr.src = "./img/prev_ovr.gif";

 
 img.nextt_out = new Image();
 img.nextt_out.src = "./img/next.gif";
 img.nextt_ovr = new Image();
 img.nextt_ovr.src = "./img/next_ovr.gif";

 
 img.vup_out = new Image();
 img.vup_out.src = "./img/vup.gif";
 img.vup_ovr = new Image();
 img.vup_ovr.src = "./img/vup_ovr.gif";

 
 img.vdn_out = new Image();
 img.vdn_out.src = "./img/vdn.gif";
 img.vdn_ovr = new Image();
 img.vdn_ovr.src = "./img/vdn_ovr.gif";

 
 img.plist_out = new Image();
 img.plist_out.src = "./img/list.gif";
 img.plist_ovr = new Image();
 img.plist_ovr.src = "./img/list.gif";

 
 img.scope_off = new Image();
 img.scope_off.src = "./img/time_rtb1.gif";
 img.scope_on = new Image();
 img.scope_on.src = "./img/time_rtb2.gif";

}

function imgtog(tg,act){
 if(tg=="vmute")    { if(act=="2"){imgChange("vmute",1);} else {imgmute("vmute",0);} }
 if(tg=="pmode")    { if(act=="2"){imgChange("pmode",1);} else {imgrnd();} }
 if(tg=="rept")     { if(act=="2"){imgChange("rept",1);} else {imgrept();} }
 if(tg=="nextt")    { if(act=="2"){imgChange("nextt",2);} else {imgChange("nextt",3);} }
 if(tg=="prevt")    { if(act=="2"){imgChange("prevt",2);} else {imgChange("prevt",3);} }
 if(tg=="pauzt")    { if(act=="2"){imgpauz(2);} else {imgpauz();} }
 if(tg=="playt")    { if(act=="2"){imgplay(2);} else {imgplay();} }
 if(tg=="stopt")    { if(act=="2"){imgstop(2);} else {imgstop();} }
 if(tg=="plist")    { if(act=="2"){imgChange("plist",2);} else {imgChange("plist",3);} }
}

function imgmute(){
 var ps=Exobud.settings;
 if(ps.mute){imgChange("vmute",1);}
 else {imgChange("vmute",0);}
}

function imgrnd(){
 if(blnRndPlay){imgChange("pmode",1);}
 else {imgChange("pmode",0);}
}

function imgrept(){
 if(blnRept){imgChange("rept",1);}
 else {imgChange("rept",0);}
}

function imgpauz(f){
 var wmps=Exobud.playState;
 if(f==2){imgChange("pauzt",2);}
 else {
   if(wmps==2){imgChange("pauzt",1);}
   else {imgChange("pauzt",0);}
 }
}

function imgplay(f){
 var wmps=Exobud.playState;
 if(f==2){imgChange("playt",2);}
 else {
   if(wmps==3){imgChange("playt",1);}
   else {imgChange("playt",0);}
 }
}

function imgstop(f){
 var wmps=Exobud.playState;
 if(f==2){imgChange("stopt",2);}
 else {
   if(wmps==2 || wmps==3){imgChange("stopt",0);}
   else {imgChange("stopt",1);}
 }
}

//-->