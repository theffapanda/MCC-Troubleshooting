# MCC-Troubleshooting
Helpful Scripts / Troubleshooting information

<h1>Updated January 2026 - Can't Close MCC</h1>

If youre getting the bug w/ MCC where you close the game but it gets stuck on "Stopping..." in Steam, forcing you to restart your computer can you try the steps below. 

1) Open the task manager
2) End the Easy Anti Cheat Service (may have a different name)
3) End the game you're playing

This worked once for me, need more testing.

Edit: 

Run a command prompt as Admin. Put in the command "taskkill /F /IM steam.exe /T" without the quotes. Test.
Note: I've seen some success with ending the Epic Games Launcher / Epic Online Services as well. Some weird dependency here, idk yet. Will write an updated script to nuke everything MCC / EOS and post it after testing.

<h1>Added November 3rd 2025 - Login Issues</h1>

If you are getting the gray box popup when trying to login to MCC right now follow these steps.

1. Try Logging in until you get to that popup screen.
2. On that popup, hit Alt+F4 to force-close MCC.
3. Relaunch MCC.


This should work for most. If it doesnt, proceed further.

4. Close MCC.

5. Clear your Credential Manager of any XbL related entries, and clear your Steam Webcache.

You can do this manually. I've also created a Batch Script you can download and run here.
Its called ClearCredentials.bat. Download it to your desktop, run it.
It's open source, read what its doing. Dont blindly trust things you find online. If you have questions on the syntax etc ask me.

6. Relaunch MCC
   
This should get you past this server issue until Halo Studios can work out the issues on their end. Take care!

**Added November 3rd 2025**

If the above methods don't work, on the Gray Box hit Escape and then click "Cancel" in the offered choices (Don't click Retry, it will begin the loop again). 
This may take you directly to the main menu and fix the issue.

<h1>Can't find games when searching Matchmaking (Microsoft Store Version)</h1>
<del>This version of the game is still broken as of September 2nd 2025. It broke on February 28th 2025.
No fix is in sight. Buy the game on Steam in the meantime.</del>
This was fixed in a September patch.

<h1>Black Box / "Too many requests" error 2025</h1>

<img width="1462" height="907" alt="ApplicationFrameHost_FGeD8Humc2" src="https://github.com/user-attachments/assets/c313f548-f1dd-4d50-b353-8a337c92690d" />

If you're met with this grey box when trying to log in, simply Alt+F4 and relaunch.

[Guide](https://www.youtube.com/watch?v=dtt5Z1fq0DI)

<h1>EAC Errors on start</h1>

Typically caused by a software error in EAC.
Resolve by Repairing (or uninstall/reinstall) of EAC.

Close MCC (its not launching anyway is it)

Find the easyanticheat_setup.exe file in your Steam/steamapps/common/Halo The Master Chief Collection/installers folder. 

Run and click Repair Service.

Relaunch MCC.

![brave_kpmbpXbZSS](https://github.com/user-attachments/assets/c6f231a8-2b5b-4844-a427-f3bcac07343c)


<h1>Contacting Server (and other login issues)</h1>

2025 Update: This MAY be caused by a timezone mismatch; be 100% sure your timezone is set properly on your PC before proceeding.
Also ensure if you usually play on or off of a VPN that you turn your VPN on/off as appropriate. It can prevent you from logging in properly and breaks this process.

**Download and run the .bat file in this repo to clear your cache / credential manager**. Step by step listed out below. 

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

<h1>Not Spawning (Stuck on Scoreboard at start)</h1>
This happens mainly in H2A games.
Leave and rejoin. Im fully aware rejoin isnt fully functioning anymore, oof.

<h1>Steam Console</h1>
We can use the Steam Console to help get some basic troubleshooting information if MCC is failing to launch.

Press the Windows Key + R

Enter steam://open/console and the press Enter

This will add a console section to Steam with information about the processes being handled by Steam.
In the example below I’ve launched MCC after opening the console. 

<img width="1117" height="389" alt="image" src="https://github.com/user-attachments/assets/94dfdc55-262f-470d-997d-a4ab504e139b" />

<h1>Stutters / "Hitching"</h1>

There are a million reasons this can happen - BUT, the community has found a handful of fixes for these issues some writing them below. 
Consider these to be sanity checks / things you can check if you've run out of ideas.

1) Overclocked controllers - if you are running a controller at 8Khz, reduce to 1Khz and look for improvement.
2) Easy Anti Cheat - run MCC w/ EAC disabled. If this improves performance, re-run the EAC installer (inside of MCC's files)
3) Mismatched Framerates - if you have multiple monitors with different framerates, its possible (especially w/ GSync) that the mismatch causes problems. Sync the two framerates (usually by lowering the higher, sorry!)
4) MicrosoftGameInput - Remove this from your installed App/Programs. Known to cause issues with framerates in MCC, particularly when swapping between MnK/Controller.

<h1>Restarting Search</h1>

If you find your lobby constantly cycling between “Connecting Session” and “Restarting Search”, there doesn’t appear to be anything client side we can do to resolve. 
This broke in ~July 2023. 343 has claimed this issue is not happening on their end and to contact your ISP. Rightttttttt

<img width="991" height="678" alt="image" src="https://github.com/user-attachments/assets/cc948e75-5790-4a55-be06-c1d7dbe74000" />


<h1>Fatal Error</h1>
Probably the trickiest error to resolve. I’ve seen some users where they had a faulty USB port on their PC which was causing the entire game to crash. 

Easiest way to track these down is through the Problem Reports section in Windows.
Press the Windows Key and type “Problem Reports".
You should have a row for Halo: The Master Chief Collection which you can double click.
If you don’t understand the Exception Codes - google them.

<img width="1063" height="442" alt="image" src="https://github.com/user-attachments/assets/00a6c07e-6025-4ed7-99f1-086d0043b9e2" />


There are alternative ways to track these down as well. 
MCC may not write any information to the Problem Reports section.
For these more pesky errors we’ll need to go to the Event Viewer (or worst case scenario the dmp files).

Open the Event Viewer, expand Windows Logs and click the Application section.
By default it's sorted by Date and Time.

<img width="238" height="222" alt="image" src="https://github.com/user-attachments/assets/c3e0a1a2-03cf-46b5-91df-a34764300903" />

Find the related crash log (will have a yellow exclamation mark) and review the details.

Option three: find the AppData/LocalLow/MCC/Saved/Crashes folder.
The most recently created error folder will be at the top.
You can open the .dmp file with WinDbg and see something like the following:

<img width="993" height="729" alt="image" src="https://github.com/user-attachments/assets/22feec23-2afe-4908-859f-0fb9ef725fca" />

<img width="997" height="503" alt="image" src="https://github.com/user-attachments/assets/fa6ed3f0-71f7-4012-bc22-4684a4445f78" />


Fun fact: the above null pointer error is the cause of the fatal error crash when trying to switch between Xbox Live accounts.

If you are too lazy to google the associated error codes/details: 
Go to Discord, add “theffapanda” as a friend, send screenshots of the errors you found and pray.

<h1>Game Crashing during Campaign Cutscenes</h1>

Lower FPS to 60 (or essentially half of your fps; if 240 hz monitor, choose 120, if 120 choose 60, etc).
Not sure the cause, listing here as a community fix.
