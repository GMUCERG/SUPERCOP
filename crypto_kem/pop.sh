#!/bin/bash

for d in r5n*; do
	pushd $d/m4v2
	for f in sp800-185.{h,c} fips202.{h,c} keccakf1600{.h,-asm.s}; do
		ln -s ../../../common/$f
	done
	popd
done
