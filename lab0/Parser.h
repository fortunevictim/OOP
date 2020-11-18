#ifndef LAB0_B_FIN_PARSER_H
#define LAB0_B_FIN_PARSER_H

#include <fstream>
#include <string>
#include <map>
#include <cstdlib>
namespace Lab0 {
    class Parser {
    public:
        Parser(const char* filename);
        const std::map<std::wstring, int> ReadFile(const char* filename);
        const std::map<std::wstring, int> &getmap();
        const int getcounter();
        const int getexc();
    private:
        std::map<std::wstring, int> unsortmap;
        int counter = 0;
        std::wifstream input;
    };
}
#endif //LAB0_B_FIN_PARSER_H