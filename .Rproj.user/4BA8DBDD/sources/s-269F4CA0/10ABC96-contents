# ケース2 コレステロール値の平均の差
# 生活習慣の違いによりグループA/Bに分けてコレステロール値を記録
# 母分散は不明だが，AとBの分散は等しいと考える

# 仮説
# 帰無仮説 Aの平均 = Bの平均
# 対立仮説 Aの平均 ≠ Bの平均
# 有意水準は0.05

# データを読み込み
cholesterol <- read.csv('./cholesterol.csv')

# グラフの作成
boxplot(cholesterol$A, cholesterol$B, names=c("A","B"))

# 検定する
# 対応なしなのでpaired = F(False)とする 
# 違うかどうかなので両側検定
# 等分散を仮定するのでvar.equal = T(True)とする
t.test(cholesterol$A, cholesterol$B, paired=F, alternative="two.sided", var.equal=T)

# 結果 Two Sample t-test
# 
# data:  cholesterol$A and cholesterol$B
# t = 0.87072, df = 38, p-value = 0.3894
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -5.299871 13.299871
# sample estimates:
#   mean of x mean of y 
# 199.25    195.25 

# p値 = 0.3894 > 有意水準 = 0.05 なので帰無仮説は棄却できず2グループ間に有意差なし
