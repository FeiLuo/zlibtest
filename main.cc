
#include "stdio.h"
#include "stdlib.h"
#include <iostream>
#include "string.h"
#include "teleunzip.h"

using namespace std;

int main(int argc, char** argv)
{
    char   cmd[200];   
    int   ret;   

    cout << "Start unzip" << endl;
    const char* ss = "./123.zip";
    ret = teleunzip(ss);
    cout << "Finish unzip!!" << endl;
    
    cout << "end" << endl;
    return 0;
}

