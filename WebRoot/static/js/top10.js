window.onload=function ()
{
	var oDiv=document.getElementById('top10-1');
	var oUl=oDiv.getElementsByTagName('ul')[0];
	var aLi=oUl.getElementsByTagName('li');

	oUl.innerHTML=oUl.innerHTML+oUl.innerHTML;
	oUl.style.width=aLi[0].offsetWidth*aLi.length+'px';

	setInterval(function (){
		if(oUl.offsetLeft<-oUl.offsetWidth/2)
		{
			oUl.style.left='0';
		}
		oUl.style.left=oUl.offsetLeft-2+'px';
	}, 30);
	var oDiv2=document.getElementById('top10-2');
	var oUl2=oDiv2.getElementsByTagName('ul')[0];
	var aLi2=oUl2.getElementsByTagName('li');

	oUl2.innerHTML=oUl2.innerHTML+oUl2.innerHTML;
	oUl2.style.width =3840+'px';

	setInterval(function (){
		if(oUl2.offsetLeft<-oUl2.offsetWidth/2)
		{
			oUl2.style.left='0';
		}
		oUl2.style.left=oUl2.offsetLeft-2+'px';
	}, 30);

	var oDiv3=document.getElementById('top10-3');
	var oUl3=oDiv3.getElementsByTagName('ul')[0];
	var aLi3=oUl3.getElementsByTagName('li');
		oUl3.innerHTML = oUl3.innerHTML+oUl3.innerHTML;
		oUl3.style.width = 5640+'px';
		setInterval(function (){
			if(oUl3.offsetLeft<-oUl3.offsetWidth/2)
			{
				oUl3.style.left='0';
			}
			oUl3.style.left=oUl3.offsetLeft-2+'px';
	}, 30);
		
};
