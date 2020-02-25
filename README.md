# Clock
Implemented in C++. 

Summary:
Prints a display of a 12 &amp; 24-hour clock, where time can be modified in discrete intervals by the user using an interactive menu. 

Additional Features:
Menu width can be set via global constants in main.cpp. Menus & Display spacing will scale with width
Time will roll-over correctly (e.g. at 11:59PM, adding one minute results in 12:00AM)

TODOs:
Buffer spaces calculated using unchecked integer division, causing menus to not line up correctly depending on initial parameter values for menu width. Possible solution would be to round up menu-width to the nearest even number.

User Notes:
  This project relies heavily on static variables, which allowed all methods in the main class to access time information (e.g. seconds, minutes and hours). This made rolling-over time (described above) much easier to implement. 
  The following reference helped me familiarize myself with static variables for this project: 
https://www.learncpp.com/cpp-tutorial/811-static-member-variables/
  As a further suggestion, I always like to search my area of inquiry on HackerNews to find blog posts & comments by veteran programmers:
https://news.ycombinator.com/

Project Reflection:

  One useful lesson from this project was dealing with type conversions in a large codebase. All time information (e.g. seconds, minutes, hours) were integers to allow for easier modifications using int's built-in arithmatic operators. In order to output the time to the clock display, ints needed to be converted into a string format consistently and correctly across the entire codebase. Appropriate naming conventions helped me avoid careless errors. 

  Inline comments explain the code logic. Also, as previously mentioned, use of global constants allows the program to be easily modified to suit user needs without refactoring. 
