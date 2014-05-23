for (i in 1:100){
  x<-1:1000
  y<-(x^i)+i*x+i
  png(filename=sprintf('plot-%i.png',i), width=480, res=144)
  plot(x,y, type='l')
  dev.off()
}

