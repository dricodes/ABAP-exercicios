REPORT ZTR_AI_TESTES.

DATA: CLASSE_AI1 TYPE REF TO ZTRCL_AI,
      CLASSE_AI2 TYPE REF TO ZTRCL_AI.

"Para usar uma classe temos que cria-la.
CREATE OBJECT CLASSE_AI1. "Chamada do Constructor
CREATE OBJECT CLASSE_AI2. "Chamada do Constructor

CLASSE_AI1->ATRIBUIR_PESO( 15 ).
"O m�todo criado passa o par�metro peso para dentro da fun��o e o exibe.

WRITE: CLASSE_AI1->A_PESO, /, CLASSE_AI2->A_PESO.
"O atributo peso � est�tico, por isso ao ter recebido o valor '15' ele assume esse valor toda vez que for usado.

CLASSE_A1->A_ALTURA = 10.
CLASSE_A2->A_ALTURA = 15.

WRITE: CLASSE_AI1->A_ALTURA, /, CLASSE_AI2->ALTURA.
"O atributo altura � instancia, por isso pode ser alterado.

CLASSE_AI1->WRITER( ). "N�o pode ser usado porque � privado.
