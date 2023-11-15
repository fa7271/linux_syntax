# 심화 포문 사용해 hellow world 1, hellow world2 100가지 문구 담긴 파일
# mydir2 디렉토리 만들어서 아무파일생성
# 파일안에 helloworld ~ helloworld 100 까지 입력

nano for.sh
chmod 777 for.sh


echo "start"
if [ -d "mydir2" ]; then
    cd mydir2
else:
    mkdir mydir2
    cd mydir2
echo "for_file 안에 hello world문 1~100 까지 출력"
file=for_file.txt
if [ -f "$file" ]; then
    echo "exist"
else
    echo "not exist"
    touch "$file"
    for a in {1..100}
    do
        echo "hello world$a" >>"$file" 
    done
fi
cat for_file.txt
echo "끝"