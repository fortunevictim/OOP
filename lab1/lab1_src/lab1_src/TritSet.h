#ifndef LAB1_ALMOST_TRITSET_H
#define LAB1_ALMOST_TRITSET_H

#include <vector>
#include <unordered_map>
#include "Trit.h"

namespace tritsetlib {
    class tritset {
    public:
        explicit tritset(int _size);// Constructor with a number of trits
        [[nodiscard]] size_t capacity() const;// Returning vectors capacity
        [[nodiscard]] size_t getSize() const;//Returning size of the tritset in trits
        [[nodiscard]] size_t getVecSize() const;//Returning size of the vector (unsigned int)
        [[nodiscard]] trit getValue(int index) const;//Returning trit in set by the index
        [[nodiscard]] unsigned int vecAtPos(int index) const;
        [[nodiscard]] size_t cardinality(trit val) const;// Returning the number of trits of a certain type in the tritset
        std::unordered_map<trit, int> cardinality();// Returning cardinality of all types of trits
        void trim(size_t lastIndex);// Cutting after lastIndex trit then realloc memory
        void shrink();// Free memory to the last trit
        size_t length();// Last non-Unknown trit's index + 1

        class Reference {
            friend class tritset;
        public:
            tritset &set;
            int index;
            Reference(tritset *set, int index);
            Reference &operator=(trit val);// Index assignment operator
            bool operator==(const Reference &a) const;// Operator of comparison
            bool operator==(const trit &a) const;// Operator of comparison
            operator trit();// Operator for implicit casting of a proxy class to the Trit type
        };
        Reference operator[](int index);// Index call operator
        tritset &operator=(const tritset &a);// Assignment operator between tritsets
        void setValue(int index, trit val);// Setting value by the index in tritset [maybe it should be private]

    private:
        std::vector<unsigned int> vec;
        size_t size;
        size_t base_size;
        size_t trueCount;
        size_t falseCount;
    };
    tritset operator~(const tritset &a);
    std::ostream &operator<<(std::ostream &os, const tritset &set);
    tritset operator&(const tritset &a, const tritset &b);
    tritset operator|(const tritset &a, const tritset &b);
}

#endif //LAB1_ALMOST_TRITSET_H
