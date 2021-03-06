#!/usr/bin/ruby
#coding: utf-8

class TowerofHanoi
	#インスタンス変数
	#ポール３本はハノイの塔と共に創造される
	#ポールは複数の数字を覚えておくことができる
	attr:poleA, true
	attr:poleB, true
	attr:poleC, true
	attr:count
	def initialize
		@poleA = []
		@poleB = []
		@poleC = []
		@count = 0 #手数
	end

	# 試行錯誤のためのメソッド
	# 1.上から n - 1 個目までの円盤を何らかの方法でAからBに移動する。
	# 2.残った1枚をAからCに移動する。
	# 3.Bにある円盤を何らかの方法でBからCに移動する。
	def moveDiskx
		#1. 1個目までの円盤を何らかの方法でAからBに移動する
		@poleB.push(@poleA.pop)
		# 2.残った1枚をAからCに移動する。
		@poleC.push(@poleA.pop)
		# 3.Bにある円盤を何らかの方法でBからCに移動する。
		@poleC.push(@poleB.pop)
		poles
	end

	#解を求める
	def solve(n)
		if n == 1 then
			moveDisk(@poleA,@poleC)
			printPoles
		elsif n == 2 then
		#n-1個まで、何らかの方法で、AからBに動かす
			printPoles
			solve(n-1)
		end
	end

	#ハノイの塔を再帰的に解いて表示するメソッド
	#n 		:円盤の数
	#start	:スタートする棒の名前
	#goal	:ゴールの棒の名前
	#tmp	:一時置き場の棒の名前
	def hanoi(n, start, goal, tmp)
		#n==0のときおわり
		if n == 0 then
			return
		end
		#(n-1)までの円盤をスタートから一時置き場に…
		hanoi(n-1, start, tmp, goal)
		p "move #{n} to #{goal}" 
		hanoi(n-1, tmp, goal, start)
	end

	#ポールに数字(円盤)を入力しようとすると、一番小さい数字と比較して、乗せてよいかどうかを判定して返す
	#乗せてよい場合は、入力された数字を追加する
	#移動したら手数を追加する
	#
	def moveDisk(from,to)
		#移動可能性を確認する
		if from.size == 0 then
			#移動しようがないのでエラー
			return false
		elsif to.size == 0 then
			#絶対移動できるので移動
		elsif from[from.size-1] < to[to.size-1] then
			# デバッグ用
			# print "from : #{from[from.size-1]} \n"
			# print "to   : #{ to[to.size-1]} \n"
			
			#移動元のサイズが大きいので移動可能
		else
			return false
		end
		#移動する
		to.push(from.pop)
		@count += 1
		return true
	end

	#１〜numberまでの数字をポールAにセットするメソッド
	def setPoleA(number)
		for i in 1..number
			@poleA.push(i)
		end
		@poleA.reverse!
	end

	#ゲッターメソッド
	def getPoleA
		@poleA
	end

	def getPoleB
		@poleB
	end

	def getPoleC
		@poleC
	end

	#初期化メソッド
	def flash
		@poleA = []
		@poleB = []
		@poleC = []
		@count = 0
	end


	#ポールの状態を画面に表示する便利メソッド
	def printPoles
		puts "+++++++++++++++++++++++++++++"
		print "poleA #{poleA} \n"
		print "poleB #{poleB} \n"
		print "poleC #{poleC} \n"
	end
end