#include "Writer.h"
#include <iostream>

void Lab0::Writer::WritingToFile(const std::multimap<int, std::wstring, std::greater<>>& Mymap, int counter,
        char * outfilename) {
    out_file.exceptions(std::wifstream::badbit);
    out_file.open(outfilename);
    if (!out_file.good()) {
        out_file.close();
        throw std::runtime_error("we cant open out_file");
    }
    for (auto & it : Mymap) {
        out_file << it.second << ";" << it.first << ";" << (float) it.first / counter * 100 << "%" << std::endl;
    }
}
