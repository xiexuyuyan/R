library('xml2')
library('rvest')
gurl <- "https://list.tmall.com/search_product.htm?q=%C9%AD%B1%C8%B0%C2&type=p&vmarket=&spm=875.7931836%2FB.a2227oh.d100&from=mallfp..pc_1_searchbutton"
# 读取gurl的链接，指定编码为gbk
# 筛选出所有包含在<div class="product-iWrap">...</div>块的内容
md <- gurl %>% read_html(encoding="GBK") %>% html_nodes("div.product-iWrap")  
# 抓取卖家昵称和ID
sellerNick <- md %>% html_nodes("p.productStatus>span[class]") %>% html_attr("data-nick")  
sellerId <- md %>% html_nodes("p.productStatus>span[data-atp]") %>% html_attr("data-atp") %>% gsub(pattern="^.*,",replacement="")
# 抓取宝贝名称等数据
itemTitle <- md %>% html_nodes("p.productTitle>a[title]") %>% html_attr("title")
itemId <- md %>% html_nodes("p.productStatus>span[class]") %>% html_attr("data-item")
price <- md %>% html_nodes("em[title]") %>% html_attr("title") %>% as.numeric
volume <- md %>% html_nodes("span>em") %>% html_text
# 最后保存成数据框对象并存盘备用，以及写入csv文件
options(stringsAsFactors = FALSE) # 设置字符串不自动识别为因子
itemData <- data.frame(sellerNick=sellerNick,
                       sellerId=sellerId,itemTitle=itemTitle,
                       itemId=itemId,
                       price=price,
                       volume=volume)
save(itemData, file = "./itemData.rData")
write.csv(itemData, file = "./itemData.csv")