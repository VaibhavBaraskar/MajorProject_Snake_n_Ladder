<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	margin: 0;
	padding: 0;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #290000;
}
.firework {
	position: absolute;
}
.explosion {
	position: absolute;
	left: -2px;
	bottom: 0;
	width: 4px;
	height: 80px;
	transform-origin: 50% 100%;
	overflow: hidden;
}
.explosion:nth-child(1) {
	transform: rotate(0deg) translateY(-15px);
}
.explosion:nth-child(2) {
	transform: rotate(30deg) translateY(-15px);
}
.explosion:nth-child(3) {
	transform: rotate(60deg) translateY(-15px);
}
.explosion:nth-child(4) {
	transform: rotate(90deg) translateY(-15px);
}
.explosion:nth-child(5) {
	transform: rotate(120deg) translateY(-15px);
}
.explosion:nth-child(6) {
	transform: rotate(150deg) translateY(-15px);
}
.explosion:nth-child(7) {
	transform: rotate(180deg) translateY(-15px);
}
.explosion:nth-child(8) {
	transform: rotate(210deg) translateY(-15px);
}
.explosion:nth-child(9) {
	transform: rotate(240deg) translateY(-15px);
}
.explosion:nth-child(10) {
	transform: rotate(270deg) translateY(-15px);
}
.explosion:nth-child(11) {
	transform: rotate(300deg) translateY(-15px);
}
.explosion:nth-child(12) {
	transform: rotate(330deg) translateY(-15px);
}

.explosion::before {
	content: '';
	position: absolute;
	left: 0;
	right: 0;
	top: 100%;
	height: 40px;
	background-color: #f5cf52;
}
@keyframes explosion {
	0% {
		top: 100%;
	}
	33%, 100% {
		top: -50%;
	}
}

#firework1 {
	left: 50%;
	top: 50%;
	transform: scale(1);
}
#firework1 .explosion::before {
	animation: explosion 2s ease-in-out infinite;
}

#firework2 {
	left: 40%;
	top: 45%;
	transform: scale(.7);
}
#firework2 .explosion::before {
	animation: explosion 2s .6s ease-in-out infinite;
}

#firework3 {
	left: 60%;
	top: 65%;
	transform: scale(.4);
}
#firework3 .explosion::before {
	animation: explosion 2s .4s ease-in-out infinite;
}

#firework4 {
	left: 15%;
	top: 80%;
	transform: scale(1.2);
}
#firework4 .explosion::before {
	animation: explosion 2s  .8s ease-in-out infinite;
}
#firework5 {
	left: 80%;
	top: 30%;
	transform: scale(1.5);
}
#firework5 .explosion::before {
	animation: explosion 2s .2s ease-in-out infinite;
}
#firework6 {
	left: 90%;
	top: 80%;
	transform: scale(1.3);
}
#firework6 .explosion::before {
	animation: explosion 2s .9s ease-in-out infinite;
}
#firework7 {
	left: 15%;
	top: 30%;
	transform: scale(1.5);
}
#firework7 .explosion::before {
	animation: explosion 2s 1s ease-in-out infinite;
}
h1 { margin:10px auto 30px auto; text-align:center; font-family:'Roboto'; font-size:100px;}
h2{  margin:10px auto 30px auto; text-align:center; font-family:'Roboto'; font-size:50px;}
</style>
</head>
<body>
<div>
<h1 style=color:#e88f00;>Thank You!</h1>
<h2 style=color:#e88f00;>For complete your registration please check your email</h2>
<h2 style=color:#e88f00;>and click on verification link to verify your account</h2>
</div>
<div class="firework" id="firework1">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework2">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework3">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework4">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework5">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework6">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>
<div class="firework" id="firework7">
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
	<div class="explosion"></div>
</div>

</body>
</html>


