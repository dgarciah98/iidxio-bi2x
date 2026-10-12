BUILD_DIR=build-win64
DLL=iidxio-bi2x.dll
TOOLCHAIN_FILE=mingw-w64-linux.cmake

.PHONY: build
build:
	cmake -S . -B $(BUILD_DIR) -G Ninja -DCMAKE_TOOLCHAIN_FILE=$(TOOLCHAIN_FILE) -DCMAKE_BUILD_TYPE=Release
	cmake --build $(BUILD_DIR)
	x86_64-w64-mingw32-strip --strip-unneeded $(BUILD_DIR)/$(DLL)
clean:
	rm -rf $(BUILD_DIR)
