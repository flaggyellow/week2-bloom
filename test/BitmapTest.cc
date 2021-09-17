#include "bitmap.h"
#include <catch2/catch_test_macros.hpp>
using namespace bloomfilter;

TEST_CASE( "bitmap usage", "[bitmap]" ) {
    Bitmap b1;
    Bitmap b2(16);
    SECTION( "initialization" ) {
        int expo = 20;
        unsigned long s = 1 << 15;
        REQUIRE( b1.getExpo() == expo );
        REQUIRE( b1.getBit().size() == s );
        expo = 16;
        s = 1 << 11;
        REQUIRE( b2.getExpo() == expo );
        REQUIRE( b2.getBit().size() == s );
    }
}