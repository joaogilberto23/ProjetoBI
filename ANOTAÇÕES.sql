/*   ANOTA��ES
-----------------------------------------------------------------------------------------------------------------
CURSO Business Intelligence
-----------------------------------------------------------------------------------------------------------------
* Pir�mide Empresarial (divis�es)

-----------------------------------------------------------------------------------------------------------------
Ambiente OLTP
-----------------------------------------------------------------------------------------------------------------
* Operacional ('ch�o de f�brica' da pir�mide)
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
* Anal�tico | Estrat�gico (topo da pir�mide)
* Desnormalizado
* Armazenamento alto | consultas r�pidas
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
FUN��ES
-----------------------------------------------------------------------------------------------------------------
NEWID() - Gera um ID aleatoriamente
RAND() - Gera um n�mero aleat�rio entre 0 e 1
ROUND(x, y) - Arredonda valores, onde X � o valor a ser arredondado
			  e Y � a quantidade de casas decimais que devem vir ap�s a v�rgula

-----------------------------------------------------------------------------------------------------------------
COMANDOS SQL
-----------------------------------------------------------------------------------------------------------------
@@FETCH_STATUS - Comando autom�tico do SQL Server que verifica se o curso ainda possui ou n�o registros, por padr�o,
seu valor � 0, quando ela n�o encontrar mais registros, muda para 1, por isso, deve ser sempre declarada inicialmente como 0.

-----------------------------------------------------------------------------------------------------------------
SEQU�NCIA DE STEPS

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