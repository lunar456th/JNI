#include <stdio.h>
#include "Wrapper.h"

JNIEXPORT void JNICALL Java_Wrapper_print(JNIEnv *env, jobject obj)
{
	printf("Hello JNI!\n");
}
