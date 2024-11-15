案1 
各プロセスごとに、必要なテーブルに登録するデータを全てまとめた巨大JSON1ファイルをもとに、DBへの登録を行う
{
  run_id: 1,
  process_pattern_group_index: 2,
  process_pattern_index: 5,
  coat_result: {
  },
  other_table: [
    {...}, {...}
  ]
}
案2 
各テーブルごとにテーブル名.jsonを作成してもらう。いくつかのファイルから構成される1プロセス分のデータを登録する
process_result.json
{
  run_id: 1,
  process_pattern_group_index: 2,
  ...
}
coat_result.json
{ ... }

案1 or 案2のどっちになるかわからない。

実際にテスト用のresult.jsonをもとに、DB登録するプログラムを試しに作ってみてほしい。
 
目的
 
- 案1と案2どちらがよさそうか決める
- 適切なJSONの形式を決める
    - ファイル名の使い方

条件
- 異なるプロセス結果のJSONでも、同じプログラムで登録できるようにする
- DB操作はprismaというORMを使ってほしいです
    - Prisma | Simplify working and interacting with databases
- 複数プロセスのresult.jsonが、同一のS3バケットに保存されます
    - 案2がやりづらくなる。案2をつかう場合はこれに対応する必要あり
    - いいかんじの方法あれば教えてください！
↑について、lambda上で動かす必要はないです！
ローカルPC上で、設置されているjsonファイルを読み込みながら動作するTypeScriptプログラムを作成していけばOKです。
![alt text](image.png)
