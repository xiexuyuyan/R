x1 <- list()
x1_1 <- list()

x2 <- list(x1, x1_1)
names(x2) <- c("list_01_00", "list_01_01")

x3 <- list(x2, x2, x2)
names(x3) <- c("list_02", "list_02", "list_02")

x4 <- list(x3)
names(x4) <- "list_03"

names(x4$list_03$list_02) <- c("list_01_000", "list_01_001")

str(x4)