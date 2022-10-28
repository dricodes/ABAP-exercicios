*--------------------------------------------------------------------*
**Select-options, parameters e tabelas transparentes que ser�o usadas.
*--------------------------------------------------------------------*

TABLES: LIPS, VTTK.

*--------------------------------------------------------------------*
**Tela de sele��o
*--------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK BLOCO1 WITH FRAME TITLE TEXT-001.
SELECT-OPTIONS: S_MATNR FOR LIPS-MATNR,
                S_ERDAT FOR VTTK-ERDAT.

SELECTION-SCREEN END OF BLOCK BLOCO1.

*--------------------------------------------------------------------*
**Tela do relat�rio:
*--------------------------------------------------------------------*
TYPES: BEGIN OF TYP_VTTK,
         MATNR TYPE LIPS-MATNR, "Produto
         MAKTX TYPE MAKT-MAKTX, "Desc. Produto
         BRGEW TYPE VBAP-BRGEW, "Quantidade entregue
         NETWR TYPE VBAP-NETWR, "Valor Total
         ERDAT TYPE VTTK-ERDAT, "data
       END OF TYP_VTTK,

*--------------------------------------------------------------------*
**Tela do popup
*--------------------------------------------------------------------*
       BEGIN OF TYP_POP,
         TKNUM TYPE VTTK-TKNUM, "Transporte
         BRGEW TYPE VBAP-BRGEW, "Quantidade entregue
       END OF TYP_POP.


*--------------------------------------------------------------------*
**Defini��o das vari�veis
*--------------------------------------------------------------------*

    DATA: TABLE         TYPE TABLE OF TYP_VTTK,
          STRUCT        TYPE TYP_VTTK,
          TABLE_POP     TYPE TABLE OF TYP_POP,
          STRUCT_POP    TYPE TYP_POP.
