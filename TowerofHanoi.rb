#!/usr/bin/ruby
#coding: utf-8

class TowerofHanoi
	#仕様
	#ルール
	#３本の杭とn枚の円盤を持っている
	#初期状態は左端の杭に全部乗っている
	#円盤を一回に一枚ずつどれかの杭に移動させることができるが、小さな円盤の上に大きな円盤を乗せることはできない
	#インプット
	#円盤の枚数n
	#アウトプット
	#解法、つまり、それを人間が見せられたら解けるやつ。
		#l回で解けるとして、そのm回目の状態を表示する
		#1回目からl回目までの状態を画面に表示する
	#イメージ
	#leftpole => 1,3,5,8,9
	#centerpole => 2,4,6,7
	#rightpole =>

	#インスタンス変数
	#ポール３本はハノイの塔と共に創造される
	#ポールは複数の数字を覚えておくことができる
	#ポールに数字(円盤)を入力しようとすると、一番小さい数字と比較して、乗せてよいかどうかを判定して返す
	#乗せてよい場合は、入力された数字を追加する
	def initialize
		@leftpole
		@centerpole
		@rightpole
	end

	#ポール間を円盤が移動するメソッド
	#乗せられるかどうかも判定してくれる
	def moveNumber(fromPole,toPole)
	end


	#…と、自我流にやってみたが、なんか良くない予感



end