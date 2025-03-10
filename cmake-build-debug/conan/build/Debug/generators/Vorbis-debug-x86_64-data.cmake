########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND vorbis_COMPONENT_NAMES Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile vorbis::vorbisenc-alias vorbis::vorbisfile-alias)
list(REMOVE_DUPLICATES vorbis_COMPONENT_NAMES)
if(DEFINED vorbis_FIND_DEPENDENCY_NAMES)
  list(APPEND vorbis_FIND_DEPENDENCY_NAMES Ogg)
  list(REMOVE_DUPLICATES vorbis_FIND_DEPENDENCY_NAMES)
else()
  set(vorbis_FIND_DEPENDENCY_NAMES Ogg)
endif()
set(Ogg_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(vorbis_PACKAGE_FOLDER_DEBUG "C:/Users/Lap/.conan2/p/b/vorbieee5380378f69/p")
set(vorbis_BUILD_MODULES_PATHS_DEBUG )


set(vorbis_INCLUDE_DIRS_DEBUG )
set(vorbis_RES_DIRS_DEBUG )
set(vorbis_DEFINITIONS_DEBUG )
set(vorbis_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_EXE_LINK_FLAGS_DEBUG )
set(vorbis_OBJECTS_DEBUG )
set(vorbis_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_COMPILE_OPTIONS_C_DEBUG )
set(vorbis_COMPILE_OPTIONS_CXX_DEBUG )
set(vorbis_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_BIN_DIRS_DEBUG )
set(vorbis_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_LIBS_DEBUG vorbisfile vorbisenc vorbis)
set(vorbis_SYSTEM_LIBS_DEBUG )
set(vorbis_FRAMEWORK_DIRS_DEBUG )
set(vorbis_FRAMEWORKS_DEBUG )
set(vorbis_BUILD_DIRS_DEBUG )
set(vorbis_NO_SONAME_MODE_DEBUG FALSE)


# COMPOUND VARIABLES
set(vorbis_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_COMPILE_OPTIONS_C_DEBUG}>")
set(vorbis_LINKER_FLAGS_DEBUG
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_SHARED_LINK_FLAGS_DEBUG}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_EXE_LINK_FLAGS_DEBUG}>")


set(vorbis_COMPONENTS_DEBUG Vorbis::vorbis Vorbis::vorbisenc Vorbis::vorbisfile vorbis::vorbisenc-alias vorbis::vorbisfile-alias)
########### COMPONENT vorbis::vorbisfile-alias VARIABLES ############################################

set(vorbis_vorbis_vorbisfile-alias_INCLUDE_DIRS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_vorbis_vorbisfile-alias_BIN_DIRS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_vorbis_vorbisfile-alias_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_vorbis_vorbisfile-alias_RES_DIRS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_DEFINITIONS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_OBJECTS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_C_DEBUG "")
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_CXX_DEBUG "")
set(vorbis_vorbis_vorbisfile-alias_LIBS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_SYSTEM_LIBS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_FRAMEWORK_DIRS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_FRAMEWORKS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_DEPENDENCIES_DEBUG Vorbis::vorbisfile)
set(vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_EXE_LINK_FLAGS_DEBUG )
set(vorbis_vorbis_vorbisfile-alias_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(vorbis_vorbis_vorbisfile-alias_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_vorbis_vorbisfile-alias_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_vorbis_vorbisfile-alias_EXE_LINK_FLAGS_DEBUG}>
)
set(vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_vorbis_vorbisfile-alias_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT vorbis::vorbisenc-alias VARIABLES ############################################

set(vorbis_vorbis_vorbisenc-alias_INCLUDE_DIRS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_vorbis_vorbisenc-alias_BIN_DIRS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_vorbis_vorbisenc-alias_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_vorbis_vorbisenc-alias_RES_DIRS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_DEFINITIONS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_OBJECTS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_C_DEBUG "")
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_CXX_DEBUG "")
set(vorbis_vorbis_vorbisenc-alias_LIBS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_SYSTEM_LIBS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_FRAMEWORK_DIRS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_FRAMEWORKS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_DEPENDENCIES_DEBUG Vorbis::vorbisenc)
set(vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_EXE_LINK_FLAGS_DEBUG )
set(vorbis_vorbis_vorbisenc-alias_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(vorbis_vorbis_vorbisenc-alias_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_vorbis_vorbisenc-alias_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_vorbis_vorbisenc-alias_EXE_LINK_FLAGS_DEBUG}>
)
set(vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_vorbis_vorbisenc-alias_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Vorbis::vorbisfile VARIABLES ############################################

set(vorbis_Vorbis_vorbisfile_INCLUDE_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisfile_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_Vorbis_vorbisfile_BIN_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisfile_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_Vorbis_vorbisfile_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_Vorbis_vorbisfile_RES_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisfile_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbisfile_OBJECTS_DEBUG )
set(vorbis_Vorbis_vorbisfile_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_C_DEBUG "")
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_CXX_DEBUG "")
set(vorbis_Vorbis_vorbisfile_LIBS_DEBUG vorbisfile)
set(vorbis_Vorbis_vorbisfile_SYSTEM_LIBS_DEBUG )
set(vorbis_Vorbis_vorbisfile_FRAMEWORK_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisfile_FRAMEWORKS_DEBUG )
set(vorbis_Vorbis_vorbisfile_DEPENDENCIES_DEBUG Vorbis::vorbis)
set(vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbisfile_EXE_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbisfile_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbisfile_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbisfile_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbisfile_EXE_LINK_FLAGS_DEBUG}>
)
set(vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbisfile_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Vorbis::vorbisenc VARIABLES ############################################

set(vorbis_Vorbis_vorbisenc_INCLUDE_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisenc_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_Vorbis_vorbisenc_BIN_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisenc_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_Vorbis_vorbisenc_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_Vorbis_vorbisenc_RES_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisenc_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbisenc_OBJECTS_DEBUG )
set(vorbis_Vorbis_vorbisenc_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_C_DEBUG "")
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_CXX_DEBUG "")
set(vorbis_Vorbis_vorbisenc_LIBS_DEBUG vorbisenc)
set(vorbis_Vorbis_vorbisenc_SYSTEM_LIBS_DEBUG )
set(vorbis_Vorbis_vorbisenc_FRAMEWORK_DIRS_DEBUG )
set(vorbis_Vorbis_vorbisenc_FRAMEWORKS_DEBUG )
set(vorbis_Vorbis_vorbisenc_DEPENDENCIES_DEBUG Vorbis::vorbis)
set(vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbisenc_EXE_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbisenc_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbisenc_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbisenc_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbisenc_EXE_LINK_FLAGS_DEBUG}>
)
set(vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbisenc_COMPILE_OPTIONS_C_DEBUG}>")
########### COMPONENT Vorbis::vorbis VARIABLES ############################################

set(vorbis_Vorbis_vorbis_INCLUDE_DIRS_DEBUG )
set(vorbis_Vorbis_vorbis_LIB_DIRS_DEBUG "${vorbis_PACKAGE_FOLDER_DEBUG}/lib")
set(vorbis_Vorbis_vorbis_BIN_DIRS_DEBUG )
set(vorbis_Vorbis_vorbis_LIBRARY_TYPE_DEBUG STATIC)
set(vorbis_Vorbis_vorbis_IS_HOST_WINDOWS_DEBUG 1)
set(vorbis_Vorbis_vorbis_RES_DIRS_DEBUG )
set(vorbis_Vorbis_vorbis_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbis_OBJECTS_DEBUG )
set(vorbis_Vorbis_vorbis_COMPILE_DEFINITIONS_DEBUG )
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_C_DEBUG "")
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_CXX_DEBUG "")
set(vorbis_Vorbis_vorbis_LIBS_DEBUG vorbis)
set(vorbis_Vorbis_vorbis_SYSTEM_LIBS_DEBUG )
set(vorbis_Vorbis_vorbis_FRAMEWORK_DIRS_DEBUG )
set(vorbis_Vorbis_vorbis_FRAMEWORKS_DEBUG )
set(vorbis_Vorbis_vorbis_DEPENDENCIES_DEBUG Ogg::ogg)
set(vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbis_EXE_LINK_FLAGS_DEBUG )
set(vorbis_Vorbis_vorbis_NO_SONAME_MODE_DEBUG FALSE)

# COMPOUND VARIABLES
set(vorbis_Vorbis_vorbis_LINKER_FLAGS_DEBUG
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${vorbis_Vorbis_vorbis_SHARED_LINK_FLAGS_DEBUG}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${vorbis_Vorbis_vorbis_EXE_LINK_FLAGS_DEBUG}>
)
set(vorbis_Vorbis_vorbis_COMPILE_OPTIONS_DEBUG
    "$<$<COMPILE_LANGUAGE:CXX>:${vorbis_Vorbis_vorbis_COMPILE_OPTIONS_CXX_DEBUG}>"
    "$<$<COMPILE_LANGUAGE:C>:${vorbis_Vorbis_vorbis_COMPILE_OPTIONS_C_DEBUG}>")