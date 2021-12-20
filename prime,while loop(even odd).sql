CREATE DATABASE QUERIES;
USE QUERIES;
--even odd in loop
DECLARE @first int, @end int
set @first=2
set @end=22
WHILE (@first<=22)
BEGIN
if(@first %2=0)
print 'Even' +convert(varchar,@first)
else
print 'Odd' +convert(varchar,@first)
set @first =@first+1
end

--leap year from 2001 to 2021
DECLARE @start int, @finish int
set @start=2001
set @finish=2021
WHILE (@first<=2021)
BEGIN
if(@start %4=0)
print 'leap year' +convert(varchar,@start)
else
print 'not a leap year' +convert(varchar,@start)
set @start =@start+1
end

--prime numbers
declare @i int, @num int, @prime bit
set @i=2
set @prime=1
set @num=9
while (@i< @num)
begin
if(@num % @i=0)
begin
set @prime =0
break 
end
set @i=@i+1
end

if (@prime=1)
begin
print 'is a prime number'+convert(varchar,@num)
end 
else
begin
print 'is not a prime number'+convert(varchar,@num)
end
