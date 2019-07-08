# 対応あり２標本平均の検定
# ケース4 飲むとやせるドリンクの効果を検証するため，無作為に選んだ18人に対し，飲む前のウエストと，4週間飲み続けた後のウエストを計測した．
# 飲む前をA,飲んだ後をBとする．このデータから，このドリンクに効果があるといえるか．

# 仮説
# 帰無仮説 Aの平均 - Bの平均 = 0
# 対立仮説 Aの平均 - Bの平均 > 0
# 有意水準は0.05

# 検定：対応のあるt検定により行う
# データを読み込み
diet <- read.csv('./diet.csv')

# グラフの作成
# 対応ありなので線グラフで
matplot(t(diet[,1:2]), ylab="waist size", xaxt="n", type="l")
axis(1, c(1,2), c("A","B"))

# 検定する
# 対応ありなのでpaired = T(True)とする 
# ダイエットの効果を知りたいので上片側検定
t.test(diet$A, diet$B, paired=T, alternative="greater")

# Paired t-test
# 
# data:  diet$A and diet$B
# t = 1.8329, df = 17, p-value = 0.04219
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   0.04865596        Inf
# sample estimates:
#   mean of the differences 
# 0.9555556 

# p値 = 0.4219 < 0.05 = 有意水準なので帰無仮説は棄却，ドリンクの摂取によりウエストサイズの母平均は減少したと判断．