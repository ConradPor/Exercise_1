#Finding information about R and using documentation:
  
#5. Find a package in R that deals with time series analysis. 
#Hint - use the website https://cran.r-project.org/web/views/
  
#6. Find a set of packages in R (TaskView) that are dedicated to Missing Data. 
#What groups are the packages in this set divided into? 
#What is each group used for?
  
#7. Choose any package listed in the set from the previous task and look 
# at its documentation. Choose any function from this package and think about 
# how it can be used. What is it used for? What arguments does it take?
  
#8. Open the help for the sum() function. What arguments does it take?
#What is it used for?
  
#9. You have a vector ‘a’ created with the code: a <- c(1,5,20,NA) 
# paste this code into R and execute it. Use the function discussed in the 
# previous task on it. How can you get a result with the missing 
# value (NA) omitted?
    
#10. Open the help for the runif() function. What does this function do? 
#What are its variants? What can you do with it?
    
#11. Generate 20 numbers from a uniform distribution. Repeat this several times. 
#How do the results change?
    
#12. Check the help for the set.seed() function – what does this function do? 
#What arguments does it take? What can it be used for? Hint – check both 
#the R documentation and search for information on R blogs.
  
#13. Call the set.seed() and runif() functions one after another. 
# In both, use your day of birth as an argument. Execute both commands several 
#times. How do the values ​​of the obtained vector change now? Change the 
#set.seed() argument to any three-digit number. 
#Repeat the set.seed() and runif() calls several times. What pattern do you see?

#14. Count the sum of the digits from 5 to 10 (R as a handy calculator)
#15. Create a vector "vectorFirst" that will contain the numbers from 5 to 10. 
#Hint: use the ":" operator

#16. Create a vector with any name that will contain the numbers from 2 to 8 
# and from 17 to 30. Try to use the "shortcuts" related to calling ranges 
#of numbers.

#17. Count the sum of the vector elements from the previous task.

#18. Extend the last created vector by the value NA. Try to calculate the 
# average of its values. Hint: use an additional argument that will "deal" 
#with missing values.

#19. Create a vector in the form (5,6,7,8,9,10). Use the ":" operator.

#20. Create a vector in the form (5,6,7,8,9,10). 
 # This time use the seq() function.
# 21. Create a vector of the form (1, 3, 5, 7, 9). Hint: use the seq() function.

#22. Create a vector of the form (2, 8, 14, 20, 26, 32). 
#Hint: use the seq() function.

#23. Create a vector of the form ("2", "7", "a", "2", "7", "a", "2", "7", "a"). 
#Hint: use the rep() function.

#24. Create a vector of the form (2, 2, 6, 6, 8, 8). Use the rep() function.

#25. Create a vector of the form (2,2,2,4,4,4,6,6,6,8,8,8,10,10,10,12,12,12). 
#Hint: use a combination of the rep() and seq() functions.

#26. Use the rep function to create a vector of the following form 
#("13", "13", "13", "5", "5", "5", "nana", "nana", "nana").

#27. Use the rep function to create a vector of the following form 
#("13", "13", "13", "5", "5", "5", "nana"). 
#Hint: look at the function's help. Is there an argument that allows you to 
#adjust the length of the resulting vector?

#5
install.packages("timeSeries")
install.packages("CTV")library("MissingData")
#6
install.packages("ctv")ctv::update.views("MissingData")
install.packages("ctv")
ctv::install.views("MissingData")
#8
?sum()
#9
a <- c(1,5,20,NA)
a
sum(a, na.rm = FALSE)
sum(a, na.rm = TRUE)
#10
?runif()
#11
a <- runif(20)
#12
?set.seed()
#13
b <- set.seed(12)
runif(12)
sample(1:100, size = 20, replace = TRUE)
runif(sample(1:100, size = 20, replace = TRUE))
set.seed(12)
runif(40, 5, 10)
set.seed(5)
rnorm(12)
runif(100, 8, 20)
#15
vectotFirst <-(5:10)

sum(5:10, na.rm = FALSE)
#16
secondVec <- c(2:8,NA,17:30)
#17
sumVec<-sum(secondVec, na.rm=TRUE)
sumVec
#18
mean(secondVec, na.rm = TRUE)
#19
vektorThird <- c(5:10)
#20
vektorFourth <- seq(5,10,1)
vektorFourth
#21
vektorFifth <- seq(1,10,2)
#22
vektorSixth <- seq(2,32,6)
vektorSixth
#23
wektor <- c("2", "7","a")
WektorReplace <- rep(wektor, 3)
WektorReplaceSek <- c(2,6,8)
WektorReplaceSek2 <- rep(WektorReplaceSek, each = 2) 
WektorReplaceSek2
#23,24
WektorReplaceSek <- seq(2,12,2)
WektorReplaceSek2 <- rep(WektorReplaceSek, each = 3) 
WektorReplaceSek2
#25
WektorReplace2 <- c("13","5","nana")
WektorReplace3 <- rep(WektorReplace2,3)
?rep
#26
vector26 <- rep(c("13", "5", "nana"), each = 3)
vector26

#27
vector27 <- c(rep("13", 3), rep("5", 3), "nana")
vector27