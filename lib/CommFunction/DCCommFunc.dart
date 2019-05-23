import 'dart:math' as math;

class DCCommFunc {
	/// 是否为null，若是String是否是empty
	static bool isAir(Object obj) {
		if (obj == null) {
			return true;
		}
		if (obj is String) {
			return obj.isEmpty;
		}
		return true;
	}

	/// 根据范围获取随机数
	static int rangeRandom(int min, int max,{bool includeMax=true}) {
		//如果需要包含最大值,就先把最大值+1;
		if (includeMax) max++;

		math.Random random = math.Random();
		return random.nextInt(max - min) + min;
	}
	
	/// 将double保留指定的小数位(默认两位),支持double和字符串
	static double formatDecimal( origin,{int numberOfDecimal=2}){
		double tmp = 0.0;
		if (origin is double){
			String str = origin.toStringAsFixed(numberOfDecimal);
			tmp = double.parse(str);
		}
		
		if (origin is String){
			double tmpDouble = double.parse(origin);
			String str = tmpDouble.toStringAsFixed(numberOfDecimal);
			tmp = double.parse(str);
		}
		
		return tmp;
	}
	
}