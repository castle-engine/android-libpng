.PHONY: default
default:
	./build.sh

.PHONY: clean
clean:
	rm -Rf libs/ obj/

.PHONY: build
build: clean default
	cp -f libs/armeabi-v7a/libpng.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/png/app/src/main/jniLibs/armeabi-v7a/libpng.so
	cp -f libs/arm64-v8a/libpng.so \
	  $(CASTLE_ENGINE_PATH)/tools/build-tool/data/android/integrated-services/png/app/src/main/jniLibs/arm64-v8a/libpng.so
