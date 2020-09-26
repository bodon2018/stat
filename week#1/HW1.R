#### PROBLEM 1.44 #####

ssha <- c(154, 109, 137, 115, 152, 140, 154, 178, 101, 
          103, 126, 126, 137, 165, 165, 129, 200, 148)

sshs.mean <- mean(ssha)
print(sshs.mean)

ssha.median <- median(ssha)
print(ssha.median)


boxplot(ssha, border=c('blue'))


ssha_minus_outlier <- c(154, 109, 137, 115, 152, 140, 154, 178, 101, 
                        103, 126, 126, 137, 165, 165, 129, 148)

ssha_minus_outlier.mean <- mean(ssha_minus_outlier)
print(ssha_minus_outlier.mean)

ssha_minus_outlier.median <- median(ssha_minus_outlier)
print(ssha_minus_outlier.median)

#### PROBLEM 1.64 #####

sat_data <- c(397.00, 422.00, 443.00, 476.00, 511.00,
              437.00, 470.00, 490.00, 523.00, 577.00,
              480.00, 501.00, 525.00, 565.00, 596.00,
              473.00, 500.00, 521.00, 557.00, 600.00)

grp <- rep(1:4, each=5)
boxplot(sat_data ~ grp, xlab='SATs', ylab='SAT Scores', 
        names=c('SATV-1990', 'SATM-1990', 'SATV-1996', 'SATM-1996'))

#### PROBLEM 1.82 #####
library('mosaic')
mosaic::xpnorm(1.77, 0, 1)

# given z values
z.rg <- c(-2.25, 1.77)

# define cuts and canonical z-scores
cuts <- sort(sort(c(z.rg, -3.5, 3.5)))  # c(-3.5, 3.5) will be the xlim of the plot
x.sq <- seq(cuts[1], cuts[4], len=200)
alpha <- c(.001, .01, .05)
z <- c(qnorm(alpha/2), 0, abs(qnorm(alpha/2)))

# plot
plot(x.sq, dnorm(x.sq), type="l", xlab="z-score", ylab="density", 
     main="Standard Normal Distribution", xaxt="n")
z <- c(qnorm(alpha/2), 0, abs(qnorm(alpha/2)))
axis(1, z, round(z, 2))
abline(h=0)
# random middle part (optional)
polygon(c(cuts[2], cuts[2], x.sq[x.sq > cuts[2] & x.sq < cuts[3]], cuts[3], cuts[3]),
        c(0, dnorm(cuts[2]), dnorm(x.sq[x.sq > cuts[2] & x.sq < cuts[3]]), dnorm(cuts[3]), 0),
        col="#4da6ff", border=1)
# left tail
polygon(c(cuts[3], cuts[3], x.sq[x.sq > cuts[3]], cuts[4], cuts[4]),
        c(0, dnorm(cuts[3]), dnorm(x.sq[x.sq > cuts[3]]), dnorm(cuts[4]), 0),
        col="lightgrey", border=1)
# right tail
polygon(c(cuts[1], cuts[1], x.sq[x.sq < cuts[2]], cuts[2], cuts[2]),
        c(0, dnorm(cuts[1]), dnorm(x.sq[x.sq < cuts[2]]), dnorm(cuts[2]), 0),
        col="lightgrey", border=4)
# labels
arrows(z.rg, rep(dnorm(z.rg), length(z.rg)), z.rg, rep(dnorm(0)*.666, length(z.rg)),
       length=0, lty=2, col=4)
sapply(z.rg, function(x) text(x, dnorm(0)*.666 + .02, bquote(italic("z=")~.(x)), col=4))


#### PROBLEM 1.84 #####

mosaic::xqnorm(0.65)

#### PROBLEM 1.86 #####
mosaic::xpnorm(0, mean=12, sd=16.5)
mosaic::xpnorm(25, mean=12, sd=16.5)

#### PROBLEM 1.88 #####
mosaic::xpnorm(240, mean=266, sd=16)
mosaic::xpnorm(270, mean=266, sd=16)
mosaic::xqnorm(0.80, mean=266, sd=16)
mosaic::xqnorm(0.9999, mean=266, sd=16)

#### PROBLEM 1.94 #####
mosaic::xqnorm(0.99, mean=100, sd=15)

#### PROBLEM 1.114 #####
mosaic::xpnorm(10, mean=25, sd=5)
mosaic::xqnorm(0.75, mean=25, sd=5)

