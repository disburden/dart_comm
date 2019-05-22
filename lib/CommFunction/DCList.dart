class DCList {
	
	/// 根据条件从数组中移除元素
	static listRemoveElement<E>(List<E> list, bool f(E element)) {
		var removeList = [];
		
		for (int i = 0; i < list.length; i++) {
			if (f(list[i])) {
				removeList.add(list[i]);
			}
		}

		removeList.forEach((ob) {
			list.remove(ob);
		});
	}
	
	/// 实现带index的map方法
	static List<T> listMapWithIndex<T>(List list,T Function(int index, dynamic value) withIndex) {
		return list
			.asMap()
			.map((k, v) {
			return MapEntry(k, withIndex(k, v));
		})
			.values
			.toList();
	}
}