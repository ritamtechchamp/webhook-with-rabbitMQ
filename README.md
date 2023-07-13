# Application to notify changes to subscribed consumers about a entity created or updated state

* Any third party can register their endpoint in http:localhost:3000/webhook_enpoints
* If any article created or updated all the registered enpoint will received the article. Url for creating article localhost:3000/articles

** Implementation Details
* I have used rabbitMQ fanout strategy to broadcast changes in article table to all the consumers(third party api)
* Each time a third party api endpoint is getting created app will add an queue to the `blog.articles` exchange in rabbitmq.
* So if a new article stored or updated all the api third party endpoint will get notified.
  
