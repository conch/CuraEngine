set(CPACK_GENERATOR "ZIP")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")

set(CPACK_PACKAGE_NAME "cura-curaengine-mingw-w64")
set(CPACK_PACKAGE_VENDOR "Ultimaker B.V.")
set(CPACK_PACKAGE_DESCRIPTION "(Cura) CuraEngine statically compiled for MinGW-w64 targeting Win64")
set(CPACK_PACKAGE_CONTACT "Lipu Fei <l.fei@ultimaker.com>")
set(CPACK_PACKAGE_VERSION "4.5.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)
set(CPACK_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}_${CPACK_PACKAGE_VERSION}-${CPACK_DEBIAN_PACKAGE_RELEASE}")

# Include DLLs that are required so this ZIP file can directly be used for
# shipment.
install(FILES
        /usr/lib/gcc/x86_64-w64-mingw32/8.3-posix/libgcc_s_seh-1.dll
        /usr/lib/gcc/x86_64-w64-mingw32/8.3-posix/libgomp-1.dll
        /usr/lib/gcc/x86_64-w64-mingw32/8.3-posix/libstdc++-6.dll
        DESTINATION bin
        COMPONENT runtime
)
