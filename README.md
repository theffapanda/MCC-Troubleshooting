# MCC-Troubleshooting
Helpful Scripts / Troubleshooting information

**EAC Errors on start**

Typically caused by a software error in EAC.
Resolve by Repairing (or uninstall/reinstall) of EAC.

Close MCC (its not launching anyway is it)

Find the easyanticheat_setup.exe file in your Steam/steamapps/common/Halo The Master Chief Collection/installers folder. 

Run and click Repair Service.

Relaunch MCC.

![brave_kpmbpXbZSS](https://github.com/user-attachments/assets/c6f231a8-2b5b-4844-a427-f3bcac07343c)


**Connecting To Server (and other login issues)**

Typical cause of this issue is an Xbox Session loop - basically the server cant confirm you’re logged in or not. A simple log in/out can resolve this in most cases.
If a relog doesn’t resolve the issue for you, you can try clearing all of your XBL Session keys using the following steps.
Close MCC completely
Hit Windows Key
Type "cmd" into the search bar that opens (it should find a command prompt) and open it.
Copy paste "for /F "tokens=1,2 delims= " %F in ('cmdkey /list ^| findstr Xbl') do  cmdkey /delete %G" into the opened command prompt window.
Relaunch MCC and log back in
Note: If you put this into a batch command instead (by creating your own .bat file), replace %F with %%F.
You can also manually delete these entries in the Credential Manager. The above batch file saves you a lot of manual effort, but here’s how to do it manually.
Open Credential Manager, Navigate to Windows Credentials, and find and delete every key containing “XBL”. Delete them by clicking the dropdown error and clicking “Remove”.
343 has acknowledged this issue and in addition to the steps above suggest clearing your web cache.

<img width="1060" height="941" alt="brave_H6gHs3zkGy" src="https://github.com/user-attachments/assets/63a70d1d-c45a-4f0f-9149-3838dc4a086d" />

Never worked from my experience but listing here for reference.
If you receive an error around Phone Verification the following Cache/Clear step appears to fix it.

<img width="619" height="716" alt="brave_5ymS0DXVFr" src="https://github.com/user-attachments/assets/56eadcf6-8de3-41f0-9682-03a8431c9aab" />


Note: This also fixes the “We can’t sign you in because your account has been suspended from Xbox Live” as shown below.

<img width="556" height="743" alt="image" src="https://github.com/user-attachments/assets/2ac1cf1d-1b10-470c-b985-823a68b16a8e" />

Steps to resolve:

1) Have someone else log into your account.
2) Clear your XbL credentials as mentioned above
3) Log back into your account.

As far as I can tell this is caused by a temporary IP ban from Microsoft from making multiple accounts.
Removing the credentials seems to remove the traces and allow you to queue again.

I dont know, I don’t make the rules I can only attempt to interpret them.

I've also included a batch script here that you can use.

**Not Spawning (Stuck on Scoreboard at start)**
This happens mainly in H2A games.
Leave and rejoin. Im fully aware rejoin isnt fully functioning anymore, oof.

**Steam Console**
We can use the Steam Console to help get some basic troubleshooting information if MCC is failing to launch.

Press the Windows Key + R

Enter steam://open/console and the press Enter

This will add a console section to Steam with information about the processes being handled by Steam.
In the example below I’ve launched MCC after opening the console. 

<img width="1117" height="389" alt="image" src="https://github.com/user-attachments/assets/94dfdc55-262f-470d-997d-a4ab504e139b" />
