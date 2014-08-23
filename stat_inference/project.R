lambda <- 0.2
n <- 1000
sim <- replicate(n,(mean(rexp(40,rate=lambda))))

1)
sim.mean <- mean(sim)
thr.mean <- 1/lambda

diff.mean <- thr.mean - sim.mean

2)
sim.sd <- sd(sim)
thr.sd <- (1/lambda)/sqrt(40)

var(sim)
thr.sd^2

diff.sd <- thr.sd - sim.sd

3)
hist(sim)
qqnorm(sim)
qqline(sim)

4)

conf.interval <- thr.mean + c(-1,1)*1.96*thr.sd
mean(conf.interval[1] < sim & sim < conf.interval[2])


part II

data(ToothGrowth)
tg <- ToothGrowth
tg$dose <- as.factor(tg$dose)
VC <- tg[tg$supp=='VC',]
OJ <- tg[tg$supp=='OJ',]
dose.5 <- tg[tg$dose=='0.5',]
dose1 <- tg[tg$dose=='1',]
dose2 <- tg[tg$dose=='2',]
boxplot(VC$len,OJ$len,ylab='tooth length',names=c('Vitamin C','Orange Juice'),main='Tooth length after Vitamin C vs 
        Orange Juice treatment')
boxplot(dose.5$len,dose1$len,dose2$len,ylab='Tooth length',xlab='Vitamin C doses',names=c('0.5mg','1mg','2mg'),main='Tooth length with different doses of Vitamin C')

boxplot(len~supp,data=tg)
boxplot(len~dose,data=tg)
boxplot(len~interaction(supp,dose),data=tg)


library(dplyr)

tg.grouped <- group_by(tg,supp,dose)
summarise(tg.grouped, mean(len), sd(len))

3)
T.test?

4)
