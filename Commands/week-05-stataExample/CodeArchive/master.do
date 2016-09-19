// ==========================================================================

// Week 05 Stata Example

// ==========================================================================

// standard opening options

version 14
log close _all
graph drop _all
clear all
set more off
set linesize 80

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// change directory

if "`c(os)'" == "MacOSX" {
  cd "/Users/`c(username)'/Documents/Working"
}
else if "`c(os)'" == "Windows" {
  cd "E:/Users/`c(username)'/Documents/Working"
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exist

global projName "week-05-stataExample"
capture mkdir $projName

capture mkdir "$projName/CodeArchive"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using "$projName/$projName.txt", text replace

// ==========================================================================

/*
file name - week-05-stataExample.do

project name - SOC5050: Quantitative Analysis, Fall 2016

purpose - Illustrates the display command from Week 05

created - 18 Sep 2016

updated - 18 Sep 2016

author - CHRIS
*/

// ==========================================================================

/*
full description -
This do-file illustrates different ways to implement the display command
along with associated mathematical functions and operations.
*/

/*
updates -
none
*/

// ==========================================================================

/*
superordinates  -
- /*enter the source data filename here*/.dta
*/

/*
subordinates -
- data.do
- analysis.do
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

// 1. display command with basic mathematical operations

display 2+2

display 4-2

display 12/3

display 4*3

// ==========================================================================

// 2. display command with more advanced mathematical functions

display 2^2

display abs(-2)

display sqrt(4)

display log(10)

// ==========================================================================

// 3. more complex example using order of operations

display (2^2*8)/12-2

// ==========================================================================
// ==========================================================================
// ==========================================================================

// copy code to code archive

copy "week-05-stataExample.do" "$projName/CodeArchive/master.do", replace

// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
