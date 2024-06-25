#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER " | "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 0

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 0

// Define blocks for the status feed as X(cmd, interval, signal).
#define BLOCKS(X)         \
    X("~/dwmstuff/dwmblocks-async/sb-internet",		60, 	1)  \
    X("~/dwmstuff/dwmblocks-async/sb-volume", 		0, 	6)     \
    X("~/dwmstuff/dwmblocks-async/sb-brightness",	0, 	7)  \
    X("~/dwmstuff/dwmblocks-async/sb-battery", 		5, 	8)  \
    X("~/dwmstuff/dwmblocks-async/sb-time", 		1, 	10)

#endif  // CONFIG_H
