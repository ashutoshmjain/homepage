# fbterm

The key shortcuts dont work cuz fbterm needs the capabilites for 'cap_sys_tty+ep' . The command `setcap` didnt work on the server. the binaries of package libcap2 were missing. `apt install libcap2-bin ` to solve this issue and run 'setcap 'cap_sys_tty+ep' /usr/bin/fbterm

#ssh authenitcation

After installing openssh thrugh apt, set up public key authentcation. Read the page https://www.ssh.com/ssh/copy-id


