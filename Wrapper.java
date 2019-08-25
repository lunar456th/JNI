class Wrapper {
	static {
		System.loadLibrary("greeting");
	}

	public native void print();
};
