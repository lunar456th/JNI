all:
	javac Wrapper.java
	javac Main.java
	javah -jni Wrapper
	gcc -o libgreeting.so greeting.c -shared -I /usr/lib/jvm/java-8-openjdk-armhf/include -I /usr/lib/jvm/java-8-openjdk-armhf/include/linux
	export LD_LIBRARY_PATH=.

clean:
	rm -f Wrapper.class
	rm -f Main.class
	rm -f Wrapper.h
	rm -f libgreeting.so
