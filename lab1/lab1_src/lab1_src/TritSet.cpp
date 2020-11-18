#include <iostream>
#include <cmath>
#include "TritSet.h"

#define UINTINSYS (4 * sizeof(unsigned int))
#define UNKNOWN 0
#define FALSE 2
#define TRUE 3

tritsetlib::tritset::tritset (int inputSize) {
    vec.assign(ceil((double)inputSize / (UINTINSYS)), 0);
    size = inputSize;
    base_size = vec.size();
    trueCount = 0;
    falseCount = 0;
}

size_t tritsetlib::tritset::capacity() const {
    return vec.capacity();
}

size_t tritsetlib::tritset::getSize() const {
    return size;
}

size_t tritsetlib::tritset::getVecSize() const {
    return vec.size();
}

void tritsetlib::tritset::setValue(int index, trit val) {
    int begPos = index / (UINTINSYS);
    int endPos = index % (UINTINSYS);
    unsigned int tmp1 = TRUE, tmp2;

    if (getValue(index) == trit::True) trueCount--;
    else if (getValue(index) == trit::False) falseCount--;

    if (val == trit::True) trueCount++;
    else if (val == trit::False) falseCount++;
    if (val == trit::False) tmp2 = FALSE;
    else if (val == trit::True) tmp2 = TRUE;
    else tmp2 = UNKNOWN;

    tmp1 <<= 2 * endPos;
    tmp2 <<= 2 * endPos;
    vec[begPos] &= ~tmp1;
    vec[begPos] |= tmp2;
}

tritsetlib::trit tritsetlib::tritset::getValue(int index) const {
    int begPos = index / (UINTINSYS);
    int endPos = index % (UINTINSYS);

    if (index >= size)
        return trit::Unknown;

    unsigned int tmp = vec[begPos];
    tmp >>= 2 * endPos;
    tmp &= 3;
    if (tmp == FALSE)
        return trit::False;
    else if (tmp == TRUE)
        return trit::True;
    else return trit::Unknown;
}

unsigned int tritsetlib::tritset::vecAtPos (int index) const {
    if (index >= vec.size())
        return 0;
    return vec[index];
}

void tritsetlib::tritset::shrink() {
    int new_size = base_size;
    for (int k = vec.size() - 1; k > base_size; --k) {
        if (vec[k] > 0) {
            new_size = k + 1;
            break;
        }
    }
    vec.resize(new_size);
    vec.shrink_to_fit();
}

size_t tritsetlib::tritset::cardinality (trit val) const {
    if (val == trit::True)
        return trueCount;
    else if (val == trit::False)
        return falseCount;
    return (size - falseCount - trueCount);
}

std::unordered_map <tritsetlib::trit, int> tritsetlib::tritset::cardinality() {
    return {
            {trit::True, trueCount},
            {trit::False, falseCount},
            {trit::Unknown, cardinality(trit::Unknown)}
    };
}

void tritsetlib::tritset::trim(size_t lastIndex) {
    if (lastIndex >= size)
        return;
    int new_size = ceil((double)lastIndex / (UINTINSYS));
    int begPos = new_size * UINTINSYS;
    for (int i = lastIndex; i < begPos; ++i)
        setValue(i, trit::Unknown);
    vec.resize(new_size);
    size = lastIndex + 1;
    vec.shrink_to_fit();
}

size_t tritsetlib::tritset::length() {
    int last_ind = -1;
    for (int i = getVecSize() - 1; i >= 0; --i) {
        if (vec[i] != 0) {
            last_ind = i;
            break;
        }
    }
    if (last_ind == -1)
        return 0;
    int first_i = UINTINSYS * last_ind;
    int last_i = UINTINSYS * (last_ind + 1);

    for (int i = last_i + 1; i >= first_i; --i)
        if (getValue(i) != trit::Unknown)
            return i + 1;
    return 0;
}

tritsetlib::tritset::Reference::Reference(tritsetlib::tritset *set, int index) : set(*set), index(index) {}

tritsetlib::tritset::Reference &tritsetlib::tritset::Reference::operator=(trit val) {
    if (set.vec.size() < ceil((double)(index + 1) / (UINTINSYS)) && val != trit::Unknown) {
        set.vec.resize(ceil((double)(index + 1) / (UINTINSYS)), 0);
        set.size = index + 1;
    }
    else if (index >= set.size && val != trit::Unknown)
        set.size = index + 1;
    set.setValue(index, val);
    return *this;
}

bool tritsetlib::tritset::Reference::operator==(const tritsetlib::tritset::Reference &a) const {
    if (index < set.size && a.index < a.set.size)
        return (set.getValue(index) == a.set.getValue(a.index));
    else if ((index >= set.size && a.set.getValue(a.index) == trit::Unknown) ||
    (a.index >= a.set.size && set.getValue(index) == trit::Unknown))
        return true;
    return false;
}

tritsetlib::tritset::Reference::operator trit() {
    return set.getValue(index);
}

bool tritsetlib::tritset::Reference::operator==(const trit &a) const {
    if (index > set.size)
        return a == trit::Unknown;
    return (set.getValue(index) == a);
}

tritsetlib::tritset::Reference tritsetlib::tritset::operator[] (int index) {
    return Reference(this, index);
}

std::ostream& tritsetlib::operator<<(std::ostream& ostr, const tritsetlib::tritset &set) {
    for (int i = 0; i < set.getSize(); ++i)
        ostr << " " << i << " : " << set.getValue(i) << "\n";
    return ostr;
}

tritsetlib::tritset& tritsetlib::tritset::operator=(const tritsetlib::tritset &newtrit) {
    vec = newtrit.vec;
    size = newtrit.size;
    trueCount = newtrit.trueCount;
    falseCount = newtrit.falseCount;
    return *this;
}

tritsetlib::tritset tritsetlib::operator~ (const tritsetlib::tritset &set) {
    tritsetlib::tritset result (set.getSize());
    for (int i = 0; i < set.getVecSize(); ++i) {
        if (set.vecAtPos(i) == 0)
            continue;
        int first_i = i * UINTINSYS;
        int last_i = (i + 1) * UINTINSYS;

        for (int j = first_i; j < last_i; ++j)
            result[j] = ~set.getValue(j);
    }
    return result;
}

tritsetlib::tritset tritsetlib::operator& (const tritsetlib::tritset &a, const tritsetlib::tritset &b) {
    tritsetlib::tritset result (std::max(a.getSize(), b.getSize()));
    for (int i = 0; i < std::max (a.getVecSize(), b.getVecSize()); ++i) {
        if (a.vecAtPos(i) == 0 && b.vecAtPos(i) == 0)
            continue;
        int first_i = i * UINTINSYS;
        int last_i = (i + 1) * UINTINSYS;

        for (int j = first_i; j < last_i; ++j)
            result[j] = a.getValue(j) & b.getValue(j);
    }
    return result;
}

tritsetlib::tritset tritsetlib::operator| (const tritsetlib::tritset &a, const tritsetlib::tritset &b) {
    tritsetlib::tritset result (std::max(a.getSize(), b.getSize()));
    for (int i = 0; i < std::max (a.getVecSize(), b.getVecSize()); ++i) {
        if (a.vecAtPos(i) == 0 && b.vecAtPos(i) == 0)
            continue;
        int first_i = i * UINTINSYS;
        int last_i = (i + 1) * UINTINSYS;

        for (int j = first_i; j < last_i; ++j)
            result[j] = a.getValue(j) | b.getValue(j);
    }
    return result;
}