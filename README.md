# Tomatto-cli
A script that creates a pomodoro timer on linux console terminal.
The forcus time by default, has 25 minutes and the rest time has 5 minutes.
You can adjust the intervals editing the values of the constants `FOCUSTIME` and `RESTTIME` (lines 10 and 11).

![](preview.gif)


## Dependencies
- sox
- libnotify

## How to execute

1. Clone this repo

2. Change the file permition to allow execution
```
$ chmod +x ./tomatto.sh
```
3. Call the script
```
$ ./tomatto.sh
```

4. OPTIONAL: Create an alias
```
alias tomatto = <path_of_script>/tomatto.sh
```

NOTE: You can cancel the timer any time using Ctrl+C.

## Autor and License 
Copyright (c) 2023, George Luiz 'Maverick' Maluf

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
