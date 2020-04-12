# Warframe Backup

This script is made specificaly for:

* **Warframe** video game
* From the **steam** client
* On a **windows** computer

## What ?

A script to back-up related game files into one directory.

## Why ?

Normaly, backing-up games on steam is simple, as this type of service is provided on the client. But for some reason, this game won't back-up.

Trying to copy all the files manual takes time, and this script automate the process for you.

## How ?

Run the script with powershell to back-up the files.

If your Computer don't allow running unsigned scripts on your local computer, You need to follow these steps first:

* Run PowerShell as Administrator
* Remove restriction:
  * Run the command `Set-ExecutionPolicy unrestricted`
  * Confirm the change.
  * This will allow running unsigned scripts that you write on your local computer and signed scripts from Internet.
* You can change your settings back to restricted by running the command:
  * `Set-ExecutionPolicy restricted`
