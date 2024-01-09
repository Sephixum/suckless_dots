// Modify this file to change what commands output to your statusbar, and
// recompile using the make command.
static const Block blocks[] = {
    /*Icon*/                                               /*Command*/                                                  /*Update Interval*/      /*Update Signal*/
    {"^c#1d2021^^b#fb4934^",               "/home/sephix/.suckless/dwmblocks/scripts/network.sh;",                             3,                      0},
    {"^d^ ^c#1d2021^^b#f0aa06^  ^B3^ ",   "/home/sephix/.suckless/dwmblocks/scripts/package-temp.sh",                        30,                      0},
    {"^d^ ^c#1d2021^^b#678e7f^  ^B4^ ",   "free -h | awk '/^Mem/ { print $3\"\" }' | sed s/i//g;",                           30,                      0},
    {"^d^ ^c#1d2021^^b#599145^  ^B14^ ",  "pactl get-sink-volume @DEFAULT_SINK@ | grep 'Volume:' | awk '{print $5}';",        0,                     10},
    {"^d^ ^c#1d2021^^b#8e911d^  ^B2^ ",   "bash /home/sephix/.suckless/Scripts/mic.sh -s",                                    0,                     11},
    {"^d^ ^c#1d2021^^b#c5617c^  ^B5^ ",   "jdate '+%b %d (%a) %I:%M%p'",                                                     60,                      0},
};

// sets delimeter between status commands. NULL character ('\0') means no
// delimeter.
static char delim[] = " ";
static unsigned int delimLen = 15;
