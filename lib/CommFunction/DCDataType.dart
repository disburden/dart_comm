
enum JsonType {
	int,
	double,
	String,
	bool,
}

class DCDataType {
	
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
	
	/// 将json字段转换为指定的类型
	dynamic parseJson(dynamic field, [JsonType type = JsonType.String]) {
		switch (type) {
			case JsonType.int:
				return field != null && !(field is int) ? int.parse(double.parse(field.toString()).toStringAsFixed(0)) : field;
			case JsonType.double:
				return field != null && !(field is double) ? double.parse(field.toString()) : field;
			case JsonType.String:
				return field?.toString();
			case JsonType.bool:
				return field != null && !(field is bool) ? int.parse(double.parse(field.toString()).toStringAsFixed(0)) != 0 : field;
				break;
		}
	}
}