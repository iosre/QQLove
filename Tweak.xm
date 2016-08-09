#include <ctime>

%hook NSDate

+ (int)getDayOfWeekOfTime:(double)arg1
{
	time_t currentTime = (time_t)arg1;
	struct tm *localTime;
	localTime = localtime(&currentTime);
	return localTime->tm_wday;
}

%end
