echo "Creating an uncompressed tar Archive"
tar cvf file.tar hello1.txt
ls

echo ""
echo ""

echo " gzip compression on the tar Archive, using option -z"
tar cvzf file1.tar.gz *.txt
ls

echo ""
echo ""

echo " Creating compressed tar archive file using option -j"
tar cvfj file2.tar.tbz hello1.txt
ls

echo ""
echo ""

echo " Check size of existing tar, tar.gz, tar.tbz"
tar czf file2.tar.tbz | wc -c

echo ""
echo ""

echo " Update existing tar file"
tar rvf file.tar hello2.txt
ls

echo ""
echo ""

echo " List the contents and specify the tarfile using option"
tar tf file.tar

echo ""
echo ""

echo "Applying pipe to through grep command"
tar tvf file.tar | grep "hello"

echo ""
echo ""

echo "Viewing the Archive"
tar tvf file.tar

echo ""
echo ""

echo "pass a file name as an argument to search a tarfile"
tar tvf file.tar hello1.txt

echo ""
echo ""

echo "Verifies the integrity of an archive"
tar -vcW 100M file.tar hello2.txt

echo ""
echo ""

echo "Updates or adds files or directories to an already existing archive"
tar -Avf file.tar hello3.txt
ls

echo ""
echo ""

echo "Extracting files from Archive using option -xvf"
tar xvf file.tar
ls

echo ""
echo ""

echo "Untar single tar file "
tar xvfj file2.tar.tbz
ls

echo ""
echo ""

echo " Extracting a gzip tar Archive *.tar.gz using option -xvzf :"
tar xvzf file1.tar.gz
ls
