file_count=0
directory_count=0
else_count=0
# 산술 연산자는 (()) 괄호를 두 개 사용 해야한다.
for a in *
do
    if [ -f "$a" ]; then
    ((file_count++))
    elif [ -d "$a" ]; then
    ((directory_count++))
    else
    ((else_count++)) 
    fi
done
echo "file's count : $file_count"
echo "directory_count : $directory_count"
echo "else_count : $else_count"