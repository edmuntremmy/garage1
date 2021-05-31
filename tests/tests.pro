include(gtest_dependency.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG += thread
CONFIG -= qt



# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
QMAKE_CFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov


HEADERS +=     tst_test1.h \
  ../app/func.h \
  ../app/myfunc.h \
  fibonachi_test.h \
  tst_test2.h

SOURCES +=     main.cpp \
  ../app/func.c \
  ../app/myfunc.c
  
INCLUDEPATH += ../app
