# 사용자가 현재 위치에 있는 폴더 경로 출력
pwd
# 현재 위치에 있는 파일, 폴더 목록
ls
# 현재 위치에서 파일, 폴더 목록 + 자세히
ls -l
# + 숨김파일
ls -a
# 두개 같이
ls -al
# 디렉토리 생성
mkdir boseok_dir
# 홈 디렉토리 이동
cd
#root 디렉토리 이동
cd /
# 다시 기존 폴더 이동
cd /home/songboseok/boseok_dir
# 상위 디렉토리 이동
# cd ..
# 비어있는 파일 만들기, 이미 있으면 시간만 바뀐채로 생성
touch first_file.txt
#파일 내용 조회
cat first_file.txt
# 터미널창에 문자열 출력
echo "hello world"
# echo 를 통해 파일에 write 하는 방법
echo "hello world" > first_file.txt

# history명령어를 통해 이전에 실행했던 명려어 조회
history
# 자동완성 tap

# 입력중인 명령창 
clear   

# 모든 권한주기
chmod 777 myscript.sh
# 실행하기
./myscript.sh

# rm 삭제명령어 . rm -r은 디렉토리까지 삭제 
# rm -rf 디렉토리까지 묻지 않고 삭제
rm -rf boseok_dir

# 파일 디렉토리 복사
# cp 복사대상 복사된파일명새로생성됨
# 디렉토리는 -r 을 써줘야 한다. cp -r ~
cp first_file.txt second_file.txt # second_file 을 만드는데 내용물은 first_file과 동일

# mv 이동명령어 (r 옵션 필요x)
# mv 이동대상 이동된파일명(경로포함)
# test_dir 을 boseok_dir/second_dir 로 이동, 파일명변경도 가능
mv test_dir/ boseok_dir/second_dir 

#head cat처럼 파일을 출력 . 상위 n행 조회
#tail 하위 n행 조회

head -5 ~ , tail -5 ~, # 5행 조회

# echo 모드
# > 표준 출력의 결과를 덮어쓰기로 저장, >> 추가모드

# 파일을 읽기 위해서는 <를 사용
#sort 명령어와 함께 많이 사용
sort < first_file.txt

1. basic_script.sh
2. basic_script_practice.sh
- echo "script practice1"
- mkdir mydir
- mydir 이동 후 file.txt, file2.txt
- file1.txt  "Hello from file1" 문구 입력
- file2.txt  "Hello from file2" 문구 입력
- file1.txt 파일 복사본 생성 (file1_backup.txt)
- file2.txt 파일 이름 (file2_rename.txt) 변경
- 터미널창에 script practice1 complete 출력

# 과제 1
nano basic_script.sh
nano basic_script_practice.sh

chmod 777 basic_script_practice.sh

echo "script practice1 start"
mkdir mydir
cd mydir
touch file1.txt
echo "Hello from file1" > file1.txt 
touch file2.txt
echo "Hello from file2" > file2.txt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
echo "script practice complete"