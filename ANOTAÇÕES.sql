/*   ANOTAÇÕES
-----------------------------------------------------------------------------------------------------------------
CURSO Business Intelligence
-----------------------------------------------------------------------------------------------------------------
* Pirâmide Empresarial (divisões)

-----------------------------------------------------------------------------------------------------------------
Ambiente OLTP
-----------------------------------------------------------------------------------------------------------------
* Operacional ('chão de fábrica' da pirâmide)
* Normalizado
* Armazenamento baixo | processamento alto | consultas demoradas
* INSERT - UPDATE - DELETE
* Principal ambiente de trabalho do DBA

-----------------------------------------------------------------------------------------------------------------
Standing Area
-----------------------------------------------------------------------------------------------------------------
* Local de tratamento dos dados carregados do OLTP e carregados no OLAP

-----------------------------------------------------------------------------------------------------------------
Ambiente OLAP
-----------------------------------------------------------------------------------------------------------------
* Analítico | Estratégico (topo da pirâmide)
* Desnormalizado
* Armazenamento alto | consultas rápidas
* SELECT
* Modelagem STAR | SNOW FLAKE

-----------------------------------------------------------------------------------------------------------------
Ferramentas ETL (Extract - Transform - Load) 
-----------------------------------------------------------------------------------------------------------------
* Integration Services (Microsoft)
* ODI (Oracle)
* Ketle (Pentaho)
* Power Center (Informatica)

-----------------------------------------------------------------------------------------------------------------
FUNÇÕES
-----------------------------------------------------------------------------------------------------------------
NEWID() - Gera um ID aleatoriamente
RAND() - Gera um número aleatório entre 0 e 1
ROUND(x, y) - Arredonda valores, onde X é o valor a ser arredondado
			  e Y é a quantidade de casas decimais que devem vir após a vírgula

-----------------------------------------------------------------------------------------------------------------
COMANDOS SQL
-----------------------------------------------------------------------------------------------------------------
@@FETCH_STATUS - Comando automático do SQL Server que verifica se o curso ainda possui ou não registros, por padrão,
seu valor é 0, quando ela não encontrar mais registros, muda para 1, por isso, deve ser sempre declarada inicialmente como 0.

-----------------------------------------------------------------------------------------------------------------
SEQUÊNCIA DE STEPS

01_CATEGORIA
02_FORNECEDOR
03_PRODUTOS
04_CLIENTE
05_FORMA
06_VENDEDOR
07_NOTA
08_FATO
CUBO

*/