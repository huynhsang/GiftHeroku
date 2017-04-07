<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
	<meta charset="UTF-8">
		<style>
			@import url('http://fonts.googleapis.com/css?family=Lato');



div, ul , li{
    display: block; position: relative;
    margin: 0; padding: 0;
}

span{ font-family: 'Lato', sans-serif; }

.container{
  position:absolute;
  margin: auto;
  width: 320px;
  height: 320px;
  top: 0; bottom: 0; left: 0; right: 0;
}

.container .box{
  margin-top: 100px;
  background: #6B6199;
  width: 240px; height: 240px;
  border-radius: 100%;
  overflow: visible;
}

.container .box-top {
  position: absolute;
  margin: 0 auto;
  width: 130px; height: 50px;
  z-index: 9;
  top: 80px; bottom: 0; left: 0; right:0;
  -webkit-transition: top 0.75s;
}

.container .box:hover .box-top {
  top: -25px;
  -webkit-animation: topdisplay 3s;
}

.container .box-top ul{
  list-style:none;
  height: 25px;
  width: 100%;
}

.container .box-top ul li{
  background: transparent;
  border: 5px solid #2E16A1;
  border-radius: 100%;
  position: absolute;
}

.container .box-top ul li.first, li.last{
  left: 20%;
  bottom: -10px;
  height: 15px;
  width: 15px;
}

.container .box-top ul li.middle{
  margin: 0 auto;
  left:0; right: 0;
  height: 25px; width: 25px;
}

.container .box-top ul li.last{
  left: 60%;
}

.container .box-top .lid{
  margin: 0 auto;
  background: #3C81FF;
  width: 100%; height: 25px;
}

.container .box-top .lid span{
  position: absolute;
  margin: 0 auto;
  left: 0; right: 0;
  background: #3B1BCC;
  width: 25%; height: 25px;
}

.container .box-bottom {
  position: absolute;
  margin: 0 auto;
  width: 130px; height: 320px;
  top: auto; bottom: 0; left: 0; right:0;
}

.container .box-bottom .base{
  position: absolute;
  background: #3777EB;
  border-radius: 0 0 5% 5%;
  margin: 0 auto;
  width: 120px; height: 80px;
  bottom: 30px; left: 0; right:0;
  z-index: 4;
}

.container .box-bottom .base span{
  position: absolute;
  margin: 0 auto;
  left: 0; right: 0;
  background: #2E16A1;
  width: 25%; height: 100%;
}

.box-bottom .cat{
  position: absolute;
  margin: 0 auto;
  left: 0; right: 0;
  bottom: 50px;
  background: #222;
  width: 50%; height: 30%;
  display:none;
  -webkit-animation: catdisplay 3s;
  z-index: 1;
   -webkit-transition: bottom 1s;
}

.cat:before{
   width: 0;
    height: 0;
    border-left: 0px solid transparent;
    border-right: 15px solid transparent;
    border-bottom: 15px solid #222;
    top: -15px;
    left: 0;
    position: absolute;
    content: "";
}

.cat:after{
   width: 0;
    height: 0;
    border-right: 0px solid transparent;
    border-left: 15px solid transparent;
    border-bottom: 15px solid #222;
    top: -15px;
    right: 0;
    position: absolute;
    content: "";
}

.cat .face{
  position: relative;
  height: 40px;
}

.cat .face .eye{
  position: absolute;
  height: 20px; width: 20px;
  background: #FFF;
  border-radius: 100%;
  top: 15px;
}

.cat .face .eye.left{ left: 6px; }
.cat .face .eye.right{  right: 6px; }

.cat .face .nose{
  position: absolute;
  margin: auto;
  left:0; right: 0;
  height: 3px; width: 3px;
  background: #DDD;
  border-radius: 100%;
  bottom: 6px;
}

.cat .face .mouth{
  position: absolute;
  margin: auto;
  left:0; right: 0;
  height: 10px; width: 10px;
  border-bottom: 2px solid #FFF;
  border-radius: 100%;
  bottom: 0px;
}

.cat .body{
  position: relative;
  height: 55px;
  overflow: visible;
}

.cat .body .hand{
  position: absolute;
  top: 10px;
  height: 15px; width: 15px;
  border-radius: 0 0 45% 45%;
  background: #333;
  z-index: 2;
}

.cat .body .hand.left{ left: 6px;}
.cat .body .hand.right{ right: 6px;}

.cat .body .rotulo{
  position: absolute;
  margin: 0 auto;
  left: -22px; right: 0;
  bottom: 10px;
  height: 34px; width: 110px;
  background: #EDBA73;
  box-shadow: 0 2px 3px rgba(0,0,0,0.25);
  text-align: center;
}

.cat .body .rotulo span{
  color: #333;
  text-transform: uppercase;
  line-height: 2.5em;
  font-size: 0.85em;
  font-weight: 600;
}

/* SURPRISE!!!! :) */

.container .box:hover .box-top{
  display:block;
}

.container .box:hover .box-bottom .cat{
  display:block;
  bottom: 110px;
  -webkit-transition: bottom 1s;
}

@-webkit-keyframes catdisplay {
  from {bottom: 50px;}
  to {bottom: 110px;}
}

@-webkit-keyframes topdisplay {
  from {top: 40px;}
  to {top: -25px;}
}

.enjoy-css {
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  cursor: pointer;
  border: none;
  font: normal 72px/normal "Passero One", Helvetica, sans-serif;
  color: rgba(242,75,75,1);
  text-align: center;
  -o-text-overflow: clip;
  text-overflow: clip;
  background: rgb(255,255,255);
  text-shadow: 0 1px 0 rgb(204,204,204) , 0 2px 0 rgb(201,201,201) , 0 3px 0 rgb(187,187,187) , 0 4px 0 rgb(185,185,185) , 0 5px 0 rgb(170,170,170) , 0 6px 1px rgba(0,0,0,0.0980392) , 0 0 5px rgba(0,0,0,0.0980392) , 0 1px 3px rgba(0,0,0,0.298039) , 0 3px 5px rgba(0,0,0,0.2) , 0 5px 10px rgba(0,0,0,0.247059) , 0 10px 10px rgba(0,0,0,0.2) , 0 20px 20px rgba(0,0,0,0.14902) ;
  -webkit-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  -o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
  transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
}

.enjoy-css:hover {
  color: rgba(169,214,169,1);
  background: none;
  text-shadow: 0 1px 0 rgba(255,255,255,1) , 0 2px 0 rgba(255,255,255,1) , 0 3px 0 rgba(255,255,255,1) , 0 4px 0 rgba(255,255,255,1) , 0 5px 0 rgba(255,255,255,1) , 0 6px 1px rgba(0,0,0,0.0980392) , 0 0 5px rgba(0,0,0,0.0980392) , 0 1px 3px rgba(0,0,0,0.298039) , 0 3px 5px rgba(0,0,0,0.2) , 0 -5px 10px rgba(0,0,0,0.247059) , 0 -7px 10px rgba(0,0,0,0.2) , 0 -15px 20px rgba(0,0,0,0.14902) ;
  -webkit-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  -moz-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  -o-transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
  transition: all 200ms cubic-bezier(0.42, 0, 0.58, 1) 10ms;
}

.triangle-border {
  position:absolute;
  display: none;
  padding:15px;
  margin:0 0 3em;
  border:5px solid #780000;
  color:#333;
  background:#fff;
  /* css3 */
  -webkit-border-radius:10px;
  -moz-border-radius:10px;
  border-radius:10px;
  
  width: 21%;
  font-size: 13px;
}

.container .box:hover .triangle-border{
	display: block;
	-webkit-animation: topdisplay 3s;
	-webkit-transition: bottom 1s;
}

.triangle-border:before {
  content:"";
  position:absolute;
  bottom:-20px; /* value = - border-top-width - border-bottom-width */
  left:40px; /* controls horizontal position */
  border-width:20px 20px 0;
  border-style:solid;
  border-color:#780000 transparent;
  /* reduce the damage in FF3.0 */
  display:block;
  width:0;
}

.triangle-border:after {
  content:"";
  position:absolute;
  bottom:-13px; /* value = - border-top-width - border-bottom-width */
  left:47px; /* value = (:before left) + (:before border-left) - (:after border-left) */
  border-width:13px 13px 0;
  border-style:solid;
  border-color:#fff transparent;
  /* reduce the damage in FF3.0 */
  display:block;
  width:0;
}
		</style>
		
	</head>
	<body>
		
		<link async href="http://fonts.googleapis.com/css?family=Passero%20One" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
		  
<div class="container">
  <div class="box">
	<div class="triangle-border"> click on message! </div> 
    <div class="message"></div>
   
    <div class="box-top">
      <ul>
        <li class="first"></li>
        <li class="middle"></li>
        <li class="last"></li>
      </ul>
      <div class="lid"><span></span></div>
    </div>
    
    <div class="box-bottom">
      <div class="base"><span></span></div>
      <div class="cat">
        <div class="face">
          <span class="eye left"></span>
          <span class="eye right"></span>
          <span class="nose"></span>
          <span class="mouth"></span>
        </div>
        
        <div class="body">
          <span class="hand left"></span>
          <span class="hand right"></span>
          <div class="rotulo"><a href="<c:url value="/flower"/>"><span>Open</span></a></div>
        </div>
      </div>
    </div>
  </div>
</div>
  <div class="enjoy-css">Happy BirthDay</div>
				
	</body>
</html>

