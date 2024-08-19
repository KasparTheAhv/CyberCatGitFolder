if (alpha<1) {alpha+=0.01;
	oVStick.alpha=self.alpha;
	oAttackKey.alpha=self.alpha;
	alarm[4]=1;
	} else {
	oVStick.alpha=1;
	oAttackKey.alpha=1;
	instance_destroy(self);
}




