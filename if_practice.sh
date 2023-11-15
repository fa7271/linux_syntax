# 1번 예제
mkdir mydir
cd mydir
touch first.txt second.txt
file=first_file.txt
if [ -f "$file" ]; then
    echo "$file exist"
else
    echo "$file does not exist"
fi