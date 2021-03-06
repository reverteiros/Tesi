

setwd("D:/Usuarios/s.reverte/Desktop/xarxes")

taula1<-read.table("taula1.txt", header=T,colnames(1))
taula2<-read.table("taula2.txt", header=T,colnames(1))
taula3<-read.table("taula3.txt", header=T,colnames(1))
taula4<-read.table("taula4.txt", header=T,colnames(1))
taula5<-read.table("taula5.txt", header=T,colnames(1))
taula6<-read.table("taula6.txt", header=T,colnames(1))
taula7<-read.table("taula7.txt", header=T,colnames(1))
taula8<-read.table("taula8.txt", header=T,colnames(1))
taula9<-read.table("taula9.txt", header=T,colnames(1))
taula10<-read.table("taula10.txt", header=T,colnames(1))
taula11<-read.table("taula11.txt", header=T,colnames(1))
taula12<-read.table("taula12.txt", header=T,colnames(1))
taula13<-read.table("taula13.txt", header=T,colnames(1))
taula14<-read.table("taula14.txt", header=T,colnames(1))
taula15<-read.table("taula15.txt", header=T,colnames(1))
taula16<-read.table("taula16.txt", header=T,colnames(1))
taula17<-read.table("taula17.txt", header=T,colnames(1))
taula18<-read.table("taula18.txt", header=T,colnames(1))
taula19<-read.table("taula19.txt", header=T,colnames(1))
taula20<-read.table("taula20.txt", header=T,colnames(1))
taula21<-read.table("taula21.txt", header=T,colnames(1))
taula22<-read.table("taula22.txt", header=T,colnames(1))
taula23<-read.table("taula23.txt", header=T,colnames(1))
taula24<-read.table("taula24.txt", header=T,colnames(1))
taula25<-read.table("taula25.txt", header=T,colnames(1))
taula26<-read.table("taula26.txt", header=T,colnames(1))
taula27<-read.table("taula27.txt", header=T,colnames(1))
taula28<-read.table("taula28.txt", header=T,colnames(1))
taula29<-read.table("taula29.txt", header=T,colnames(1))
taula30<-read.table("taula30.txt", header=T,colnames(1))
taula31<-read.table("taula31.txt", header=T,colnames(1))
taula32<-read.table("taula32.txt", header=T,colnames(1))
taula33<-read.table("taula33.txt", header=T,colnames(1))
taula34<-read.table("taula34.txt", header=T,colnames(1))
taula35<-read.table("taula35.txt", header=T,colnames(1))
taula36<-read.table("taula36.txt", header=T,colnames(1))
taula37<-read.table("taula37.txt", header=T,colnames(1))
taula38<-read.table("taula38.txt", header=T,colnames(1))
taula39<-read.table("taula39.txt", header=T,colnames(1))
taula40<-read.table("taula40.txt", header=T,colnames(1))


t1<-as.matrix(taula1)
t2<-as.matrix(taula2)
t3<-as.matrix(taula3)
t4<-as.matrix(taula4)
t5<-as.matrix(taula5)
t6<-as.matrix(taula6)
t7<-as.matrix(taula7)
t8<-as.matrix(taula8)
t9<-as.matrix(taula9)
t10<-as.matrix(taula10)
t11<-as.matrix(taula11)
t12<-as.matrix(taula12)
t13<-as.matrix(taula13)
t14<-as.matrix(taula14)
t15<-as.matrix(taula15)
t16<-as.matrix(taula16)
t17<-as.matrix(taula17)
t18<-as.matrix(taula18)
t19<-as.matrix(taula19)
t20<-as.matrix(taula20)
t21<-as.matrix(taula21)
t22<-as.matrix(taula22)
t23<-as.matrix(taula23)
t24<-as.matrix(taula24)
t25<-as.matrix(taula25)
t26<-as.matrix(taula26)
t27<-as.matrix(taula27)
t28<-as.matrix(taula28)
t29<-as.matrix(taula29)
t30<-as.matrix(taula30)
t31<-as.matrix(taula31)
t32<-as.matrix(taula32)
t33<-as.matrix(taula33)
t34<-as.matrix(taula34)
t35<-as.matrix(taula35)
t36<-as.matrix(taula36)
t37<-as.matrix(taula37)
t38<-as.matrix(taula38)
t39<-as.matrix(taula39)
t40<-as.matrix(taula40)


llista<-list(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,
             t16,t17,t18,t19,t20,t21,t22,t23,t24,t25,t26,t27,t28,
             t29,t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t40)

######################################################################

mida.xarxa.global<-function(w){
  matriu1 = matrix(NA,ncol=length(w),nrow=length(w))
  matriu2 = matrix(NA,ncol=length(w),nrow=length(w))
  matriu3 = matrix(NA,ncol=length(w),nrow=length(w))
  colnames(matriu1) = names(w)
  rownames(matriu1) = names(w)
  colnames(matriu2) = names(w)
  rownames(matriu2) = names(w)
  colnames(matriu3) = names(w)
  rownames(matriu3) = names(w)
  
  #### Matriu plantes
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      sp1 = list(rownames(w[[i]]))
      sp2 = list(rownames(w[[j]]))
      Osp = c(sp1,sp2,recursive=T)
      UOsp = unique(Osp)
      SOsp = length(UOsp)
      matriu1[j,i]	= SOsp
    }
  }
  
  #### Matriu animals
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      sp1 = list(colnames(w[[i]]))
      sp2 = list(colnames(w[[j]]))
      Osp = c(sp1,sp2,recursive=T)
      UOsp = unique(Osp)
      SOsp = length(UOsp)
      matriu2[j,i]	= SOsp
    }
  }
  
  #### Matriu global
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      matriu3[j,i]	= matriu1[j,i]*matriu2[j,i]
      }
  }
  return(list(plants = matriu1,pollinators=matriu2,global = matriu3))
}

#########################################################

shared.subnetwork<-function(w){
  matriu1 = matrix(NA,ncol=length(w),nrow=length(w))
  matriu2 = matrix(NA,ncol=length(w),nrow=length(w))
  matriu3 = matrix(NA,ncol=length(w),nrow=length(w))
  colnames(matriu1) = names(w)
  rownames(matriu1) = names(w)
  colnames(matriu2) = names(w)
  rownames(matriu2) = names(w)
  colnames(matriu3) = names(w)
  rownames(matriu3) = names(w)
  
  #### Matriu plantes
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      sp1 = list(top=rownames(w[[i]]))
      sp2 = list(top=rownames(w[[j]]))
      CUsp = sp1$top[sp1$top %in% sp2$top]
      matriu1[j,i]	= length(CUsp)
    }
  }
  
  #### Matriu pollinators
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      sp1 = list(bottom=colnames(w[[i]]))
      sp2 = list(bottom=colnames(w[[j]]))
      CUsp = sp1$bottom[sp1$bottom %in% sp2$bottom]
      matriu2[j,i]	= length(CUsp)
    }
  }
  
  #### Matriu global
  for(i in c(1:(length(w)-1))){
    for(j in c((i+1):(length(w)))){
      matriu3[j,i]	= matriu1[j,i]*matriu2[j,i]
    }
  }
    return(list(plants = matriu1,pollinators=matriu2,global = matriu3))
}

#########################################################################


mides.dist<-function(w){
  a<-as.dist(mida.xarxa.global(w)$global)
  b<-as.dist(shared.subnetwork(w)$global)
  c<-as.dist(shared.subnetwork(w)$global/mida.xarxa.global(w)$global)
  return(list(mida.xarxa.global=a,shared.subnetwork=b,proportion.shared.subnetwork=c))
}

a<-mides.dist(llista)
a$proportion.shared.subnetwork

#########################################################################

mOS<-as.matrix(a$mida.xarxa.global)

mida.xarxa.global <- data.frame(t(combn(rownames(mOS),2)), as.numeric(a$mida.xarxa.global))
names(mida.xarxa.global) <- c("Plot1", "Plot2", "mida.xarxa.global")

shared.subnetwork <- data.frame(t(combn(rownames(mOS),2)), as.numeric(a$shared.subnetwork))
names(shared.subnetwork) <- c("Plot1", "Plot2", "shared.subnetwork")

proportion.shared.subnetwork <- data.frame(t(combn(rownames(mOS),2)), as.numeric(a$proportion.shared.subnetwork))
names(proportion.shared.subnetwork) <- c("Plot1", "Plot2", "proportion.shared.subnetwork")

data1<-mida.xarxa.global
data1$shared.subnetwork<-shared.subnetwork$shared.subnetwork
data1$non.shared.subnetwork<-non.shared.subnetwork$non.shared.subnetwork
data1$proportion.shared<-data1$shared.subnetwork/data1$mida.xarxa.global*100

hist(data1$proportion.shared, xlab=("Percentatge de xarxa compartida"))
