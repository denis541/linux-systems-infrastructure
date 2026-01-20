# ⏱️ Cron Syntax Technical Breakdown

Cron is a time-based job scheduler used in Unix-like operating systems to automate the execution of commands or scripts at predefined intervals. It is commonly used for system maintenance, backups, updates, log rotation, and automation tasks.

Cron jobs are defined using a five-field time expression followed by the command to be executed. The general syntax is shown below.

* * * * * command_to_execute

The five asterisks represent time and date fields that control when the command runs.

The fields are interpreted from left to right as minute, hour, day of month, month, and day of week.

Minute specifies the minute the command runs and accepts values from 0 to 59.  
Hour specifies the hour of execution using 24-hour time and accepts values from 0 to 23.  
Day of month specifies the calendar day and accepts values from 1 to 31.  
Month specifies the month and accepts numeric values from 1 to 12 or abbreviated names such as Jan, Feb, Mar.  
Day of week specifies the weekday and accepts values from 0 to 7 or abbreviated names such as Sun, Mon, Tue, where both 0 and 7 represent Sunday.

Cron supports special characters that allow flexible scheduling. The asterisk (*) represents all possible values for a field. For example, using an asterisk in the hour field means the job runs every hour.

A comma (,) is used to specify multiple values. For example, 1,15 in the day-of-month field runs the job on the 1st and 15th of the month.

A hyphen (-) is used to specify a range of values. For example, 1-5 in the day-of-week field runs the job from Monday to Friday.

A forward slash (/) is used to define step values. For example, */5 in the minute field runs the job every 5 minutes.

Cron also provides predefined scheduling shortcuts that simplify common patterns. @reboot runs the command once at system startup. @yearly or @annually runs once a year. @monthly runs once a month. @weekly runs once a week. @daily or @midnight runs once a day. @hourly runs once an hour.

Example cron entries demonstrate common use cases.  
0 2 * * * runs a command every day at 02:00.  
*/10 * * * * runs a command every 10 minutes.  
0 0 * * 0 runs a command every Sunday at midnight.  
30 8 1 * * runs a command at 08:30 on the first day of every month.  
0 9 * * 1-5 runs a command at 09:00 from Monday to Friday.

Cron jobs are usually managed using the crontab utility. Running crontab -e opens the user’s cron table for editing. crontab -l lists all scheduled cron jobs for the current user. crontab -r removes all cron jobs for the current user.

Cron executes commands in a minimal environment, meaning environment variables such as PATH may not be fully defined. For reliability, it is recommended to use absolute paths for commands and scripts. Output from cron jobs is emailed to the job owner by default unless redirected. Logging output explicitly to a file is considered best practice for debugging and monitoring.

Cron jobs run with the permissions of the user who created them. System-wide cron jobs are typically defined in /etc/crontab or files inside /etc/cron.d/. These system cron files include an additional field that specifies the user account under which the command should run.

Understanding cron syntax is essential for building reliable Linux automation workflows, especially for scheduled maintenance, security tasks, system updates, and monitoring operations.


