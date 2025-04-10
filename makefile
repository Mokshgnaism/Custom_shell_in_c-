CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -pedantic
LDFLAGS = -lreadline

SOURCES = main.cpp command_parser.cpp shell_executor.cpp auto_complete.cpp script_runner.cpp task_scheduler.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = custom-shell

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)

.PHONY: all clean
