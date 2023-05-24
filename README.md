# README

## RubyKaigi 2023 の Power up your REPL life with types

公式リポジトリ: https://github.com/tompng/katakata_irb

---

## gem katakata_irb

katakata_irb gem は Ruby の型定義情報を使って irb の補完機能を強化するための gem です。

その名の通り irb を強化するための gem ですが、
rails console やデバッグに binding.irb をつかった場合にも入力補完機能も強化される。

---

## 導入手順

### instal gem

```bash
gem install katakata_irb
```

```
group :development do
  gem 'katakata_irb', require: false
end
```

### プロジェクト直下に .irbrc ファイルを作成

```bash
touch .irbrc
```

### .irbrc にロードする設定を書く

```
require 'katakata_irb' rescue nil
```

### irbを起動して挙動の確認
irb コマンドまたは rails console コマンド経由で irb を起動する。
いい感じにサジェストされるか実験。

```
irb(main):001:0> require 'katakata_irb'
=> true
irb(main):002:0> [1,'a'].sample.a█
                |[1,'a'].sample.abs        |
                |[1,'a'].sample.abs2       |
                |[1,'a'].sample.allbits?   |
                |[1,'a'].sample.angle      |
                |[1,'a'].sample.anybits?   |
                |[1,'a'].sample.arg        |
                |[1,'a'].sample.ascii_only?|
```

```
irb(main):001:0> require 'katakata_irb'
=> true
irb(main):002:0> a = 10
=> 10
irb(main):003:1* if true
irb(main):004:2*   b = a.times.map do
irb(main):005:2*     _1.to_s
irb(main):006:1*   end
irb(main):007:1*   b[0].a█
                  |b[0].ascii_only?|
```

## 備考
irbを起動して何かしらの入力を行い終了すると、
irbで入力した履歴が追記されていく`.irb_history`というファイルがプロジェクト直下に作成される。
