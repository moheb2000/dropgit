# Dropgit

Dropgit is a shell script that help you use your dropbox as a git remote in linux. It's a very simple script so if you think you can improve it I appreciate that.

## How to use

You can add this script to a directory that is in your PATH. I recommend you add ~/bin directory to your PATH and then copy the script to that directory.
See your PATH:
```
echo $PATH
```
If /home/yourusername/bin is not in your PATH, add following lines to .bashrc file:
```
export PATH=~/bin:"$PATH"
```
Then open terminal in your dropgit directory that download previously and copy the script in ~/bin directory:
```
cp dropgit.sh ~/bin/dropgit
```
Change the permission script to executable:
```
chmod +x ~/bin/dropgit
```
That's it. You can use this script in your git directory. just open terminal in your project directory and run this command:
```
dropgit
```
For push your project, run:
```
git push dropbox master
```
For clone project, run:
```
git clone ~/Dropbox/git/yourprojectname.git
```
## Help this project
I know, this code maybe have a lot of bugs. So if you can help me complete this script I appreciate that.
