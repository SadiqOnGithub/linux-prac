# linux terminologies

boot loader, services, 

linux distribution = linux kernel + tools


## chapter 3

BIOS -> -> boot loder -> kernal and initial RAMS ->  

/sbin/init  => /lib/systemd/systemd

command used for systemd: `systemctl`    // sys control


### file systems

FSH => file system hierarchy

apparmor


##  Chapter 7. Command Line Operations 

cat. head, tail, man

sudo 

sudo telinit 3, || stop GUI  // sudo systemctl stop gdm/lightgm 

sudo telinit 5, || start GUI  // sudo systemctl start gdm/lightgm   

shutdown || -h, -r, -c,   || e.g : shutdown -h 10:00 "shutting down for maintenance" 

halt & poweroff

which diff   || locate package 

whereis diff  || "      "       in broader way

cd 

cd -

tree

tree -d  || without file names?

ln  || for links, hard-links and soft-links  // before 2:45

wc  || print newline, word, byte-counts

cat -n || with line numbers  || all at once

tac || prints backwards

less ||  page-wise

head -20 || pint top lines  || default is 10

tail -20 || pint last lines  || "

touch || manipulate timestamp but can create a new placeholder file

rm -fr  || all content with force

rm -i || prompt before removal

### Standard File Streams

stdin  |  stdout  |  stderr

#### redirecting I/O

do_something < input-file  ||  > output-file  ||  2> err-file

do_some > out-file 2>&1  // redirect the stderr to same place as stdout

do_some >& out-file  // same func as above

#### pipes & pipelines

cmd1 | cmd2 | cmd3 |

#### search files

locate | find | grep

locate <filename>  // it is depend upon database so might not found newly files

sudo updatedb  // to update the files

find . -name "<filename>"

##### matching file names and wildcards

? | letter;  * | string;   [abc];   [!xyz]

find  <dirname>  -type f -iname "Filename" 

flags: -name, -iname  // specific pattern in name, -iname ignore case-letters

     : -type  // certain type only like d, f, l, c

     : -ctime n, -n, +n // n*days

     : -ctime, -atime, -mtime || -cmin, -amin, -mmin    //    Accessed, Changed, Modified

     : -size n[cwbkMG],  

     : -maxdepth n


### package management  

dpkg --install foo.deb 
dpkg --remove foo
dpkg --list 
dpkg --listfiles foo   // list pkg info
dpkg --search file   // what pkg is file part of?