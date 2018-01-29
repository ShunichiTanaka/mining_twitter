# README

mecabのコンパイル  
$ cd lib/mecab-0.996  
$ ./configure --enable-utf8-only  
$ make

ビルド成功確認  
$ make check 

`
    ==================

    All 3 tests passed

    ==================
`

mecabインストール  
$ make install  

IPA辞書のコンパイル  
$ cd lib/mecab-ipadic-2.7.0-20070801  
$ ./configure --with-charset=utf-8  
$ make  

IPA辞書インストール  
$ make install


辞書作成  
$ cd lib/mecab-ipadic-2.7.0-20070801  
$ vim hoge.csv  

`
仮想通貨,1,1,10,名詞,一般,*,*,*,*,仮想通貨,カソウツウカ
`

エンコードをutf8からeucに変換  
$ iconv -f utf-8 -t eucjp hoge.csv > hoge_euc.csv  

辞書ファイル適用  
$ make clean  
$ make install  
