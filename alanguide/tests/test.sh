#!/bin/bash

alan -import ../alanguide-code/lib/ lib-test.alan && {
		echo -e "\033[32;1m/// COMPILATION SUCCEEDED! ///\e[0m"
	} || {
		echo -e "\033[31;1m/// COMPILATION FAILED! ///\e[0m";
		exit 1
	}
