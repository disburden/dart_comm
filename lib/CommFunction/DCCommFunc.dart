import 'dart:math' as math;

class DCCommFunc {


	/// 根据范围获取随机数
	static int rangeRandom(int min, int max,{bool includeMax=true}) {
		//如果需要包含最大值,就先把最大值+1;
		if (includeMax) max++;

		math.Random random = math.Random();
		return random.nextInt(max - min) + min;
	}
	

	
}