# conflict_iyada

Git のマージにおいてコンフリクトを起こすためのスクリプト

## 準備

```
$ git clone https://github.com/terasakisatoshi/conflict_iyada.git
$ ls
demo.sh # sandbox ディレクトリをリポジトリとして初期化，コンフリクトを起こす一歩手前まで作る
clean.sh # sandbox を消す
```

ユーモアのセンスを頭にインストールする．次のセクションに移動します

## `bash demo.sh` がやること

- `sandbox` というディレクトリを作る
- `develop` ブランチ（これをデフォルトブランチとしておく）
- `develop` ブランチ上で `otogi.txt` という空のファイルを作成しそれをコミットする
- `develop` ブランチを起点に `branchA` を作る
- `branchA` ブランチ上で下記の文章を `otogi.txt` に保存する:

```
むかしむかし
あるところに
おじいさんとおばあさんがいました
沖縄に別荘を買ってたので移住しました
おしまい
```

- これをコミットする
- 一旦 `develop` ブランチ戻る(`otogi.txt` は空の状態)
- `develop` ブランチを起点に `branchB` を作る
- `branchB` ブランチ上で下記の文章を `otogi.txt` に保存する:

```
むかしむかし
あるところに
物理学者がきました
どんぶらこ，どんぶらことハミルトニアンが流れてきました
物理学者はハミルトニアンを対角化ができて満足しました
おしまい
```

- 一旦 `develop` ブランチ戻る(`otogi.txt` は空の状態)
- `git merge branchA` によって `branchA` を `develop` ブランチにマージします．
- `otogi.txt` は `branchA` での変更が反映されます．

## ここで `git merge branchB` をするとどのようになるでしょう？

```
$ cd sandbox
$ git merge branchB
```

コンフリクトが発生します．（嫌だ嫌だ！）

![](iyadaiyada.webp)

VS Code なら簡単に解決できます．

[手順書はこちら](https://github.com/AtelierArith/intro2software_with_julia/issues/7)


