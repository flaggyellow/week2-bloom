#ifndef _BITMAP_H_
#define _BITMAP_H_

#define S_OK 0
#include <vector>

namespace bloomfilter{

    class Bitmap{
    public: 
        Bitmap();
        Bitmap(int expo);
        int bit_set(unsigned int *index);
        int bit_reset(unsigned int *index);
        bool bit_query(unsigned int *index);
    private:
        ~Bitmap() = default;
        unsigned int _applyMask(unsigned int *index);
        int _expo;
        std::vector<int> _bit;
    };

    Bitmap::Bitmap()
    : _expo(32)
    , _bit(1<<(_expo-5), 0)
    {}

    Bitmap::Bitmap(int expo)
    : _expo(expo)
    {
        if(_expo<5 || _expo>32) _expo = 32;
        _bit = std::vector<int>(1<<(_expo-5), 0);
    }

    unsigned int Bitmap::_applyMask(unsigned int *index){
        unsigned int mask = 1;
        mask = (mask << _expo) - 1;
        unsigned int ind = index[3] & mask;
        return ind;
    }

    int Bitmap::bit_set(unsigned int *index){
        int ind = _applyMask(index);
        unsigned int i = ind / 32;
        unsigned int j = ind % 32;
        _bit[i] |= (0x00000001 << j); 
        return S_OK;
    }

    int Bitmap::bit_reset(unsigned int *index){
        int ind = _applyMask(index);
        unsigned int i = ind / 32;
        unsigned int j = ind % 32;
        _bit[i] &= ~(0x00000001 << j); 
        return S_OK;
    }

    bool Bitmap::bit_query(unsigned int *index){
        int ind = _applyMask(index);
        unsigned int i = ind / 32;
        unsigned int j = ind % 32;
        unsigned int target_bit = (0x00000001 << j) & _bit[i];
        return (target_bit > 0);
    }

}   // namespace bloomfilter

#endif