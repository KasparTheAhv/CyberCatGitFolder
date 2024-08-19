/// Kaota uksekaugus ja sulge uksed
if (uksekaug>0) {
	if (palju>0.2) {palju-=0.09;}
	uksekaug-=palju;
	alarm[0]=1;
	} else {uksekaug=0;oTrain.alarm[2]=60;}
