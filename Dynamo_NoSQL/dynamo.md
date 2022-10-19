## Criando tabela no Dynamo, e realizando querys

![img.png](img.png)


### inserindo um unico item:

![img_2.png](img_2.png)

Com o comando, irá inserir o conteúdo do arquivo na tabela:

> aws dynamodb put-item \
>     --table-name Music \
>     --item file://itemmusic.json \


![img_1.png](img_1.png)



### Inseriremos multiplos itens com o comando:

> aws dynamodb batch-write-item \
>     --request-items file://batchmusic.json

![img_3.png](img_3.png)

Obteremos o resultado:
![img_4.png](img_4.png)


![img_5.png](img_5.png)


Adicionando indices:


Indíce global secundário baseado no título do álbum.
![img_6.png](img_6.png)

Indíce global secundário baseado no nome do artista e no título do álbum.
![img_7.png](img_7.png)

Indíce global secundário baseado no título da música e no ano
![img_8.png](img_8.png)


![img_9.png](img_9.png)


## Visualizando algumas querys:

Pesquisando por artista:

> aws dynamodb query \
>    --table-name Music \
>    --key-condition-expression "Artist = :artist" \
>    --expression-attribute-values  '{":artist":{"S":"Iron Maiden"}}'

![img_10.png](img_10.png)

Pesquisa pelo título do album

![img_11.png](img_11.png)

Pesquisa pelo artista e pelo album

![img_12.png](img_12.png)

Pesquisa baseada na musica e ano do album

![img_13.png](img_13.png)