///@desc SLidetrans to target room
with (oTransition) {target=other.whereto;}
SlideTransition(TRANS_MODE.GOTO,oTransition.target);