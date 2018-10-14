# Wire Service

Rails app for easily search Wire Service content

◦1. 연합뉴스 수신서버
IP: 211.115.91.190
ID: naeil
PW: sodlftlsans1!   (내일신문1!)

폴더별로 
101_KOR: 연합기사 데이터(XML 방식)
201~205 : 연합화상데이터(연합, 외신 등)

## Tables

user
 - name
 - email
 - group
 - title

story
 - date
 - name
 - group
 - title
 - subtitle
 - quote
 - body
 - char_count
 - publish:boolean
 - sent:boolean

 - working_article_id
 - user:references
 - page
 - order

yonhap_article
 - date
 - time
 - content_id
 - region_code
 - class_code
 - attribute_code
 - embargo
 - category
 - subcategory
 - subsubcategory
 - writer

 - title
 - subtitle
 - body

 - group
 - page
 - order
 - char_count
 - selected
 - owner

yonhap_picture
 - date
 - time
 - category
 - subcategory
 - subsubcategory
 
 - title
 - caption
 - reporter

 - group
 - page
 - order
 - selected
 - owner

newsys_picture

 - date
 - time
 - category
 - subcategory
 - subsubcategory
 - title
 - caption
 - reporter

 - group
 - page
 - order
 - selected
 - owner
