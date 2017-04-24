The software AES should be replaced with the Hardare AES suitable for MSP4305594
Below changes are required for the algorithm to run on MC
aes_core.c	->	used AES Accelerator API for encrypt/decrpyt data, and set encrypt/decrypt
				key (API from TI MSPware).
 included "hw_memmap.h" (required by aes.c)
aes256.c	-> added file
aes256.h	-> added file
