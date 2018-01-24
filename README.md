# README

mecabのコンパイル
$ cd lib/mecab-0.996
$ ./configure --enable-utf8-only
$ make

ビルド成功確認
$ make check
> ==================
> All 3 tests passed
> ==================

mecabインストール
$ make install

IPA辞書のコンパイル
$ cd lib/mecab-ipadic-2.7.0-20070801           
$ ./configure --with-charset=utf-8
$ make

IPA辞書インストール
$ make install
