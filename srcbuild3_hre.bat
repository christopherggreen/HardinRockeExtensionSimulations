setlocal
(SET PATH=.;D:\Rtools31\bin;D:\perl64\bin;D:\Rtools31\gcc-4.6.3\bin;D:\miktex29\miktex\bin\x64;D:\Program Files\R\R-3.1.3\bin\x64;C:\windows;C:\windows\system32)
set topdir=E:\cggreen\Research\dissertation2\chapters\calibration\HardinRockeExtension
set package=%topdir%\HardinRockeExtension
@dir HardinRockeExtension*.tar.gz /b /o-d > hre.tmp
set /p tarball=< hre.tmp
del hre.tmp
rem set tarball=%topdir%\HardinRockeExtension_1.0.13.tar.gz
rem R CMD build --help
R --verbose CMD build %package%
rem R CMD INSTALL --help
R CMD INSTALL --library="D:\Program Files\R\R-3.1.3\site-library" %tarball%
R CMD INSTALL --library="D:\Program Files\R\R-3.0.2\site-library" %tarball%
R CMD INSTALL --library="D:\Program Files\R\R-2.15.2\site-library" %tarball% 
d:\cygwin\bin\sleep 5
endlocal
