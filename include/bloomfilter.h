# ifndef _BLOOMFILTER_H_
# define _BLOOMFILTER_H_

# include <vector>
# include <string>
# include "bitmap.h"
using namespace std;
# define S_OK 0

namespace bloomfilter{

    class Bloomfilter{
    public:
        Bloomfilter();
        Bloomfilter(int expo);
        bool isContain(std::string obj);
        int add(std::string obj);

    private:
        ~Bloomfilter() = default;
        unsigned int _size;
        Bitmap _bitmap;

    };


}   // namespace bloomfilter


# endif