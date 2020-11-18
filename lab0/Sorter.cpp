#include "Sorter.h"

std::multimap<int, std::wstring, std::greater<>> Lab0::Sorter::SortedMap(std::map<std::wstring, int> Map) {
    std::multimap<int, std::wstring, std::greater<>> SortedMap;
    for (auto & it : Map)
        SortedMap.insert(std::pair<int , std::wstring>(it.second, it.first));
    return SortedMap;
}


