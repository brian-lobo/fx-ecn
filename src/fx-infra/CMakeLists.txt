project(fx-infra)

# Add source files
set(SOURCES src/DBReader.cpp
)

# Create the library or executable for SubProject1
add_library(fx-infra ${SOURCES})

# Optionally, if it's an executable:
# add_executable(SubProject1Executable ${SOURCES})

# Specify include directories, if needed
target_include_directories(fx-infra PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include
	                                   )
# target_include_directories(SubProject1Executable PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
