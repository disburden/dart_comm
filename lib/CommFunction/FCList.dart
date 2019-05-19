class FCList {
	
	/// 根据条件从数组中移除元素
	static FCListRemoveElement<E>(List<E> list, bool f(E element)) {
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
}