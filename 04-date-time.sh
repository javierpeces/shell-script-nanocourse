#!/bin/bash

weekday=`date +%a`
echo "El día de la semana es: $weekday"

daymonthyear=`date +%d/%m/%Y`
echo "In format 'day/month/year' today is $daymonthyear"

hourminsec=`date +%H\ %M\ %S`
echo "In format 'hour minute second', now is $hourminsec"

noofday=`date +%u`
echo "Number of day in the week (1=monday, 2=tuesday...), today's day number is $noofday"

noofweek=`date +%V`
echo "No of week in the year (01 to 53); this is the week number $noofweek"

juliandate=`date +%j`
echo "Julian date: $juliandate"

echo "The command 'man date' is your friend"

# Have a look at how we include explicit spaces in 'hour min sec'
