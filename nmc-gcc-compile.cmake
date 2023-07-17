
set(TRIPLE nmc)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR nmc)
set(CMAKE_CROSS_COMPILING 1)

SET (CMAKE_C_COMPILER_WORKS 1)
SET (CMAKE_CXX_COMPILER_WORKS 1)

set(CMAKE_EXECUTABLE_SUFFIX ".abs" )
set(CMAKE_EXECUTABLE_SUFFIX_CXX ".abs" )
set(CMAKE_EXECUTABLE_SUFFIX_C ".abs" )
set(CMAKE_EXECUTABLE_SUFFIX_ASM ".abs" )



set(CMAKE_C_COMPILER   "${TRIPLE}-gcc"     CACHE PATH "gcc"     FORCE)
set(CMAKE_CXX_COMPILER "${TRIPLE}-g++"     CACHE PATH "g++"     FORCE)
set(CMAKE_ASM_COMPILER "${TRIPLE}-gcc"     CACHE PATH "gcc"     FORCE)
set(CMAKE_AR           "${TRIPLE}-ar"      CACHE PATH "ar"      FORCE)
set(CMAKE_LINKER       "${TRIPLE}-g++"     CACHE PATH "linker"  FORCE)
set(CMAKE_NM           "${TRIPLE}-nm"      CACHE PATH "nm"      FORCE)
set(CMAKE_OBJCOPY      "${TRIPLE}-objcopy" CACHE PATH "objcopy" FORCE)
set(CMAKE_OBJDUMP      "${TRIPLE}-objdump" CACHE PATH "objdump" FORCE)
set(CMAKE_STRIP        "${TRIPLE}-strip"   CACHE PATH "strip"   FORCE)
set(CMAKE_RANLIB       "${TRIPLE}-ranlib"  CACHE PATH "ranlib"  FORCE)
set(AVR_SIZE           "${TRIPLE}-size"    CACHE PATH "size"    FORCE)

set(CMAKE_C_FLAGS "-D__NM__")
set(CMAKE_C_FLAGS_DEBUG             "-O0 -DDEBUG -g" CACHE STRING "debug flags" FORCE)
set(CMAKE_C_FLAGS_MINSIZEREL        "-Os -DNDEBUG" CACHE STRING "minsizerel flags" FORCE)
set(CMAKE_C_FLAGS_RELEASE           "-O2 -DNDEBUG" CACHE STRING "release flags" FORCE)
set(CMAKE_C_FLAGS_RELWITHDEBINFO    "-O2 -DNDEBUG -g" CACHE STRING "relwithdeb flags" FORCE)

set(CMAKE_CXX_FLAGS "-D__NM__")
set(CMAKE_CXX_FLAGS_DEBUG             "-O0 -DDEBUG -g" CACHE STRING "debug flags" FORCE)
set(CMAKE_CXX_FLAGS_MINSIZEREL        "-Os -DNDEBUG" CACHE STRING "minsizerel flags" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE           "-O2 -DNDEBUG" CACHE STRING "release flags" FORCE)
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO    "-O2 -DNDEBUG -g" CACHE STRING "relwithdeb flags" FORCE)

set(CMAKE_ASM_FLAGS "-D__NM__")
set(CMAKE_LINK_FLAGS "")
set(CMAKE_ASM_FLAGS_DEBUG             "-O0 -DDEBUG -g" CACHE STRING "debug flags" FORCE)
set(CMAKE_ASM_FLAGS_MINSIZEREL        "-Os -DNDEBUG" CACHE STRING "minsizerel flags" FORCE)
set(CMAKE_ASM_FLAGS_RELEASE           "-O2 -DNDEBUG" CACHE STRING "release flags" FORCE)
set(CMAKE_ASM_FLAGS_RELWITHDEBINFO    "-O2 -DNDEBUG -g" CACHE STRING "relwithdeb flags" FORCE)


# build rules
set(CMAKE_C_CREATE_STATIC_LIBRARY       "<CMAKE_AR> rcs <TARGET> <OBJECTS>")
set(CMAKE_CXX_CREATE_STATIC_LIBRARY     "<CMAKE_AR> rcs <TARGET> <OBJECTS>")
set(CMAKE_ASM_CREATE_STATIC_LIBRARY     "<CMAKE_AR> rcs <TARGET> <OBJECTS>")
set(CMAKE_ASM_COMPILE_OBJECT 		    "<CMAKE_ASM_COMPILER>   <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT> -c <SOURCE>")
set(CMAKE_C_COMPILE_OBJECT 				"<CMAKE_C_COMPILER> 	<DEFINES> <INCLUDES> <FLAGS> -o <OBJECT> -c <SOURCE>")
set(CMAKE_CXX_COMPILE_OBJECT 			"<CMAKE_CXX_COMPILER> 	<DEFINES> <INCLUDES> <FLAGS> -o <OBJECT> -c <SOURCE>")
set(CMAKE_C_LINK_EXECUTABLE 			"<CMAKE_LINKER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_CXX_LINK_EXECUTABLE 			"<CMAKE_LINKER> <FLAGS> <CMAKE_CXX_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_ASM_LINK_EXECUTABLE 		    "<CMAKE_LINKER> <FLAGS> <CMAKE_ASM_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_CXX_OUTPUT_EXTENSION          ".o")
set(CMAKE_C_OUTPUT_EXTENSION            ".o")
set(CMAKE_ASM_OUTPUT_EXTENSION          ".o")




