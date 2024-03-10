mkdir sandbox
cd sandbox
git init
git switch -c develop
touch otogi.txt
git add otogi.txt
git commit -m "On develop, add otogi.txt"
git switch -c branchA
echo "むかしむかし" >> otogi.txt
echo "あるところに" >> otogi.txt
echo "おじいさんとおばあさんがいました" >> otogi.txt
echo "沖縄に別荘を買ってたので移住しました" >> otogi.txt
echo "おしまい" >> otogi.txt
cat otogi.txt
git add otogi.txt
git commit -m "On branchA, add otogi.txt"
git switch develop
git switch -c branchB
echo "むかしむかし" >> otogi.txt
echo "あるところに" >> otogi.txt
echo "物理学者がきました" >> otogi.txt
echo "どんぶらこ，どんぶらことハミルトニアンが流れてきました" >> otogi.txt
echo "物理学者はハミルトニアンを対角化ができて満足しました" >> otogi.txt
echo "おしまい" >> otogi.txt
cat otogi.txt
git add otogi.txt
git commit -m "On branchB, add otogi.txt"
git switch develop
git merge branchA
# ここでコンフリクトが起きる 
# git merge branchB
