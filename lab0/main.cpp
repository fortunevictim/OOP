#include "Parser.h"
#include "Sorter.h"
#include "Writer.h"
#include <iostream>

int main(int argc, char* argv[]) {
    try {
        int arg_count = 3;
        if (argc != arg_count) {
            std::cout << "Wrong amount of arguments. Try again." << std::endl;
            return 0;
        }
        setlocale(LC_ALL, "Russian");
        auto mycoolparser = Lab0::Parser(argv[1]);
        auto mycoolsorter = Lab0::Sorter();
        auto mycoolwriter = Lab0::Writer();
        mycoolparser.ReadFile(argv[1]);
        mycoolwriter.WritingToFile(mycoolsorter.SortedMap(mycoolparser.getmap()), mycoolparser.getcounter(),argv[2]);
    }
    catch(const std::exception& ex){
        std::cerr << "that happened: " << ex.what() << std::endl;
    }
    return 0;
}