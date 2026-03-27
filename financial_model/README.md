# Desafio de projeto: Modelando star schema a partir de uma tabela
## 1. Descrição do projeto
A partir da tabela disponível no arquivo _Financial Sample.xlsx_ foram desenvolvidas tabelas derivativas 
- fact_vendas: para registro das transações
- dim_product: tabela referente aos detalhes dos produtos
- dim_client: onde foi considerado "cliente" as combinações existentes entre os campos _Segment_ e _Country_
- dim_calendar: gerada a partir da data mínima e máxima dos registros de transações de vendas

Partindo da tabela original <br>
<img width="200" height="400" alt="tabela_original" src="https://github.com/user-attachments/assets/0f3a037c-9600-44bd-b093-21cf72f22075" />

Obteve-se o seguinte resultado <br>
<img width="720" height="500" alt="star_schema_financial" src="https://github.com/user-attachments/assets/f33096c3-8100-48c6-ab39-a3022a968f73" />

Onde as relações entre as tabelas foi definido como a imagem abaixo <br>
<img width="600" height="500" alt="relationship" src="https://github.com/user-attachments/assets/d07a2440-e780-49a6-8fa9-c0880b98b1e0" />



