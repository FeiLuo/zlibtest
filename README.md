# zlibtest

the test project to demontrate how to unzip files with minizip.


1. compile zlib and generate libz.a
	Maybe:
	CC=XX-gcc ./configuration --zprefix
2. compile minizip and generate minizip.a
3. wrapper minizip.a to teleunzip function to unzip zip file that contains folders
