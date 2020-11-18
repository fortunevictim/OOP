#ifndef LAB0_B_FIN_SORTER_H
#define LAB0_B_FIN_SORTER_H

#include <string>
#include <map>

namespace Lab0 {
    class Sorter {
    public:
        std::multimap<int, std::wstring, std::greater<>> SortedMap(std::map<std::wstring, int> Map);
    };
}

#endif //LAB0_B_FIN_SORTER_H
