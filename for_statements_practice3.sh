echo "for statements practice3 start"
if [ -d "mydir3" ]; then
    cd mydir3
else:
    mkdir mydir3
    cd mydir3
# 파일 생성, 넣기

for i in {1..100}
    do
    touch file$i.txt
    for j in {1..100}
    do
        echo hello wolrd$i >> file$i.txt
    done
done
for x in {1..100}
    do
    cat file$i.txt
echo "practice complete"

for i in {1..100}
do
    rm -rf file$i.txt
done
