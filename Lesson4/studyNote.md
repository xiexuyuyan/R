## 使用rvest抓取网页数据

*加载包*
>library("xml2")
>library("rvest")

*保存搜索链接对象gurl*
>gurl <- "https://"

*抓取数据保存到对象md中*
>md \<- gurl %>%
>read_html(encoding="GBK") %>%
>html_nodes("div.List-item") 
> \# 读取gurl的链接，指定编码为gbk
> \# 筛选出所有包含在\<div class="List-item">...\</div>块的内容

*抓取*
