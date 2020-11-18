#ifndef LAB0_B_FIN_WRITER_H
#define LAB0_B_FIN_WRITER_H


#include <fstream>
#include <string>
#include <map>

namespace Lab0{
    class Writer{
        public:
            void WritingToFile(const std::multimap<int, std::wstring,
                    std::greater<>>& Mymap, int cnt, char * outfilename);
        private:
            std::wofstream out_file;
    };
}

#endif //LAB0_B_FIN_WRITER_H
