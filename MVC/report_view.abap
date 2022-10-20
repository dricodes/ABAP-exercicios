*&---------------------------------------------------------------------*
*&  Include           ZTR_AI_TESTES_VIEW
*&---------------------------------------------------------------------*

CLASS REPORT_VIEW DEFINITION.

  PUBLIC SECTION.

  METHODS: INITIALIZATION,
           SELECTION_SCREEN_O,
           SELECTION_SCREEN,
           END_OF_SELECTION.

ENDCLASS.

CLASS REPORT_VIEW IMPLEMENTATION.
  "Qualquer valida��o a ser feita na inicializa��o do programa deve ser feita aqui.
  "Valida��es de usu�rios, permiss�es..
  METHOD INITIALIZATION.
    MESSAGE 'Initialization Executada!' TYPE 'I'.
  ENDMETHOD.

  METHOD SELECTION_SCREEN_O.
    MESSAGE 'Selection Screen Output Executado!' TYPE 'I'.
  ENDMETHOD.

  METHOD SELECTION_SCREEN.
    MESSAGE 'Selection Screen Executado!' TYPE 'I'.
  ENDMETHOD.

  METHOD END_OF_SELECTION.
    MESSAGE 'End of Selection Executado!' TYPE 'I'.
  ENDMETHOD.

ENDCLASS.
