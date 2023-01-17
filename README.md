# pdf-to-csv

## 概要

PDFファイルの内容をCSVへ書き出すためのアプリケーションです。

Rails version: 7.0.4.1  
Ruby version: 3.1.2p20

## 制作経緯

Webサイトのフロントコーディングを行う際に、テンプレートエンジンで配列ループを行うことが多々ある。

1. XD等のデザインファイルからテキストを抽出(XDのままではテキストコピーがしづらいため、PDF変換を行う場合も有る)
2. 抽出したテキストをスプレッドシートに貼り付ける
3. 関数を用いて配列のフォーマットに合わせる

配列の作成には主に上記の手順を用いるのだが、コンテンツ量によっては1,2の工程に時間がかかってしまう。  
上記問題の解消をしたいと思い、制作に至る。

## 機能※随時更新

- PDFのアップロード
- PDFをCSVへ変換
- CSVのダウンロード