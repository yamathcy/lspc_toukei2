# 等分散仮定なしの2標本の平均の検定
# ケース3 血圧 血圧測定の方法が施設によって違うことが発覚した．上腕式で測った20人をA,手首式で測った20人をBとして無作為抽出した．
# 最低血圧の平均に差はあるだろうか？

# 仮説
# 帰無仮説 Aの平均 = Bの平均
# 対立仮説 Aの平均 ≠ Bの平均
# 有意水準は0.05

# 検定：ウェルチの方法により行う
# データを読み込み
pressure <- read.csv('./pressure.csv')

# グラフの作成
boxplot(pressure$A, pressure$B, names=c("A","B"))

# 検定する
# 対応なしなのでpaired = F(False)とする 
# 違うかどうかなので両側検定
# 等分散を仮定しないvar.equal = F(False)とする
t.test(pressure$A, pressure$B, paired=F, alternative="two.sided", var.equal=F)

# Welch Two Sample t-test
# 
# data:  pressure$A and pressure$B
# t = -1.2176, df = 36.406, p-value = 0.2312
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -7.195586  1.795586
# sample estimates:
#   mean of x mean of y 
# 76.4      79.1 
# p値 = 0.2312 > 0.05 = 有意水準なので帰無仮説は棄却できず，2つのグループの血圧の母平均に差はない

