lambda <- 0.2
n <- 1000
sim <- replicate(n,(mean(rexp(40,rate=lambda))))

1)
sim.mean <- mean(sim)
thr.mean <- 1/lambda

diff.mean <- thr.mean - sim.mean

2)
sim.sd <- sd(sim)
thr.sd <- 1/lambda/sqrt(40)

diff.sd <- thr.sd - sim.sd

3)
hist(sim)
qqnorm(sim)
qqline(sim)

4)


part II

data(ToothGrowth)

tg <- ToothGrowth
summary(tg)

3)
T.test?

4)
