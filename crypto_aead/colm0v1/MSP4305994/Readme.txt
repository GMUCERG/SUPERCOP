The software AES should be replaced with the Hardare AES suitable for MSP4305594
Below changes are required for the algorithm to run on MC
aes_core.c	->	added AES256_setCipherKey and AES256_encryptData function to replace software AES
included "hw_memmap.h" (required by aes256.c)
aes256.c	-> added file
aes256.h	-> added file

