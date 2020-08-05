CREATE PROCEDURE CAMEL_CASE AS
DECLARE C_NOMES CURSOR FOR
SELECT IDPRODUTO, NOME
FROM ST_PRODUTO

DECLARE @IDPRODUTO INT,
		@PALAVRA VARCHAR(50),
	    @STRINGTOTAL VARCHAR(5000),
		@INICIO INT,
		@FIM INT	

OPEN C_NOMES
FETCH NEXT FROM C_NOMES INTO
@IDPRODUTO,@PALAVRA

WHILE @@FETCH_STATUS = 0

BEGIN
	  --ARMAZENA O NOME DO PRODUTO
	  SET @PALAVRA = LOWER(@PALAVRA)
  	  --VARIAVEL INICIO = 2
      SET @INICIO = 2
	  --VARIAVEL FIM = AO TAMMANHO DA PALAVRA
      SET @FIM = LEN(@PALAVRA)
	  --STRINGTOTAL RECEBE A PRIMEIRA LETRA DA PALAVRA EM CAIXA BAIXA
      SET @STRINGTOTAL = UPPER(LEFT(@PALAVRA,1))
	  
	  WHILE @INICIO <= @FIM
		
		BEGIN
				IF SUBSTRING(@PALAVRA,@INICIO,1) = ' '
				BEGIN 
					SELECT @INICIO = @INICIO + 1
					SELECT @STRINGTOTAL = @STRINGTOTAL + ' ' + 
					UPPER(SUBSTRING(@PALAVRA,@INICIO,1))
				END
				ELSE
				BEGIN
					SELECT @STRINGTOTAL = @STRINGTOTAL + 
					SUBSTRING(@PALAVRA,@INICIO,1)
				END
				
				SELECT @INICIO = @INICIO + 1
		END
		
		UPDATE ST_PRODUTO SET NOME = @STRINGTOTAL
		WHERE IDPRODUTO = @IDPRODUTO

		FETCH NEXT FROM C_NOMES INTO
		@IDPRODUTO,@PALAVRA

END
CLOSE C_NOMES
DEALLOCATE C_NOMES
GO