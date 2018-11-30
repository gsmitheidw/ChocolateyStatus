# Chocolatey Status

## Bash script for checking Chocolatey.org Status 

This checks https://status.chocolatey.org to indicate outages
Ideally this should be integrated into a monitoring service,
I suggest using Monit from https://mmonit.com/monit/
and include an example for addition for the monitrc control file

## Requirements

Requires bash, w3m, wc and grep. Optionally a running copy of Monit.
It may work on other shells and systems with some mild modifications.

## Notes

Status page on chocolatey.org is not (at the time of writing) automated
so there may be some lag at present.
To Do: check for sub features individually of Chocolatey rather than an
all encompasing "working/not working"

