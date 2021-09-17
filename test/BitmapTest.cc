#include "bitmap.h"
#include <catch2/catch_test_macros.hpp>
using namespace bloomfilter;

TEST_CASE( "bitmap usage", "[bitmap]" ) {
    Bitmap b1;
    Bitmap b2(16);
    SECTION( "initialization" ) {
        int expo = 20;
        unsigned long s = 1 << 15;
        REQUIRE( b1.mapStatus(expo, s) == true );
        expo = 16;
        s = 1 << 11;
        REQUIRE( b2.mapStatus(expo, s) == true );
    }
}