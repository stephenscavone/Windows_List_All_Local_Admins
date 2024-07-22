#This script will echo all local admins on a computer and format the username so that it reads as hostname\username1,hostname\username2 etc. all on one line
$admin = (Get-LocalGroupMember - Group Administrators | foreach { $_.Name }) -Join ","
echo $admin