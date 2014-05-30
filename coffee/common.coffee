# 1行コメント
# コンパイル時には消される

###
複数行コメント
コンパイル時にも残る
###

test = ->
	a = test;
	
	i = a + 'test'
	
	
	return false

for i in [0...10]
  console.log i
  
arr = ["a", "b", "c", "d", "e"]
for val, i in arr
    console.log "#{i}: #{val}"


for [0...10]
  console.log _i

###
 * ドックコメント（？）も書いておけたりとか
 * @param {Number} param1 引数1
 * @return {Number} 引数1を2乗した数値
###

# 関数宣言
# 関数名 = (引数[ = デフォルト値], ...) -> 実装
# 戻り値は最後の行を評価した値
func1 = (x, y = 1) -> x + y

# 改行する場合はインデントを付ける
func2 = (x, y = 1) ->
  return x + y  # 明示的にreturnを付けてもOK

# インデントを深く深く
func3 =
  (x, y = 1) ->
    x + y

# func1, func2, func3 はまったく同じようにコンパイルされる

# 関数呼び出し
func1(1)     # 2
func1(1, 1)  # 2

# 引数が1つ以上ある場合は括弧が要らない
func1 1     # 2
func1 1, 1  # 2

# 引数のない関数
func4 = () -> 1

# 下記の2つは意味が違う……
a = func4()  # 1
b = func4    # func4

#配列と連想配列というかオブジェクト
#----------------------------------------------------------------------

# 配列
a = [1, 2, 3]    # [1, 2, 3]
b = [1, 2, 3, ]  # [1, 2, 3]
c = [
  1,
  2,
  3,
]                # [1, 2, 3]

# オブジェクト
obj1 = { a: 1, b: 'str'}

# YAML風の書き方（？）
# インデントが大事
obj2 =
  a: 1
  b: 2
  c:
    d: 'd'
  typeof: 'str_typeof'

obj1.a  # 1
obj1.b  # str

obj2.a       # 1
obj2.typeof  # str_typeof
# 予約語が使われた場合、obj2["typeof"]のようにコンパイルされる

#(if|unless)-else
#----------------------------------------------------------------------

# 普通のif-else文
# やっぱりインデントが大事
if true
  alert 'true'
else
  alert 'false'
# alert('true')

# Rubyでおなじみunless
unless false
  alert 'false'
else
  alert 'true'
# alert('false')

# Rubyで言うif修飾子
# もし真ならaaaに0を代入（必ず代入されるけど……）
aaa = 0 if true  # 0

# unless修飾子
# もし偽ならbbbに1を代入（必ず代入されるけど……）
bbb = 1 unless false  # 1

# 三項演算子もどき
# 三項演算子にコンパイルされる
ccc = if true then 1 else 0  # 1

# 改行する場合はインデントを揃える
ddd =
  if true
  then 1
  else 0  # 1

# memoizeが偽ならオブジェクトを代入
memoize = false
memoize or= {}  # {}

# flagが真なら1を代入
# どこで使うんだろう？
flag = true
flag and= 1  # 1