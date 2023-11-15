grep [옵션][패턴][파일명/디렉토리]
-r옵션 : 디렉토리 내 모든 파일에서 검색
-i옵션 : 대소문자 구분 없이 검색 
-n옵션 : 라인 출력

rin 의 순서는 상관 없다
rin, rni, inr 결과값은 같음
예시 grep -rn "hello" mydir
mydir 안에 모든 파일에서, hello 를 찾음

grep -rn "hello" .
현재 폴더에서 찾는다
회사에서 중요 파일 찾을때 유용하게 사용됨.

find . -name "*.txt"
#  ~.txt 라는 이름을 가진 파일을 지금 부터 다 찾는다

#  | 넘겨준다.
#  xargs 하나씩 읽어준다.

 find . -name "*.txt" | xargs grep -rni "hello"
# ~.txt 라는 이름을 가진 파일을 찾아서 넘겨주고 하나씩 읽어준다.
 
 find . type d # 디렉토리 찾기
 find , type f -name "*.txt" # 파일 찾기 7 번째줄 찾기

 -exec,\,{}
 - exec : find 로 찾은 결과에 대해 실행명령
 - \ : exec의 종료지점을 의미
 - {} : find로 찾은 대상이 담기는 공간을 의미
 find . -name "*.txt" exec cp -r{} ./testFolder/ \
 {} 안에 *.txt 값이 담겨 있음
 ./testFolder/ : 복사할위치 testFolder 로도 가능 
 \ 종료시켜주기

# 띄어쓰기 주의
find . -name "*.txt" -exec grep -rn "hello" {} \;
# cp -r 폴더 까지 복사 
# txt 붙은 파일 testFolder에 만든다.
mkdir testFolder
find . -name "*.txt" -exec cp -r {} testFolder \;

#새로운 유저를 만들면서 홈 디렉토리 까지 지정.
sudo useradd -g songboseok -d /home/newuser1 newuser1
# 신규유저 패스워드 설정
sudo passwd newuser1
# newuser1계정으로 전환
sudo su newuser1, su newuser1 > password 

newuser1 은 soboseok 그룹이지만 soboseok은 아니다.

권한관계 암기
읽기쓰기실행
4(r)2(w)1(x) > 7은 다가짐, 6은 rw
chmod 550 test.txt > rx 
-r-x--x--- : 본인: 이ㄹ기 실행, 그룹 실행, 그 외 아무것도 안됨
# 기호적 표기법, 더하고 빼고
chmod u+x test.txt : 소유자에게 실행 권한 추가
chmod g-w test.txt : 그룹에 쓰기 권한 제거
chmod o=r test.txt : 제3자 권한을 읽기만 가능하게 설정



# 현재계정목록조회
cat /etc/passwd

# 계정삭제
sudo userdel newuser1
# 디렉토리까지 삭제
sudo userder -r newuser1

chown 소유자:소유그룹 파일명
ex)sudo chown newuser1:songboseok test.txt 
# 파일의 주인이 바뀜 test.txt 파일 주인이 송보석 > newuser1 로 바뀜


nginx # "라우팅" 역할을 해준다 빽빽단
# 가운데에서 뿌려주는 역활
sudo systemctl start nginx
sudo systemctl stop nginx
ps -e # 프로세스 돌아가는 모든 프로세스
ps -f #"full format"표시
- PID(프로세스 ID) , PPID(부모 프로세스 ID)
kill-9[PID] # 프로세스 죽임, 안 쓰는거 추천 깔끔하게 안 죽기 때문에
ps | grep 같이 많이 사용 한다.
ex) ps -e | grep -i "nginx"

ipconfig : ip정보 등 네트워크 설정정보 출력
ping :[hostman/IP] 네트워크 연결상태 확인
nc-zv 또는 telnet : 특정 port까지 열려있는지 확인
port : 특정 서비스
nc : 넷캣
nc -zv naver.com 443
출력값 : Connection to naver.com (223.130.195.95) 443 port [tcp/https] succeeded!
# 네이버 살아있나 확인

netstat : 현재 서버에 연결된 네트워크 정보 출력

ssh : 원격 호스트와의 터미널 세션을 제공 >> 원격으로 연결한다
ssh [username]@[hostman/IP] >> 아이디,비밀번호 로그인
ex) ssh songboseok@127.0.0.1
하지만 127.0.0.1 에 user가 등록되어있어야함

scp : 파일 전송 ex) scp [source = 무슨파일?] [destination]
ex) scp test.txt 127.0.0.1 >> ssh와 권한 동일

