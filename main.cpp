#include <iostream>
#include <stdio.h>
#include <string>

using namespace std;

const int menuWidth = 32;
const int bufferWidth = 5;
const string standardClockTitle = "12-Hour Clock";
const string militaryClockTitle = "24-Hour Clock";
static int minute = 0;
static int hour = 0;
static int second = 0;

string standardClockString() {
    //string to represent hours, minutes and seconds
    int standardClockHour;
    string sHour, sMinute, sSeconds, sAMPM, sTime;
    bool AM = true;

    if (hour>12) {
        standardClockHour = hour - 12;
        AM = false;
    } else {
        standardClockHour = hour;
    }
    //add leading zeroes to hours, minutes and seconds; else, convert to string
    if (standardClockHour < 10) {
        sHour = '0' + to_string(standardClockHour);
    } else {
        sHour = to_string(standardClockHour);
    }

    if (minute < 10) {
        sMinute = '0' + to_string(minute);
    } else {
        sHour = to_string(minute);
    }

    if (second < 10) {
        sSeconds = '0' + to_string(second);
    } else {
        sSeconds = to_string(second);
    }

    if (AM) {
        sAMPM = " A M";
    } else {
        sAMPM = " P M";
    }

    sTime = sHour + ':' + sMinute + ':' + sSeconds + sAMPM;
    return sTime;
}
//TODO print 24 hour clock string

string militaryClockString() {
    string sHour, sMinute, sSeconds, sTime;
    //add leading zeroes to strings representing hours, minutes and seconds
    if (hour < 10) {
        sHour = '0' + to_string(hour);
    } else {
        sHour = to_string(hour);
    }

    if (minute < 10) {
        sMinute = '0' + to_string(minute);
    } else {
        sHour = to_string(minute);
    }

    if (second < 10) {
        sSeconds = '0' + to_string(second);
    } else {
        sSeconds = to_string(second);
    }

    sTime = sHour + ':' + sMinute + ':' + sSeconds;
    return sTime;

}

void clockWireFrame() {
    //wireframe for Clock
    string starBar;
    starBar.resize(menuWidth, '*');

    string bufferSpaces;
    bufferSpaces.resize(bufferWidth, ' ');
    //Create string for 12-hour clock
    int standardMenuBufferWidth;
    standardMenuBufferWidth = (menuWidth - 2 - standardClockTitle.length()) / 2;
    string standardMenuBuffer;
    standardMenuBuffer.resize(standardMenuBufferWidth, ' ');
    //Create string for 24-hour clock
    int militaryMenuBufferWidth;
    militaryMenuBufferWidth = (menuWidth - 2 - militaryClockTitle.length()) / 2;
    string militaryMenuBuffer;
    militaryMenuBuffer.resize(militaryMenuBufferWidth, ' ');
    //print header for clock
    cout << starBar << bufferSpaces << starBar << endl;

    //print titles for 12 and 24 hour clocks
    cout << '*' << standardMenuBuffer << standardClockTitle << standardMenuBuffer << '*' << bufferSpaces;
    cout << '*' << militaryMenuBuffer << militaryClockTitle << militaryMenuBuffer << '*' << bufferSpaces << endl;

    //Generate strings for two clocks
    string standardTime, militaryTime;
    standardTime = standardClockString();
    militaryTime = militaryClockString();

    //Generate buffer spaces for 12 and 24 hour clocks
    int standardTimeBufferWidth, militaryTimeBufferWidth;
    standardTimeBufferWidth = (menuWidth - 2 - standardTime.length()) / 2;
    militaryTimeBufferWidth = (menuWidth - 2 - militaryTime.length()) / 2;

    //Create strings for buffer spaces for 12 and 24 hour clocks
    string standardTimeBuffer, militaryTimeBuffer;
    standardTimeBuffer.resize(standardTimeBufferWidth, ' ');
    militaryTimeBuffer.resize(militaryTimeBufferWidth, ' ');

    cout << '*' << standardTimeBuffer << standardTime << standardTimeBuffer << '*' << bufferSpaces;
    cout << '*' << militaryTimeBuffer << militaryTime << militaryTimeBuffer << '*' << bufferSpaces << endl;


    //print footer for clock
    cout << starBar << bufferSpaces << starBar << endl;

}

void printMenu() {
    string starBar;
    starBar.resize(menuWidth, '*');

    string option1, option2, option3, option4;
    string option1Buffer, option2Buffer, option3Buffer, option4Buffer;
    int option1BufferWidth, option2BufferWidth, option3BufferWidth, option4BufferWidth;

    //List of Menu Options
    option1 = "1-Add One Hour";
    option2 = "2-Add One Minute";
    option3 = "3-Add One Second";
    option4 = "4-Exit Program";

    //Set the length of the blank space following Menu Options so that each row is equal in width
    option1BufferWidth = (menuWidth - 2 - option1.length());
    option2BufferWidth = (menuWidth - 2 - option2.length());
    option3BufferWidth = (menuWidth - 2 - option3.length());
    option4BufferWidth = (menuWidth - 2 - option4.length());

    //Create a string of blank spaces equal to the length specified by option#BufferWidth
    option1Buffer.resize(option1BufferWidth, ' ');
    option2Buffer.resize(option2BufferWidth, ' ');
    option3Buffer.resize(option3BufferWidth, ' ');
    option4Buffer.resize(option4BufferWidth, ' ');

    cout << starBar << endl;
    cout << '*' << option1 << option1Buffer << '*' << endl;
    cout << '*' << option2 << option2Buffer << '*' << endl;
    cout << '*' << option3 << option3Buffer << '*' << endl;
    cout << '*' << option4 << option4Buffer << '*' << endl;
    cout << starBar << endl;


}

void addHour() {
    //check if hour exceeds maximum logical value, in which case roll over value to zero
    if (hour>23) {
        hour = 0;
    }
    hour = hour + 1;
}
void addMinute() {
    if (minute > 59) {
        minute = 0;
        addHour();
    }
    minute = minute + 1;
}
void addSecond() {
    if (second > 59) {
        second = 0;
        addMinute();
    }
    second = second + 1;
}

//TODO add number


void runClock() {
    int userInput;

    do {
        printMenu();
        cin >> userInput;

        // Check if userInput is Valid
        while (userInput  < 1 || userInput > 4)
        {
            cout << "Please enter a valid choice" << endl;
            printMenu();
            cin >> userInput;
        }

        switch (userInput) {
            case 1:
                addHour();
                break;
            case 2:
                addMinute();
                break;
            case 3:
                addSecond();
                break;
            case 4:
                cout << "Quitting program..." << endl;
                break;
            }
        clockWireFrame();
        } while (userInput <= 3 && userInput >= 1);
    }

int main() {
    //test methods:
    //militaryClockString();
    //standardClockString();
    //clockWireFrame();
    runClock();
    return 0;
}
