#Retrospective Cohort Study of the Effects of Donor KIR genotype on the reactivation of cytomegalovirus (CMV) 
#after myeloablative allogeneic hematopoietic stem cell transplant
#medicaldata's dataset cytomegalovirus (https://higgi13425.github.io/medicaldata/)
summary(cytomegalovirus)
str(cytomegalovirus)
as.factor(cytomegalovirus$diagnosis)
#mean age by type of diagnosis
aggregate(cytomegalovirus$age, by=list(cytomegalovirus$diagnosis), mean)
by(cytomegalovirus$age, cytomegalovirus$diagnosis, FUN=mean)
#if i want to work only with patients under 45
subset(cytomegalovirus, age<=45)
barplot(cytomegalovirus$age)
#barplot Number of patients for each diagnosis
par(mar=c(7,12,2,2))
barplot(table(cytomegalovirus$diagnosis),las=2, horiz=2, main='Type of Diagnosis', xlab='Number of patients',col='red4')
#how many patients have cv reactivation posttranspt by sex
cytomegalovirus$sex[cytomegalovirus$sex=="0"]<-'male'
cytomegalovirus$sex[cytomegalovirus$sex=="1"]<-'female'
cytomegalovirus$cmv[cytomegalovirus$cmv=="1"]<-'yes'
cytomegalovirus$cmv[cytomegalovirus$cmv=="0"]<-'no'
dattable<-table(cytomegalovirus$cmv, cytomegalovirus$sex)
dattable
par(mar=c(5,5,2,2))
barplot(dattable, las=1, main="Patients with cmv reactivation diveded by sex", ylab="Number of patients", beside=T, legend=rownames(dattable), col=c("steelblue4", "firebrick4"))
#same as above but percent
normdattable<-dattable/colSums(dattable)
normdattable
par(mar=c(5,5,2,2))
barplot(normdattable, las=1, main="Patients with cmv reactivation diveded by sex", ylab="Number of patients", beside=T, legend=rownames(normdattable), col=c("steelblue4", "firebrick4"))
#show with pie
par(mfrow=c(2,2))
pie(normdattable[,1], labels=rownames(normdattable), col=c("steelblue4","firebrick4"))
title("Female", adj = 0.5, line = 0)
pie(normdattable[,2], labels=rownames(normdattable), col=c("steelblue4","firebrick4"))
title("Male", adj = 0.5, line = 0)
#scatterplots with reactivation time-age and transplan-age
plot(cytomegalovirus$time.to.cmv, cytomegalovirus$age, col="yellowgreen", pch=19, xlim=c(0.5,86), ylim=c(30,70), xlab="Time to cmv reactivation (in months)",ylab="Age of patients", main="Reactivation to age comparison",cex.axis=1.2,cex.lab=1.3,cex.main=1.5, las=1)
plot(cytomegalovirus$time.to.transplant, cytomegalovirus$age, col="yellowgreen", pch=19, xlim=c(1,174), ylim=c(30,70), xlab="Time to transplant (in months)",ylab="Age of patients", main="Transplant time to age comparison",cex.axis=1.2,cex.lab=1.3,cex.main=1.5, las=1)

