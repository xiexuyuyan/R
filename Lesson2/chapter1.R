# this is chapter-one data struct

# R中的基本数据结构是向量。向量有两种形式：原子向量和列表。它们有三个共同的属性：
# 类型，typeof()它是什么。
# 长度，length()它包含多少元素。
# 属性，attributes()附加的任意元数据。
# 注意：is.vector()不测试对象是否是向量。相反，它TRUE仅在对象是除名称之外没有属性的向量时返回。使用is.atomic(x) || is.list(x)测试如果一个对象实际上是一个向量。

# 通常使用c()组合的简称创建原子向量：

dbl_var <- c(1, 2.5, 4.5)
# With the L suffix, you get an integer rather than a double
int_var <- c(1L, 6L, 10L)
# Use TRUE and FALSE (or T and F) to create logical vectors
log_var <- c(TRUE, FALSE, T, F)
chr_var <- c("these are", "some strings")

c(1, c(2, c(3, 4)))
## [1] 1 2 3 4
# the same as
c(1, 2, 3, 4)
## [1] 1 2 3 4

int_var <- c(1L, 6L, 10L)
typeof(int_var)
## [1] "integer"
is.integer(int_var)
## [1] TRUE
is.atomic(int_var)
## [1] TRUE

str(c("a", 1, 2.5), c(TRUE, 1L))

y <- c(list("a", 2), c(3, 4))

str(y)



y <- 1:10

attr(y, "my_attribute") <- "This is a vectory"
attr(y, "my_attribute_int_no") <- 12
attr(y, "my_attribute")
attr(y, "my_attribute_int_no")

str(attributes(y))
attributes(y)

table(y)

sex_char <- c("m", "m", "m")
sex_factor <- factor(sex_char, levels = c("m", "f"))

table(sex_char)

table(sex_factor)

class(sex_char)
class(sex_factor)

sex_char
sex_factor



