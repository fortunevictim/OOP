#include "gtest/gtest.h"

#include "../../../lab1_src/lab1_src/TritSet.h"

using namespace tritsetlib;

TEST(TriOperationTest, TritNot) {
    EXPECT_EQ(~trit::False,     trit::True);
    EXPECT_EQ(~trit::Unknown,   trit::Unknown);
    EXPECT_EQ(~trit::True,      trit::False);
}

TEST(TritOperationsTest, TritAnd) {
    EXPECT_EQ(trit::False & trit::False,        trit::False);
    EXPECT_EQ(trit::False & trit::Unknown,      trit::False);
    EXPECT_EQ(trit::False & trit::True,         trit::False);
    EXPECT_EQ(trit::Unknown & trit::False,      trit::False);
    EXPECT_EQ(trit::Unknown & trit::Unknown,    trit::Unknown);
    EXPECT_EQ(trit::Unknown & trit::True,       trit::Unknown);
    EXPECT_EQ(trit::True & trit::False,         trit::False);
    EXPECT_EQ(trit::True & trit::Unknown,       trit::Unknown);
    EXPECT_EQ(trit::True & trit::True,          trit::True);
}

TEST(TritOperationsTest, TritOr) {
    EXPECT_EQ(trit::False | trit::False,        trit::False);
    EXPECT_EQ(trit::False | trit::Unknown,      trit::Unknown);
    EXPECT_EQ(trit::False | trit::True,         trit::True);
    EXPECT_EQ(trit::Unknown | trit::False,      trit::Unknown);
    EXPECT_EQ(trit::Unknown | trit::Unknown,    trit::Unknown);
    EXPECT_EQ(trit::Unknown | trit::True,       trit::True);
    EXPECT_EQ(trit::True | trit::False,         trit::True);
    EXPECT_EQ(trit::True | trit::Unknown,       trit::True);
    EXPECT_EQ(trit::True | trit::True,          trit::True);
}

TEST(TritSetTests, TritSetNot){
 tritset set(5);
 set[0] = trit::True;
 set[1] = trit::False;
 set[2] = trit::Unknown;
 set[3] = trit::False;
 set[4] = trit::Unknown;
 set = ~(set);
 EXPECT_EQ(set[0], trit::False);
 EXPECT_EQ(set[1], trit::True);
 EXPECT_EQ(set[2], trit::Unknown);
 EXPECT_EQ(set[3], trit::True);
 EXPECT_EQ(set[4], trit::Unknown);
}

TEST(TritSetTests, TritSetAnd) {
    tritset set_1(10);
    set_1[0] = trit::True;
    set_1[1] = trit::False;
    set_1[3] = trit::True;
    set_1[4] = trit::False;
    set_1[5] = trit::True;
    tritset set_2(100);
    set_2[0] = trit::False;
    set_2[1] = trit::False;
    set_2[2] = trit::False;
    set_2[3] = trit::True;
    set_2[5] = trit::True;
    set_2[15] = trit::True;
    tritset res = set_1 & set_2;
    EXPECT_EQ(set_2.capacity(), res.capacity());
    EXPECT_EQ(res[0], trit::False);
    EXPECT_EQ(res[1], trit::False);
    EXPECT_EQ(res[2], trit::False);
    EXPECT_EQ(res[3], trit::True);
    EXPECT_EQ(res[4], trit::False);
    EXPECT_EQ(res[5], trit::True);
    EXPECT_EQ(res[15], trit::Unknown);
    EXPECT_EQ(res[20], trit::Unknown);
}

TEST(TritSetTests, TritSetOr) {
    tritset set_1(10);
    set_1[0] = trit::True;
    set_1[1] = trit::False;
    set_1[3] = trit::True;
    set_1[4] = trit::False;
    set_1[5] = trit::True;
    tritset set_2(100);
    set_2[0] = trit::False;
    set_2[1] = trit::False;
    set_2[2] = trit::False;
    set_2[3] = trit::True;
    set_2[5] = trit::True;
    set_2[15] = trit::True;
    tritset res = set_1 | set_2;
    EXPECT_EQ(set_2.capacity(), res.capacity());
    EXPECT_EQ(res[0], trit::True);
    EXPECT_EQ(res[1], trit::False);
    EXPECT_EQ(res[2], trit::Unknown);
    EXPECT_EQ(res[3], trit::True);
    EXPECT_EQ(res[4], trit::Unknown);
    EXPECT_EQ(res[5], trit::True);
    EXPECT_EQ(res[15], trit::True);
    EXPECT_EQ(res[20], trit::Unknown);
}
TEST(TritSetTest, TritSet_length) {
    size_t size = 100;
    tritset set(size);
    EXPECT_EQ(set.length(), 0);
    size_t pos1 = size / 2;
    set[pos1] = trit::True;
    EXPECT_EQ(set.length(), pos1 + 1);
    size_t pos2 = 3 * size / 4;
    set[pos2] = trit::False;
    EXPECT_EQ(set.length(), pos2 + 1);
    size_t pos3 = pos1 / 2;
    set[pos3] = trit::False;
    EXPECT_EQ(set.length(), pos2 + 1);
    set[pos2 + 1] = trit::Unknown;
    EXPECT_EQ(set.length(), pos2 + 1);
    set[pos2] = trit::Unknown;
    EXPECT_EQ(set.length(), pos1 + 1);
}

TEST(TritSetTest, TritSet_Trim) {
    tritset set_1(100);
    int capacity = set_1.capacity();
    EXPECT_EQ(set_1.length(), 0);
    set_1[5000] = trit::False;
    EXPECT_EQ(set_1.length(), 5001);
    set_1.trim(100);
    EXPECT_EQ(set_1.length(), 0);
    EXPECT_EQ(set_1.capacity(), capacity);
}

TEST(TritSetTests, TritSet_Cardinality) {
    tritset set_1(10);
    set_1[0] = trit::True;
    set_1[1] = trit::False;
    set_1[2] = trit::True;
    set_1[3] = trit::True;
    set_1[11] = trit::False;
    EXPECT_EQ(set_1.cardinality(trit::True), 3);
    EXPECT_EQ(set_1.cardinality(trit::False), 2);
    EXPECT_EQ(set_1.cardinality(trit::Unknown), 7);
    EXPECT_EQ(set_1.cardinality()[trit::True], set_1.cardinality(trit::True));
    EXPECT_EQ(set_1.cardinality()[trit::False], set_1.cardinality(trit::False));
    EXPECT_EQ(set_1.cardinality()[trit::Unknown], set_1.cardinality(trit::Unknown));
}

TEST(TritSetTests, TritSet_Shrink){
    tritset set_1(100);
    tritset set_2(0);
    tritset set_3(10);
    int capacity = set_3.capacity();
    set_3[50] = trit::True;
    set_3[50] = trit::Unknown;
    EXPECT_GT(set_3.capacity(), capacity);
    set_3.shrink();
    EXPECT_EQ(set_3.capacity(), capacity);
    set_2 = set_1;
    tritset set_res_1 = set_1;
    EXPECT_EQ(set_2.capacity(), set_1.capacity());
    EXPECT_EQ(set_res_1.capacity(), set_1.capacity());
    set_2.shrink();
    set_res_1.shrink();
    EXPECT_EQ(set_2.capacity(), 0);
    EXPECT_EQ(set_res_1.capacity(), set_1.capacity());
}

TEST(Tests, TritSet_Big_Test) {
    tritset set_1(0);
    for (int i = 0; i < 60000000; ++i)
        if (i % 3 == 1)
            set_1[i] = trit::True;
    EXPECT_EQ(set_1.cardinality(trit::True), 20000000);
}