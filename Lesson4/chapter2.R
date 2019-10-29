library("xml2")
library("rvest")

# gurl <- "https://list.tmall.com/search_product.htm?q=%C9%AD%B1%C8%B0%C2&type=p&vmarket=&spm=875.7931836%2FB.a2227oh.d100&from=mallfp..pc_1_searchbutton"
# gurl <- "https://list.tmall.com/search_product.htm?q=%C8%FD%D0%C7s10&type=p&vmarket=&spm=875.7931836%2FB.a2227oh.d100&from=mallfp..pc_1_searchbutton"
gurl <- "https://music.163.com/#/discover/toplist?id=3778678"

# 读取gurl的链接，指定编码为gbk
# 筛选出所有包含在<div class="product-iWrap">...</div>块的内容
# md      <- gurl %>% read_html(encoding = "GBK") %>% html_nodes("div.product-iWrap")
# rawData <- gurl %>% read_html(encoding = "GBK") %>% html_nodes("div.product-iWrap")
rawData <- gurl %>% read_html(encoding = "utf-8") %>% html_node("table.m-table") %>% html_table(fill = TRUE)

  
# sellerNick <- rawData %>% html_nodes("p.productStatus>span[class]") %>% html_attr("data-nick")