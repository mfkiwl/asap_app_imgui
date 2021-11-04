# ~~~
#        Copyright The Authors 2018.
#    Distributed under the 3-Clause BSD License.
#    (See accompanying file LICENSE or copy at
#   https://opensource.org/licenses/BSD-3-Clause)
# ~~~

# ------------------------------------------------------------------------------
# Google Sanitizers
# ------------------------------------------------------------------------------

if(OPTION_GOOGLE_ASAN)
  set(ASAN_COMPILER_FLAGS
      "-g -O1 -fno-omit-frame-pointer -fsanitize=address -fsanitize=leak"
  )
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${ASAN_COMPILER_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${ASAN_COMPILER_FLAGS}")
endif()

if(OPTION_GOOGLE_USAN)
  set(USAN_COMPILER_FLAGS "-fsanitize=memory -fPIE -pie -fsanitize-memory-track-origins")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${USAN_COMPILER_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${USAN_COMPILER_FLAGS}")
endif()

if(OPTION_GOOGLE_TSAN)
  set(TSAN_COMPILER_FLAGS "-fsanitize=thread")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${TSAN_COMPILER_FLAGS}")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${TSAN_COMPILER_FLAGS}")
endif()
