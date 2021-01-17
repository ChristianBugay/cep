#language: pt
@cep
Funcionalidade: Pesquisar endereço por cep
Realizar pesquisa de endereço por cep
    @get_cep
    Esquema do Cenário: Pesquisar cep
        Dado que seja informado o cep <cep> do endereço
        Quando pesquisar por este cep
        Então o código de resposta será <code>
        E deverá ser apresentado o código do IBGE
    Exemplos:
    |   cep    |  code |
    | 87030030 |  200  |
    | 00000000 |  400  |