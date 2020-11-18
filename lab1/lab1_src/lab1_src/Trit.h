#ifndef LAB1_ALMOST_TRIT_H
#define LAB1_ALMOST_TRIT_H

#include <iostream>
namespace tritsetlib {
    enum class trit {
        False, Unknown, True
    };

    std::ostream &operator<<(std::ostream &ostr, const trit &trit);
    trit operator~(trit a);
    trit operator&(trit a, trit b);
    trit operator|(trit a, trit b);
}

#endif //LAB1_ALMOST_TRIT_H
