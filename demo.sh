mkdir sandbox
cd sandbox
git init
touch otogi.txt
git switch -c "branchA"
echo "むかしむかし" >> otogi.txt
echo "あるところに" >> otogi.txt
echo "おじいさんとおばあさんがいました" >> otogi.txt
git add otogi.txt
git commit -m "On branchA, add otogi.txt"
git switch main
git switch -c "branchB"
echo "むかしむかし" >> otogi.txt
echo "あるところに" >> otogi.txt
echo "ハミルトニアンが落ちてました" >> otogi.txt
echo "物理学者はハミルトニアンを対角化ができて満足しました" >> otogi.txt
echo "おしまい" >> otogi.txt
git add otogi.txt
git commit -m "On branchB, add otogi.txt"
git switch main
git merge branchA
cd -
# ここでコンフリクトが起きる 
# git merge branchB
