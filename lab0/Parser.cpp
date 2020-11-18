#include <iostream>
#include "Parser.h"

Lab0::Parser::Parser(const char* filename){
    input.exceptions(std::wifstream::badbit);
        input.open(filename);
        if (!input.good()) {
            input.close();
            throw std::runtime_error("we cant open input");
        }
}

const int Lab0::Parser::getcounter() {
    return counter;
}

const std::map<std::wstring, int> &Lab0::Parser::getmap() {
    return unsortmap;
}

const std::map<std::wstring, int> Lab0::Parser::ReadFile(const char* filename) {
    int symbol = 0;
    std::wstring str, word;
    word.clear();
    while (getline(input, str)){
        unsigned int i = 0;
        for(i = 0; i <= str.length(); i++) {
            symbol = (int)str[i];
            if (isalpha(symbol) || isdigit(symbol) || (symbol >= 1040 && symbol <=1103)) {
                    word += (wchar_t)symbol;
            } else
            if (!word.empty()){
                if (unsortmap.count(word) == 0) {
                    unsortmap.insert(std::pair<std::wstring, int>((word), 1));
                    counter++;
                    word.clear();
                }
                else {
                    unsortmap[word]++;
                    counter++;
                    word.clear();
                }
            }
        }
    }
    return unsortmap;
}
