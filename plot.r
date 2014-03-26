for (i in 1:100){
  x<-1:1000
  y<-(x^i)+i*x+i
  png(filename=sprintf('plot-%i.png',i))
  plot(x,y, type='l')
  dev.off()
}

