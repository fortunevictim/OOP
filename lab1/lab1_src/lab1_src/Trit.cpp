#include "Trit.h"

std::ostream &tritsetlib::operator<<(std::ostream& ostr, const tritsetlib::trit &a) {
    if (a == tritsetlib::trit::True) return (ostr << "True");
    else if (a == tritsetlib::trit::False) return (ostr << "False");
    else return (ostr << "Unknown");
}

tritsetlib::trit tritsetlib::operator~ (tritsetlib::trit a) {
    if (a == tritsetlib::trit::True) return tritsetlib::trit::False;
    else if (a == tritsetlib::trit::False) return tritsetlib::trit::True;
    else return tritsetlib::trit::Unknown;
}

tritsetlib::trit tritsetlib::operator& (tritsetlib::trit a, tritsetlib::trit b) {
    if (a == tritsetlib::trit::True) return b;
    else if (a == tritsetlib::trit::False) return tritsetlib::trit::False;
    else if (b == tritsetlib::trit::False) return tritsetlib::trit::False;
    else return tritsetlib::trit::Unknown;
}

tritsetlib::trit tritsetlib::operator| (tritsetlib::trit a, tritsetlib::trit b) {
    if (a == tritsetlib::trit::True) return tritsetlib::trit::True;
    else if (a == tritsetlib::trit::False) return b;
    else if (b == tritsetlib::trit::True) return tritsetlib::trit::True;
    else return tritsetlib::trit::Unknown;}
