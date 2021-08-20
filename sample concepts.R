
#unit 3 sample questions
Orange
print(Orange[,2])

#add another column
Orange$age.level=ifelse(Orange$age>=0&Orange$age<200,"Young",
                    ifelse(Orange$age>=200 & Orange$age<1000,"Adult","old"))
print(Orange)

#print few selected rows
df3=data.frame(Orange[c(1,2,3,10,11,12,13),c("age","age.level")])
print(df3)

#print values greater than 1000
print(Orange[Orange$age>1000,])

#statistical 
aggregate(Orange[,3],by=list(Orange$Tree),FUN=mean)
summary(Orange)
mean(Orange$age)
mean(Orange$age[1:3])

#rbind for new row and cbind for column
Height=Orange$circumference*10
cbind(Orange,Height)

orderedlist=Orange[order(Orange$age),]
print(orderedlist[1:10,])


#list creation

print("list creation")

list1=list(first_name="AB",last_name="x",age=25,marks=c(45,70,26,40))
list1=list(first_name=c("AB","BC"),last_name=c("x","y"),age=c(25,35),marks=c(45,70,26,40))
list2=list()
list1

#list to vector
print("convert list to vector")
list_A=list(1:5)
print(list_A)
list_B=list(10:1)
print(list_B)

v2=unlist(list_A)
v3=unlist(list_B)
print(class(v1))
print(v2)
print(v3)
print(v2+v3)
