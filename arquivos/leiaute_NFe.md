## Grupo infNFe - Informações da Nota Fiscal Eletrônica

### Grupo Identificação da NF-e

- **cUF**
  - **Tamanho**: 2
  - **Tipo de dado**: string
  - **Descrição**: Código da Unidade Federativa conforme tabela do IBGE.

- **cNF**
  - **Tamanho**: 8
  - **Tipo de dado**: string
  - **Descrição**: Código numérico gerado pelo emitente para compor a chave de acesso.

- **natOp**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Descrição da natureza da operação, ex.: "Venda de Mercadorias".

- **mod**
  - **Tamanho**: 2
  - **Tipo de dado**: string
  - **Descrição**: Modelo do documento fiscal (ex.: "55" para NF-e).

- **serie**
  - **Tamanho**: 1 a 3
  - **Tipo de dado**: string
  - **Descrição**: Série do documento fiscal utilizada pelo emitente.

- **nNF**
  - **Tamanho**: 1 a 9
  - **Tipo de dado**: string
  - **Descrição**: Número do documento fiscal.

- **dhEmi**
  - **Tamanho**: 25
  - **Tipo de dado**: dateTime
  - **Descrição**: Data e hora da emissão do documento no formato ISO (AAAA-MM-DDThh:mm:ssTZD).

- **dhSaiEnt**
  - **Tamanho**: 25
  - **Tipo de dado**: dateTime
  - **Descrição**: Data e hora de saída ou entrada da mercadoria.

- **tpNF**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica o tipo de operação (0 - Entrada, 1 - Saída).

- **idDest**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Indica o destino da operação (1 - Interna, 2 - Interestadual, 3 - Exterior).

- **cMunFG**
  - **Tamanho**: 7
  - **Tipo de dado**: string
  - **Descrição**: Código do município conforme tabela do IBGE.

- **tpImp**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica o tipo de impressão do DANFE.

- **tpEmis**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica a forma de emissão da NF-e.

- **cDV**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Último dígito da chave de acesso, calculado pelo módulo 11.

- **tpAmb**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica o ambiente (1 - Produção, 2 - Homologação).

- **finNFe**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica a finalidade da emissão da NF-e (1 - Normal, 2 - Complementar, etc.).

- **indFinal**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica se a operação é para consumidor final (0 - Não, 1 - Sim).

- **indPres**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Identifica a presença do comprador no momento da operação.

- **procEmi**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Indica o processo de emissão utilizado (0 - Emissão própria, etc.).

- **verProc**
  - **Tamanho**: 1 a 20
  - **Tipo de dado**: string
  - **Descrição**: Versão do processo de emissão do software utilizado.

### Grupo NFRef - Informações das Notas Fiscais Referenciadas

- **refNFe**
  - **Tamanho**: 44
  - **Tipo de dado**: string
  - **Descrição**: Chave de acesso da NF-e referenciada.

- **refNF**
  - **Tamanho**: Complexo (detalhado abaixo)
  - **Descrição**: Grupo de informações da NF modelo 1/1A referenciada.
  - **Campos**:
    - **cUF**: Código da UF. Tamanho: 2. Tipo de dado: string.
    - **AAMM**: Ano e mês de emissão. Tamanho: 4. Tipo de dado: string.
    - **CNPJ**: CNPJ do emitente. Tamanho: 14. Tipo de dado: string.
    - **mod**: Modelo do documento fiscal. Tamanho: 2. Tipo de dado: string.
    - **serie**: Série do documento fiscal. Tamanho: 1 a 3. Tipo de dado: string.
    - **nNF**: Número do documento fiscal. Tamanho: 1 a 9. Tipo de dado: string.

- **refNFP**
  - **Tamanho**: Complexo (detalhado abaixo)
  - **Descrição**: Grupo de informações da Nota Fiscal de Produtor Rural referenciada.
  - **Campos**:
    - **cUF**: Código da UF. Tamanho: 2. Tipo de dado: string.
    - **AAMM**: Ano e mês de emissão. Tamanho: 4. Tipo de dado: string.
    - **IE**: Inscrição Estadual. Tamanho: 0 a 14. Tipo de dado: string.
    - **mod**: Modelo do documento fiscal. Tamanho: 2. Tipo de dado: string.
    - **serie**: Série do documento fiscal. Tamanho: 1 a 3. Tipo de dado: string.
    - **nNF**: Número do documento fiscal. Tamanho: 1 a 9. Tipo de dado: string.

- **refCTe**
  - **Tamanho**: 44
  - **Tipo de dado**: string
  - **Descrição**: Chave de acesso do CT-e referenciado.

- **refECF**
  - **Tamanho**: Complexo (detalhado abaixo)
  - **Descrição**: Grupo de informações do Cupom Fiscal referenciado.
  - **Campos**:
    - **mod**: Modelo do documento fiscal. Tamanho: 2. Tipo de dado: string.
    - **nECF**: Número de ordem do ECF. Tamanho: 3. Tipo de dado: string.
    - **nCOO**: Número do Contador de Ordem de Operação. Tamanho: 6. Tipo de dado: string.

### Grupo Emit - Informações do Emitente

- **CNPJ**
  - **Tamanho**: 14
  - **Tipo de dado**: string
  - **Descrição**: CNPJ do emitente.

- **xNome**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Razão Social ou Nome do emitente.

- **xFant**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Nome fantasia do emitente.

- **enderEmit**
  - **Tamanho**: Complexo (detalhado abaixo)
  - **Descrição**: Grupo de informações do endereço do emitente.
  - **Campos**:
    - **xLgr**: Logradouro. Tamanho: 1 a 60. Tipo de dado: string.
    - **nro**: Número. Tamanho: 1 a 60. Tipo de dado: string.
    - **xCpl**: Complemento. Tamanho: 0 a 60. Tipo de dado: string.
    - **xBairro**: Bairro. Tamanho: 1 a 60. Tipo de dado: string.
    - **cMun**: Código do município. Tamanho: 7. Tipo de dado: string.
    - **xMun**: Nome do município. Tamanho: 1 a 60. Tipo de dado: string.
    - **UF**: Unidade Federativa. Tamanho: 2. Tipo de dado: string.
    - **CEP**: Código postal. Tamanho: 8. Tipo de dado: string.
    - **cPais**: Código do país. Tamanho: 4. Tipo de dado: string.
    - **xPais**: Nome do país. Tamanho: 1 a 60. Tipo de dado: string.
    - **fone**: Telefone. Tamanho: 6 a 14. Tipo de dado: string.

- **IE**
  - **Tamanho**: 0 a 14
  - **Tipo de dado**: string
  - **Descrição**: Inscrição Estadual do emitente.

- **IEST**
  - **Tamanho**: 0 a 14
  - **Tipo de dado**: string
  - **Descrição**: Inscrição Estadual do Substituto Tributário.

- **IM**
  - **Tamanho**: 0 a 15
  - **Tipo de dado**: string
  - **Descrição**: Inscrição Municipal do emitente.

- **CNAE**
  - **Tamanho**: 7
  - **Tipo de dado**: string
  - **Descrição**: Código CNAE fiscal do emitente.

- **CRT**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Código do Regime Tributário do emitente (1 - Simples Nacional, 2 - Simples Nacional – Excesso de Sublimite de Receita Bruta, 3 - Regime Normal).


### Grupo Dest - Informações do Destinatário

- **CNPJ** ou **CPF**
  - **Tamanho**: 11 ou 14
  - **Tipo de dado**: string
  - **Descrição**: Identificação do destinatário, podendo ser CNPJ ou CPF.

- **idEstrangeiro**
  - **Tamanho**: 1 a 20
  - **Tipo de dado**: string
  - **Descrição**: Identificador do destinatário estrangeiro.

- **xNome**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Razão Social ou Nome do destinatário.

- **enderDest**
  - **Tamanho**: Complexo (detalhado abaixo)
  - **Descrição**: Grupo de informações do endereço do destinatário.
  - **Campos**:
    - **xLgr**: Logradouro. Tamanho: 1 a 60. Tipo de dado: string.
    - **nro**: Número. Tamanho: 1 a 60. Tipo de dado: string.
    - **xCpl**: Complemento. Tamanho: 0 a 60. Tipo de dado: string.
    - **xBairro**: Bairro. Tamanho: 1 a 60. Tipo de dado: string.
    - **cMun**: Código do município. Tamanho: 7. Tipo de dado: string.
    - **xMun**: Nome do município. Tamanho: 1 a 60. Tipo de dado: string.
    - **UF**: Unidade Federativa. Tamanho: 2. Tipo de dado: string.
    - **CEP**: Código postal. Tamanho: 8. Tipo de dado: string.
    - **cPais**: Código do país. Tamanho: 4. Tipo de dado: string.
    - **xPais**: Nome do país. Tamanho: 1 a 60. Tipo de dado: string.
    - **fone**: Telefone. Tamanho: 6 a 14. Tipo de dado: string.

- **indIEDest**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Indicador da IE do destinatário (1 - Contribuinte, 2 - Isento, 9 - Não contribuinte).

- **IE**
  - **Tamanho**: 0 a 14
  - **Tipo de dado**: string
  - **Descrição**: Inscrição Estadual do destinatário.

- **ISUF**
  - **Tamanho**: 9
  - **Tipo de dado**: string
  - **Descrição**: Inscrição na SUFRAMA.

- **IM**
  - **Tamanho**: 0 a 15
  - **Tipo de dado**: string
  - **Descrição**: Inscrição Municipal do destinatário.

- **email**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Endereço de email do destinatário.


### Grupo Retirada - Informações do Local de Retirada

- **CNPJ** ou **CPF**
  - **Tamanho**: 11 ou 14
  - **Tipo de dado**: string
  - **Descrição**: Identificação do local de retirada, podendo ser CNPJ ou CPF.

- **xLgr**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Logradouro do local de retirada.

- **nro**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Número do local de retirada.

- **xCpl**
  - **Tamanho**: 0 a 60
  - **Tipo de dado**: string
  - **Descrição**: Complemento do endereço do local de retirada.

- **xBairro**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Bairro do local de retirada.

- **cMun**
  - **Tamanho**: 7
  - **Tipo de dado**: string
  - **Descrição**: Código do município conforme tabela do IBGE.

- **xMun**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Nome do município do local de retirada.

- **UF**
  - **Tamanho**: 2
  - **Tipo de dado**: string
  - **Descrição**: Unidade Federativa do local de retirada.


### Grupo Entrega - Informações do Local de Entrega

- **CNPJ** ou **CPF**
  - **Tamanho**: 11 ou 14
  - **Tipo de dado**: string
  - **Descrição**: Identificação do local de entrega, podendo ser CNPJ ou CPF.

- **xLgr**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Logradouro do local de entrega.

- **nro**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Número do local de entrega.

- **xCpl**
  - **Tamanho**: 0 a 60
  - **Tipo de dado**: string
  - **Descrição**: Complemento do endereço do local de entrega.

- **xBairro**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Bairro do local de entrega.

- **cMun**
  - **Tamanho**: 7
  - **Tipo de dado**: string
  - **Descrição**: Código do município conforme tabela do IBGE.

- **xMun**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Nome do município do local de entrega.

- **UF**
  - **Tamanho**: 2
  - **Tipo de dado**: string
  - **Descrição**: Unidade Federativa do local de entrega.


### Grupo autXML - Informações dos Autorizados a Obter o XML

- **CNPJ**
  - **Tamanho**: 14
  - **Tipo de dado**: string
  - **Descrição**: CNPJ da pessoa autorizada a acessar o XML.

- **CPF**
  - **Tamanho**: 11
  - **Tipo de dado**: string
  - **Descrição**: CPF da pessoa autorizada a acessar o XML.


### Grupo det - Informações dos Itens

#### Grupo prod - Informações do Produto

- **cProd**
  - **Tamanho**: 1 a 60
  - **Tipo de dado**: string
  - **Descrição**: Código do produto ou serviço.

- **cEAN**
  - **Tamanho**: 0 a 14
  - **Tipo de dado**: string
  - **Descrição**: Código de barras GTIN (antigo código EAN) do produto.

- **xProd**
  - **Tamanho**: 1 a 120
  - **Tipo de dado**: string
  - **Descrição**: Descrição do produto ou serviço.

- **NCM**
  - **Tamanho**: 2 a 8
  - **Tipo de dado**: string
  - **Descrição**: Código NCM (Nomenclatura Comum do Mercosul) do produto.

- **CEST**
  - **Tamanho**: 7
  - **Tipo de dado**: string
  - **Descrição**: Código CEST (Código Especificador da Substituição Tributária) do produto.

- **indEscala**
  - **Tamanho**: 1
  - **Tipo de dado**: string
  - **Descrição**: Indicador de produção em escala relevante.

- **CNPJFab**
  - **Tamanho**: 14
  - **Tipo de dado**: string
  - **Descrição**: CNPJ do Fabricante da Mercadoria.

- **cBenef**
  - **Tamanho**: 1 a 10
  - **Tipo de dado**: string
  - **Descrição**: Código de benefício fiscal associado ao produto.

- **EXTIPI**
  - **Tamanho**: 2 a 3
  - **Tipo de dado**: string
  - **Descrição**: Código EX TIPI (Exceção da TIPI).

- **CFOP**
  - **Tamanho**: 4
  - **Tipo de dado**: string
  - **Descrição**: Código CFOP (Código Fiscal de Operações e Prestações).

- **uCom**
  - **Tamanho**: 1 a 6
  - **Tipo de dado**: string
  - **Descrição**: Unidade comercial.

- **qCom**
  - **Tamanho**: 11v9
  - **Tipo de dado**: decimal
  - **Descrição**: Quantidade comercializada.

- **vUnCom**
  - **Tamanho**: 11v9
  - **Tipo de dado**: decimal
  - **Descrição**: Valor unitário de comercialização.

- **vProd**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor total do produto ou serviço.

- **cEANTrib**
  - **Tamanho**: 0 a 14
  - **Tipo de dado**: string
  - **Descrição**: Código de barras GTIN tributável.

- **uTrib**
  - **Tamanho**: 1 a 6
  - **Tipo de dado**: string
  - **Descrição**: Unidade tributável.

- **qTrib**
  - **Tamanho**: 11v9
  - **Tipo de dado**: decimal
  - **Descrição**: Quantidade tributável.

- **vUnTrib**
  - **Tamanho**: 11v9
  - **Tipo de dado**: decimal
  - **Descrição**: Valor unitário tributável.

- **vFrete**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor do frete.

- **vSeg**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor do seguro.

- **vDesc**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor do desconto.

- **vOutro**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Outras despesas acessórias.

- **indTot**
  - **Tamanho**: 1
  - **Tipo de dado**: integer
  - **Descrição**: Indica se o valor do item compõe o valor total da NF-e (0 - Não, 1 - Sim).

- **xPed**
  - **Tamanho**: 1 a 15
  - **Tipo de dado**: string
  - **Descrição**: Número do pedido de compra.

- **nItemPed**
  - **Tamanho**: 1 a 6
  - **Tipo de dado**: integer
  - **Descrição**: Número do item do pedido de compra.

- **nFCI**
  - **Tamanho**: 36
  - **Tipo de dado**: string
  - **Descrição**: Número de controle do FCI (Ficha de Conteúdo de Importação).

- **nRECOPI**
  - **Tamanho**: 20
  - **Tipo de dado**: string
  - **Descrição**: Número do RECOPI.


- **Grupo gCred - Informações do Crédito Presumido**
    - **cCredPresumido**
        - **Tamanho**: 8 ou 10
        - **Tipo de dado**: string
        - **Descrição**: Código de Benefício Fiscal de Crédito Presumido na UF aplicado ao item.

    - **pCredPresumido**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual do Crédito Presumido.

    - **vCredPresumido**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do Crédito Presumido.
- **Grupo DI - Informações da Declaração de Importação**
    - **nDI**
        - **Tamanho**: 10
        - **Tipo de dado**: string
        - **Descrição**: Número do Documento de Importação.

    - **dDI**
        - **Tamanho**: 10
        - **Tipo de dado**: date
        - **Descrição**: Data de registro do Documento de Importação.

    - **xLocDesemb**
        - **Tamanho**: 1 a 60
        - **Tipo de dado**: string
        - **Descrição**: Local do desembaraço aduaneiro.

    - **UFDesemb**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Unidade Federativa de desembaraço aduaneiro.

    - **dDesemb**
        - **Tamanho**: 10
        - **Tipo de dado**: date
        - **Descrição**: Data do desembaraço aduaneiro.

    - **tpViaTransp**
        - **Tamanho**: 1
        - **Tipo de dado**: integer
        - **Descrição**: Código da via de transporte internacional.
        - **opções**: 
        1 - Marítima;
        2 - Fluvial;
        3 - Lacustre;
        4 - Aérea;
        5 - Postal
        6 - Ferroviária;
        7 - Rodoviária;
        8 - Conduto / Rede Transmissão;
        9 - Meios Próprios;
        10 - Entrada / Saída ficta.

    - **vAFRMM**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do Adicional ao Frete para Renovação da Marinha Mercante.

    - **tpIntermedio**
        - **Tamanho**: 1
        - **Tipo de dado**: integer
        - **Descrição**: Forma de importação quanto à intermediação.
        - **opções**: 
        1 - Importação por conta própria;
        2 - Importação por conta e ordem;
        3 - Importação por encomenda;.

    - **CNPJ**
        - **Tamanho**: 14
        - **Tipo de dado**: string
        - **Descrição**: CNPJ do adquirente ou do encomendante.

    - **UFTerceiro**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Unidade Federativa do terceiro adquirente.

    - **cExportador**
        - **Tamanho**: 1 a 60
        - **Tipo de dado**: string
        - **Descrição**: Código do exportador.

    - **Subgrupo aDI - Informações das Adições**
        - **nAdicao**
            - **Tamanho**: 3
            - **Tipo de dado**: integer
            - **Descrição**: Número da adição.

        - **nSeqAdic**
            - **Tamanho**: 3
            - **Tipo de dado**: integer
            - **Descrição**: Número sequencial do item dentro da adição.

        - **cFabricante**
            - **Tamanho**: 1 a 60
            - **Tipo de dado**: string
            - **Descrição**: Código do fabricante estrangeiro.

        - **vDescDI**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do desconto do item na Declaração de Importação.
- **Grupo detExport - Informações de Exportação**
    - **nDraw**
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Número do ato concessório de Drawback.
    - **Subgrupo exportInd - Dados de Exportação Indireta**
        - **nRE**
            - **Tamanho**: 12
            - **Tipo de dado**: string
            - **Descrição**: Número do Registro de Exportação.

        - **chNFe**
            - **Tamanho**: 44
            - **Tipo de dado**: string
            - **Descrição**: Chave de acesso da NF-e recebida para exportação.

        - **qExport**
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade do item efetivamente exportada.
- **Grupo rastro - Informações de Rastreabilidade**
    - **nLote**
        - **Tamanho**: 1 a 20
        - **Tipo de dado**: string
        - **Descrição**: Número do lote do produto.

    - **qLote**
        - **Tamanho**: 11v3
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade do lote do produto.

    - **dFab**
        - **Tamanho**: 10
        - **Tipo de dado**: date
        - **Descrição**: Data de fabricação/produção do item.

    - **dVal**
        - **Tamanho**: 10
        - **Tipo de dado**: date
        - **Descrição**: Data de validade do item.

    - **cAgreg**
        - **Tamanho**: 1 a 60
        - **Tipo de dado**: string
        - **Descrição**: Código de agregação do produto.

- **Grupo InfProdNFF - Informações da Nota Fiscal Fácil**
    - **cProdFisco**
        - **Tamanho**: 14
        - **Tipo de dado**: string
        - **Descrição**: Código Fiscal do Produto.

    - **cOperNFF**
        - **Tamanho**: 1 a 5
        - **Tipo de dado**: string
        - **Descrição**: Código da operação selecionada na Nota Fiscal Fácil (NFF) e relacionada ao item.

- **Grupo InfProdEmb - Informações de Embalagem**
    - **xEmb**
        - **Tamanho**: 1 a 8
        - **Tipo de dado**: string
        - **Descrição**: Embalagem do produto.

    - **qVolEmb**
        - **Tamanho**: 8v3
        - **Tipo de dado**: decimal
        - **Descrição**: Volume do produto na embalagem.

    - **uEmb**
        - **Tamanho**: 1 a 8
        - **Tipo de dado**: string
        - **Descrição**: Unidade de medida da embalagem.
- **Grupo veicProd - Informações de Veículos Novos**
    - **tpOp**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Tipo da operação (1 - Venda concessionária, 2 - Faturamento direto, etc.).

    - **chassi**
        - **Tamanho**: 17
        - **Tipo de dado**: string
        - **Descrição**: Número do chassi do veículo.

    - **cCor**
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Código da cor do veículo.

    - **xCor**
        - **Tamanho**: 1 a 40
        - **Tipo de dado**: string
        - **Descrição**: Descrição da cor do veículo.

    - **pot**
        - **Tamanho**: 4 a 6
        - **Tipo de dado**: string
        - **Descrição**: Potência máxima do motor (CV).

    - **cilin**
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Cilindrada do motor (CC).

    - **pesoL**
        - **Tamanho**: 9
        - **Tipo de dado**: integer
        - **Descrição**: Peso líquido em kg.

    - **pesoB**
        - **Tamanho**: 9
        - **Tipo de dado**: integer
        - **Descrição**: Peso bruto em kg.

    - **nSerie**
        - **Tamanho**: 1 a 20
        - **Tipo de dado**: string
        - **Descrição**: Número de série do veículo.

    - **tpComb**
        - **Tamanho**: 1 a 2
        - **Tipo de dado**: string
        - **Descrição**: Tipo de combustível.

    - **nMotor**
        - **Tamanho**: 1 a 21
        - **Tipo de dado**: string
        - **Descrição**: Número do motor.

    - **CMT**
        - **Tamanho**: 9
        - **Tipo de dado**: integer
        - **Descrição**: Capacidade máxima de tração em kg.

    - **dist**
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Distância entre eixos em mm.

    - **RENAVAM**
        - **Tamanho**: 9
        - **Tipo de dado**: string
        - **Descrição**: Número do RENAVAM.

    - **anoMod**
        - **Tamanho**: 4
        - **Tipo de dado**: integer
        - **Descrição**: Ano do modelo do veículo.

    - **anoFab**
        - **Tamanho**: 4
        - **Tipo de dado**: integer
        - **Descrição**: Ano de fabricação do veículo.

    - **tpPint**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Tipo de pintura do veículo.

    - **tpVeic**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Tipo do veículo.

    - **espVeic**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Espécie do veículo.

    - **VIN**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Identificação do veículo (VIN).

    - **condVeic**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Condição do veículo (1 - Acabado, 2 - Inacabado).

    - **cMod**
        - **Tamanho**: 6
        - **Tipo de dado**: string
        - **Descrição**: Código do modelo do veículo.

- **Grupo Med - Informações de Medicamentos**
    - **cProdANVISA**
        - **Tamanho**: 1 a 13
        - **Tipo de dado**: string
        - **Descrição**: Código do produto na Anvisa.

    - **xMotivoIsencao**
        - **Tamanho**: 1 a 255
        - **Tipo de dado**: string
        - **Descrição**: Motivo da isenção da apresentação do código ANVISA.

    - **vPMC**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Preço Máximo ao Consumidor.

- **Grupo Arma - Informações de Armamentos**
    - **tpArma**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Tipo de arma de fogo (0 - Uso permitido, 1 - Uso restrito).

    - **nSerie**
        - **Tamanho**: 1 a 15
        - **Tipo de dado**: string
        - **Descrição**: Número de série da arma.

    - **nCano**
        - **Tamanho**: 1 a 15
        - **Tipo de dado**: string
        - **Descrição**: Número de série do cano.

    - **descr**
        - **Tamanho**: 1 a 256
        - **Tipo de dado**: string
        - **Descrição**: Descrição completa da arma.

- **Grupo Comb - Informações de Combustíveis**
    - **cProdANP**
        - **Tamanho**: 9
        - **Tipo de dado**: string
        - **Descrição**: Código do produto conforme tabela da ANP (Agência Nacional de Petróleo).

    - **descANP**
        - **Tamanho**: 1 a 95
        - **Tipo de dado**: string
        - **Descrição**: Descrição do produto conforme ANP.

    - **pGLP**
        - **Tamanho**: 5v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual de Gás Liquefeito de Petróleo no produto.

    - **pGNn**
        - **Tamanho**: 5v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual de Gás Natural Nacional no produto.

    - **pGNi**
        - **Tamanho**: 5v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual de Gás Natural Importado no produto.

    - **vPart**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da parcela do produto.

    - **CODIF**
        - **Tamanho**: 1 a 21
        - **Tipo de dado**: string
        - **Descrição**: Código do CODIF.

    - **qTemp**
        - **Tamanho**: 16v3
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade de combustível à temperatura ambiente.

    - **UFCons**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Unidade Federativa de consumo do combustível.

    - **pBio**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual do índice de mistura do Biodiesel (B100) no Óleo Diesel B instituído pelo órgão regulamentador.

- **Subgrupo CIDE - CIDE Combustíveis**
    - **qBCProd**
        - **Tamanho**: 12v4
        - **Tipo de dado**: decimal
        - **Descrição**: Base de Cálculo do CIDE (quantidade comercializada).

    - **vAliqProd**
        - **Tamanho**: 11v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota do CIDE (em reais).

    - **vCIDE**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do CIDE.

- **Subgrupo Encerrantes de Combustíveis**
    - **nBico**
        - **Tamanho**: 1 a 3
        - **Tipo de dado**: string
        - **Descrição**: Número de identificação do bico utilizado no abastecimento.

    - **nBomba**
        - **Tamanho**: 1 a 3
        - **Tipo de dado**: string
        - **Descrição**: Número de identificação da bomba ao qual o bico está interligado.

    - **nTanque**
        - **Tamanho**: 1 a 3
        - **Tipo de dado**: string
        - **Descrição**: Número de identificação do tanque ao qual o bico está interligado.

    - **vEncIni**
        - **Tamanho**: 12v3
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do encerrante no início do abastecimento.

    - **vEncFin**
        - **Tamanho**: 12v3
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do encerrante no final do abastecimento.

- **Subgrupo origComb - Indicador da Origem do Combustível**
    - **indImport**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Indicador de importação do combustível.
            - **0**: Nacional.
            - **1**: Importado.

    - **cUFOrig**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Código da UF de origem do produtor ou do importado, conforme tabela IBGE.

    - **pOrig**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual originário para a UF.

#### Grupo Imposto - Informações dos Impostos
- **vTotTrib**
    - **Tamanho**: 15v2
    - **Tipo de dado**: decimal
    - **Descrição**: Valor estimado total de impostos federais, estaduais e municipais
- **SubGrupo ICMS - Informações do ICMS**
    - **ICMS00**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **00**: Tributada integralmente.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da BC do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    - **ICMS02**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **02**: Tributação monofásica própria sobre combustíveis.

        - **qBCMono** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada.

        - **adRemICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota "ad rem" do imposto.

        - **vICMSMono**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS próprio.            
    - **ICMS10**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **10**: Tributada e com cobrança do ICMS por substituição tributária.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da BC do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **vBCFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do FCP.

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da BC do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da BC ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **vICMSSTDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS-ST desonerado.

        - **motDesICMSST** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS-ST:
                - **3**: Uso na agropecuária.
                - **9**: Outros.
                - **12**: Fomento agropecuário.
    - **ICMS15**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **15**: Tributação monofásica própria e com responsabilidade pela retenção sobre combustíveis.

        - **qBCMono** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada.

        - **adRemICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota ad rem do imposto.

        - **vICMSMono**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS próprio.

        - **qBCMonoReten** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada sujeita a retenção.

        - **adRemICMSReten**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota ad rem do imposto com retenção.

        - **vICMSMonoReten**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS com retenção.

        - **pRedAdRem** (opcional)
            - **Tamanho**: 3v2
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução do valor da alíquota ad rem do ICMS.

        - **motRedAdRem** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da redução da alíquota ad rem:
                - **1**: Transporte coletivo de passageiros.
                - **9**: Outros.
    - **ICMS20**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **20**: Tributação com redução da base de cálculo.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da BC do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **pRedBC**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **vICMSDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS desonerado.

        - **motDesICMS** (opcional)
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS:
                - **1**: Táxi.
                - **3**: Produção agrícola.
                - **4**: Frotista/Locadora.
                - **5**: Diplomatico/Consular.
                - **6**: Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio.
                - **7**: SUFRAMA.
                - **8**: Venda a órgão público.
                - **9**: Outros.
                - **10**: Deficiente Condutor.
                - **11**: Deficiente Não Condutor.
                - **12**: Fomento agropecuário.

        - **vBCFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP).

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do Fundo de Combate à Pobreza (FCP).

        - **indDeduzDeson** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Indica se o valor do ICMS desonerado (vICMSDeson) deduz do valor do item (vProd) / total da NF-e:
                - **0**: Não deduz.
                - **1**: Deduz.
    - **ICMS30**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **30**: Isenta ou não tributada e com cobrança do ICMS por substituição tributária.

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo do ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **vICMSDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS desonerado.

        - **motDesICMS** (opcional)
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS:
                - **1**: Táxi.
                - **3**: Produção agrícola.
                - **4**: Frotista/Locadora.
                - **5**: Diplomático/Consular.
                - **6**: Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio.
                - **7**: SUFRAMA.
                - **8**: Venda a órgão público.
                - **9**: Outros.
                - **10**: Deficiente Condutor.
                - **11**: Deficiente Não Condutor.
                - **12**: Fomento agropecuário.

        - **indDeduzDeson** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Indica se o valor do ICMS desonerado (vICMSDeson) deduz do valor do item (vProd) / total da NF-e:
                - **0**: Não deduz.
                - **1**: Deduz.
    - **ICMS40**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **40**: Isenta.
                - **41**: Não tributada.
                - **50**: Imune.

        - **vICMSDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS desonerado.

        - **motDesICMS** (opcional)
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS:
                - **1**: Táxi.
                - **3**: Produção agrícola.
                - **4**: Frotista/Locadora.
                - **5**: Diplomático/Consular.
                - **6**: Utilitários e Motocicletas da Amazônia Ocidental e Áreas de Livre Comércio.
                - **7**: SUFRAMA.
                - **8**: Venda a órgão público.
                - **9**: Outros.
                - **10**: Deficiente Condutor.
                - **11**: Deficiente Não Condutor.
                - **12**: Fomento agropecuário.
            
        - **indDeduzDeson** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Indica se o valor do ICMS desonerado (vICMSDeson) deduz do valor do item (vProd) / total da NF-e:
                - **0**: Não deduz.
                - **1**: Deduz.
    - **ICMS51**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **51**: Diferimento parcial ou total.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **pRedBC** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).
        
        - **cBenefRBC** (opcional)
            - **Tamanho**: 10
            - **Tipo de dado**: string
            - **Descrição**: Código de Benefício Fiscal na UF aplicado ao item quando houver RBC.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMSOp** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS da operação.

        - **pDif**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do diferimento.

        - **vICMSDif** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS diferido.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS a recolher.

        - **vBCFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP).

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do Fundo de Combate à Pobreza (FCP).        

        - **pFCPDif** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do diferimento do ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **vFCPDif** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) diferido.
        
        - **vFCPEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor efetivo do ICMS relativo ao Fundo de Combate à Pobreza (FCP).
    - **ICMS53**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **53**: Tributação monofásica com responsabilidade pela retenção sobre combustíveis.

        - **qBCMono** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada.

        - **adRemICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota "ad rem" do imposto.

        - **vICMSMono**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS próprio.

        - **qBCMonoReten** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada sujeita à retenção.

        - **adRemICMSReten**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota "ad rem" do imposto com retenção.

        - **vICMSMonoReten**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS com retenção.

        - **pRedAdRem** (opcional)
            - **Tamanho**: 3v2
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução do valor da alíquota "ad rem" do ICMS.

        - **motRedAdRem** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da redução da alíquota "ad rem":
                - **1**: Transporte coletivo de passageiros.
                - **9**: Outros.
    - **ICMS60**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS.
                - **60**: Cobrado anteriormente por substituição tributária.

        - **vBCSTRet**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do ICMS ST retido anteriormente.

        - **pST**
            - **Tamanho**: 3v2
            - **Tipo de dado**: decimal
            - **Descrição**: Aliquota suportada pelo consumidor final.
        
        - **vICMSSubstituto**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS Próprio do Substituto cobrado em operação anterior.

        - **vICMSSTRet**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST retido anteriormente.

        - **vBCFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP) retido anteriormente por substituição tributária.
        
        - **pFCPSTRet**
            - **Tamanho**: 3v2
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de FCP retido anteriormente por substituição tributária.

        - **vFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do Fundo de Combate à Pobreza (FCP) retido anteriormente por substituição tributária.
        
        - **pRedBCEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo efetiva.

        - **vBCEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo efetiva.

        - **pICMSEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS efetiva.

        - **vICMSEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS efetivo.
    - **ICMS61**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **61**: Tributação monofásica sobre combustíveis cobrada anteriormente.

        - **qBCMonoRet** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade tributada retida anteriormente.

        - **adRemICMSRet**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota "ad rem" do imposto retido anteriormente.

        - **vICMSMonoRet**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS retido anteriormente.
    - **ICMS70**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **70**: Com redução de base de cálculo e cobrança do ICMS por substituição tributária.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **pRedBC**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **vBCFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP).

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC) do ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **vICMSDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS de desoneração.

        - **motDesICMS** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS:
                - **3**: Uso na agropecuária.
                - **9**: Outros.
                - **12**: Fomento agropecuário.

        - **indDeduzDeson** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Indica se o valor do ICMS desonerado deduz do valor do item:
                - **0**: Não deduz.
                - **1**: Deduz.

        - **vICMSSTDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST desonerado.

        - **motDesICMSST** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS ST:
                - **3**: Uso na agropecuária.
                - **9**: Outros.
                - **12**: Fomento agropecuário.
    - **ICMS90**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **90**: Outras.

        - **modBC** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pRedBC** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).

        - **pICMS** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **vBCFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do Fundo de Combate à Pobreza (FCP).

        - **pFCP** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **vFCP** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP).

        - **modBCST** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC) do ICMS ST.

        - **vBCST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **vICMSDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS de desoneração.

        - **motDesICMS** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS:
                - **3**: Uso na agropecuária.
                - **9**: Outros.
                - **12**: Fomento agropecuário.

        - **indDeduzDeson** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Indica se o valor do ICMS desonerado deduz do valor do item:
                - **0**: Não deduz.
                - **1**: Deduz.

        - **vICMSSTDeson** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST desonerado.

        - **motDesICMSST** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Motivo da desoneração do ICMS ST:
                - **3**: Uso na agropecuária.
                - **9**: Outros.
                - **12**: Fomento agropecuário.
    - **ICMSPart**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **10**: Tributada e com cobrança do ICMS por substituição tributária.
                - **90**: Outros.

        - **modBC**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo (BC) do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pRedBC** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).

        - **pICMS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo (BC) do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC) do ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **pBCOp**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual para determinação do valor da Base de Cálculo da operação própria.

        - **UFST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Sigla da UF para a qual é devido o ICMS ST da operação.
    - **ICMSST**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código de tributação pelo ICMS:
                - **41**: Não Tributado.
                - **60**: Cobrado anteriormente por substituição tributária.

        - **vBCSTRet**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST retido na UF remetente.

        - **pST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota suportada pelo consumidor final.

        - **vICMSSubstituto** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS Próprio do Substituto cobrado em operação anterior.

        - **vICMSSTRet**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST retido na UF remetente.

        - **vBCFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido anteriormente por substituição tributária.

        - **pFCPSTRet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **vFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

        - **vBCSTDest**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST na UF destino.

        - **vICMSSTDest**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST na UF destino.

        - **pRedBCEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo efetiva.

        - **vBCEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo efetiva.

        - **pICMSEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS efetivo.

        - **vICMSEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS efetivo.
    - **ICMSSN101**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Código de Situação da Operação no Simples Nacional:
                - **101**: Tributada pelo Simples Nacional com permissão de crédito.

        - **pCredSN**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de crédito permitido para a operação.

        - **vCredICMSSN**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor de crédito do ICMS que pode ser apropriado.
    - **ICMSSN102**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Código de Situação da Operação no Simples Nacional:
                - **102**: Tributada pelo Simples Nacional sem permissão de crédito.
                - **103**: Isenção do ICMS no Simples Nacional para faixa de receita bruta.
                - **300**: Imune.
                - **400**: Não tributada pelo Simples Nacional.
    - **ICMSSN201**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Código de Situação da Operação no Simples Nacional:
                - **201**: Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por substituição tributária.

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo do ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **pCredSN**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual aplicável para cálculo do crédito do Simples Nacional.

        - **vCredICMSSN**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do crédito de ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional).
    - **ICMSSN202**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Código de Situação da Operação no Simples Nacional:
                - **202**: Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por substituição tributária.
                - **203**: Isenção do ICMS no Simples Nacional para faixa de receita bruta e com cobrança do ICMS por substituição tributária.

        - **modBCST**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo do ICMS ST.

        - **vBCST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.
    - **ICMSSN500**
        - **orig**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Código de Situação da Operação no Simples Nacional:
                - **500**: ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação.

        - **vBCSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST retido anteriormente.

        - **pST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota suportada pelo consumidor final.

        - **vICMSSubstituto** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS próprio do substituto.

        - **vICMSSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST retido anteriormente.

        - **vBCFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido anteriormente.

        - **pFCPSTRet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do FCP retido anteriormente por substituição tributária.

        - **vFCPSTRet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **pRedBCEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da base de cálculo efetiva.

        - **vBCEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo efetiva.

        - **pICMSEfet** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS efetiva.

        - **vICMSEfet** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS efetivo.
    - **ICMSSN900**
        - **orig** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Origem da mercadoria:
                - **0**: Nacional.
                - **1**: Estrangeira - Importação direta.
                - **2**: Estrangeira - Adquirida no mercado interno.

        - **CSOSN**
            - **Tamanho**: 3
            - **Tipo de dado**: string
            - **Descrição**: Tributação pelo ICMS:
                - **900**: Outros.

        - **modBC** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo (BC) do ICMS:
                - **0**: Margem Valor Agregado (%).
                - **1**: Pauta (valor).
                - **2**: Preço Tabelado Máximo (valor).
                - **3**: Valor da Operação.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS.

        - **pRedBC** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC).

        - **pICMS** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS.

        - **vICMS** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS.

        - **modBCST** (opcional)
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Modalidade de determinação da Base de Cálculo (BC) do ICMS ST:
                - **0**: Preço tabelado ou máximo sugerido.
                - **1**: Lista Negativa (valor).
                - **2**: Lista Positiva (valor).
                - **3**: Lista Neutra (valor).
                - **4**: Margem Valor Agregado (%).
                - **5**: Pauta (valor).
                - **6**: Valor da Operação.

        - **pMVAST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual da Margem de Valor Adicionado ICMS ST.

        - **pRedBCST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual de redução da Base de Cálculo (BC) do ICMS ST.

        - **vBCST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do ICMS ST.

        - **pICMSST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do ICMS ST.

        - **vICMSST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do ICMS ST.

        - **vBCFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Base de Cálculo (BC) do FCP retido por substituição tributária.

        - **pFCPST** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual do FCP retido por substituição tributária.

        - **vFCPST** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do FCP retido por substituição tributária.

        - **pCredSN** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Percentual aplicável de cálculo do crédito (Simples Nacional).

        - **vCredICMSSN** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do crédito de ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional).
- **SubGrupo IPI - Informações do Imposto sobre Produtos Industrializados**
    - **clEnq** (opcional)
        - **Tamanho**: variável
        - **Tipo de dado**: string
        - **Descrição**: Classe de enquadramento do IPI para o item, conforme tabela TIPI.

    - **CNPJProd** (opcional)
        - **Tamanho**: 14
        - **Tipo de dado**: string
        - **Descrição**: CNPJ do produtor do item, quando relevante.

    - **cSelo** (opcional)
        - **Tamanho**: variável (até 60 caracteres)
        - **Tipo de dado**: string
        - **Descrição**: Código do selo de controle do IPI, quando aplicável.

    - **qSelo** (opcional)
        - **Tamanho**: 12v2
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade de selos de controle do IPI.

    - **cEnq**
        - **Tamanho**: 3
        - **Tipo de dado**: string
        - **Descrição**: Código de enquadramento legal do IPI, conforme tabelas TIPI.
    - **IPITrib**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do IPI.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo do IPI.

        - **pIPI** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do IPI.

        - **qUnid** (opcional)
            - **Tamanho**: 12v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade total na unidade padrão para tributação.

        - **vUnid** (opcional)
            - **Tamanho**: 11v4
            - **Tipo de dado**: decimal
            - **Descrição**: Valor por unidade tributável. Representa o imposto Pauta.

        - **vIPI**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor do IPI calculado.
    - **IPINT(Não Tributado)**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do IPI
- **SubGrupo II - Imposto de Importação**
    - **vBC**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do imposto de importação.

    - **vDespAdu**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total das despesas aduaneiras.

    - **vII**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do imposto de importação calculado.

    - **vIOF**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do IOF (Imposto sobre Operações Financeiras).
- **SubGrupo ISSQN - Imposto Sobre Serviços**
    - **vBC**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do ISSQN.

    - **vAliq**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota aplicada para o cálculo do ISSQN.

    - **vISSQN**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ISSQN.

    - **cMunFG**
        - **Tamanho**: 7
        - **Tipo de dado**: string
        - **Descrição**: Código do município de ocorrência do fato gerador.

    - **cListServ**
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Código do serviço conforme lista da Lei Complementar 116/03.

    - **vDeducao** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor de dedução permitido por legislação municipal.

    - **vOutro** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Outros valores relacionados ao ISSQN.

    - **vDescIncond** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do desconto incondicionado.

    - **vDescCond** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do desconto condicionado.

    - **vISSRet** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ISS retido.

    - **indISS**
        - **Tamanho**: 1
        - **Tipo de dado**: inteiro
        - **Descrição**: Indicador da exigibilidade do ISSQN:
            - **1**: Exigível.
            - **2**: Não incidente.
            - **3**: Isento.
            - **4**: Exportação.
            - **5**: Imune.
            - **6**: Exigibilidade suspensa por decisão judicial.
            - **7**: Exigibilidade suspensa por processo administrativo.

    - **cServico** (opcional)
        - **Tamanho**: variável
        - **Tipo de dado**: string
        - **Descrição**: Código do serviço próprio do município.

    - **cMun** (opcional)
        - **Tamanho**: 7
        - **Tipo de dado**: string
        - **Descrição**: Código do município onde o serviço foi prestado.

    - **cPais** (opcional)
        - **Tamanho**: 4
        - **Tipo de dado**: string
        - **Descrição**: Código do país onde o serviço foi prestado.

    - **nProcesso** (opcional)
        - **Tamanho**: variável
        - **Tipo de dado**: string
        - **Descrição**: Número do processo judicial ou administrativo que suspendeu a exigibilidade.

    - **indIncentivo**
        - **Tamanho**: 1
        - **Tipo de dado**: inteiro
        - **Descrição**: Indicador de incentivo fiscal:
            - **1**: Sim.
            - **2**: Não.
- **SubGrupo PIS**
    - **PISAliq**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do PIS.

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo do PIS.

        - **pPIS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do PIS (em percentual).

        - **vPIS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o PIS.
    - **PISQtde**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do PIS. Valores possíveis:
                - **03**: Operação tributável com base na quantidade.

        - **qBCProd**
            - **Tamanho**: 16v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade vendida utilizada como base de cálculo do PIS.

        - **vAliqProd**
            - **Tamanho**: 13v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do PIS (em reais por unidade de produto).

        - **vPIS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o PIS.
    - **PISNT**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do PIS. Valores possíveis.
    - **PISOutr**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do PIS. Valores possíveis:
                - **49**: Outras operações.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo do PIS.

        - **pPIS** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do PIS (em percentual).

        - **qBCProd** (opcional)
            - **Tamanho**: 16v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade vendida utilizada como base de cálculo do PIS.

        - **vAliqProd** (opcional)
            - **Tamanho**: 13v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do PIS (em reais por unidade de produto).

        - **vPIS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o PIS.
- **SubGrupo PISST**
    - **vBC** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do PIS.

    - **pPIS** (opcional)
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota do PIS (em percentual).

    - **qBCProd** (opcional)
        - **Tamanho**: 16v4
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade vendida utilizada como base de cálculo do PIS.

    - **vAliqProd** (opcional)
        - **Tamanho**: 13v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota do PIS (em reais por unidade de produto).

    - **vPIS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da Contribuição para o PIS.
- **SubGrupo COFINS**
    - **COFINSAliq**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do COFINS.

        - **vBC**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo do COFINS.

        - **pCOFINS**
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do COFINS (em percentual).

        - **vCOFINS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o COFINS.
    - **COFINSQtde**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do COFINS. Valores possíveis:
                - **03**: Operação tributável com base na quantidade.

        - **qBCProd**
            - **Tamanho**: 16v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade vendida utilizada como base de cálculo do COFINS.

        - **vAliqProd**
            - **Tamanho**: 13v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do COFINS (em reais por unidade de produto).

        - **vCOFINS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o COFINS.
    - **COFINSNT**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do COFINS. Valores possíveis.
    - **COFINSOutr**
        - **CST**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da Situação Tributária do COFINS. Valores possíveis:
                - **49**: Outras operações.

        - **vBC** (opcional)
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da base de cálculo do COFINS.

        - **pCOFINS** (opcional)
            - **Tamanho**: 3v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do COFINS (em percentual).

        - **qBCProd** (opcional)
            - **Tamanho**: 16v4
            - **Tipo de dado**: decimal
            - **Descrição**: Quantidade vendida utilizada como base de cálculo do COFINS.

        - **vAliqProd** (opcional)
            - **Tamanho**: 13v4
            - **Tipo de dado**: decimal
            - **Descrição**: Alíquota do COFINS (em reais por unidade de produto).

        - **vCOFINS**
            - **Tamanho**: 13v2
            - **Tipo de dado**: decimal
            - **Descrição**: Valor da Contribuição para o COFINS.
- **SubGrupo COFINSST**
    - **vBC** (opcional)
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do COFINS.

    - **pCOFINS** (opcional)
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota do COFINS (em percentual).

    - **qBCProd** (opcional)
        - **Tamanho**: 16v4
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade vendida utilizada como base de cálculo do COFINS.

    - **vAliqProd** (opcional)
        - **Tamanho**: 13v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota do COFINS (em reais por unidade de produto).

    - **vCOFINS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da Contribuição para o COFINS.
- **SubGrupo ICMSUFDest**
    - **vBCUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do ICMS na UF de destino.

    - **vBCFCPUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da base de cálculo do FCP na UF de destino.

    - **pFCPUFDest**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual do FCP na UF de destino.

    - **pICMSUFDest**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota interna do ICMS na UF de destino.

    - **pICMSInter**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota interestadual do ICMS.

    - **pICMSInterPart**
        - **Tamanho**: 3v4
        - **Tipo de dado**: decimal
        - **Descrição**: Percentual de partilha do ICMS entre UF de origem e destino.

    - **vFCPUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do FCP para a UF de destino.

    - **vICMSUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ICMS para a UF de destino.

    - **vICMSUFRemet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ICMS para a UF do remetente.

#### Grupo ImpostoDevol - Informações dos Impostos
- **pDevol**
    - **Tamanho**: 3v4
    - **Tipo de dado**: decimal
    - **Descrição**: Percentual de devolução do imposto.
- **IPI**
    - **vIPIDevol**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do IPI devolvido.

#### infAdProd
- **Tamanho**: 500
- **Tipo de dado**: string
- **Descrição**: Informações adicionais do produto (norma referenciada, informações complementares, etc).

#### SubGrupo obsItem
- **obsCont** (opcional)        
    - **xTexto**
        - **Tamanho**: 1 a 60 caracteres
        - **Tipo de dado**: string
        - **Descrição**: Texto da observação de uso livre.
- **(Atributo)xCampo**
    - **Tamanho**: 1 a 20 caracteres
    - **Tipo de dado**: string
    - **Descrição**: Nome do campo da observação.
- **obsFisco** (opcional)
    - **xTexto**
        - **Tamanho**: 1 a 60 caracteres
        - **Tipo de dado**: string
        - **Descrição**: Texto da observação de uso livre.
- **(Atributo)xCampo**
    - **Tamanho**: 1 a 20 caracteres
    - **Tipo de dado**: string
    - **Descrição**: Nome do campo da observação.

### Grupo Total - Totalizadores
- **ICMSTot**
    - **vBC**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: BC do ICMS.

    - **vICMS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do ICMS.

    - **vICMSDeson**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do ICMS desonerado.

    - **vFCPUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ICMS relativo ao Fundo de Combate à Pobreza (FCP) para a UF de destino.

    - **vICMSUFDest**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ICMS de partilha para a UF do destinatário.

    - **vICMSUFRemet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ICMS de partilha para a UF do remetente.

    - **vFCP**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do FCP (Fundo de Combate à Pobreza).

    - **vBCST**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: BC do ICMS ST.

    - **vST**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do ICMS ST.

    - **vFCPST**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do FCP retido por substituição tributária.

    - **vFCPSTRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do FCP retido anteriormente por substituição tributária.

    - **qBCMono**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total da quantidade tributada do ICMS monofásico próprio.

    - **vICMSMono**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ICMS monofásico próprio.

    - **qBCMonoReten**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total da quantidade tributada do ICMS monofásico sujeito a retenção.

    - **vICMSMonoReten**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ICMS monofásico sujeito a retenção.

    - **qBCMonoRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total da quantidade tributada do ICMS monofásico retido anteriormente.

    - **vICMSMonoRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ICMS monofásico retido anteriormente.

    - **vProd**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total dos produtos e serviços.

    - **vFrete**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do Frete.

    - **vSeg**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do Seguro.

    - **vDesc**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do Desconto.

    - **vII**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do II.

    - **vIPI**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do IPI.

    - **vIPIDevol**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total do IPI devolvido.

    - **vPIS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do PIS.

    - **vCOFINS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do COFINS.

    - **vOutro**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Outras Despesas acessórias.

    - **vNF**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Total da NF-e.

    - **vTotTrib**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor estimado total de impostos federais, estaduais e municipais.
- **ISSQNTot**
    - **vServ**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total dos serviços sob incidência de ISSQN.

    - **vBC**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Base de cálculo do ISSQN.

    - **vISS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ISSQN.

    - **vPIS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do PIS incidente sobre serviços.

    - **vCOFINS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total da COFINS incidente sobre serviços.

    - **dCompet**
        - **Tamanho**: AAAA-MM-DD
        - **Tipo de dado**: data
        - **Descrição**: Data de competência dos serviços.

    - **vDeducao**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total das deduções permitidas por lei.

    - **vOutro**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total de outras retenções.

    - **vDescIncond**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total dos descontos incondicionados.

    - **vDescCond**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total dos descontos condicionados.

    - **vISSRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total do ISS retido.

    - **cRegTrib**
        - **Tamanho**: N3
        - **Tipo de dado**: numérico
        - **Descrição**: Código do regime tributário aplicável ao ISSQN:
            - 1: Microempresa Municipal
            - 2: Estimativa
            - 3: Sociedade de Profissionais
            - 4: Cooperativa
            - 5: MEI (Microempreendedor Individual)
            - 6: Microempresário ou Empresa de Pequeno Porte
- **RetTrib**
    - **vRetPIS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Retido de PIS.

    - **vRetCOFINS**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Retido de COFINS.

    - **vRetCSLL**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Retido de CSLL.

    - **vBCIRRF**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Base de Cálculo do IRRF.

    - **vIRRF**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Retido de IRRF.

    - **vBCRetPrev**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Base de Cálculo da Retenção da Previdência.

    - **vRetPrev**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor Retido de Previdência.

### Grupo Transp - Dados de transporte
- **modFrete**
  - **Tamanho**: 1
  - **Tipo de dado**: string
  - **Descrição**: Modalidade do frete.
    - **Valores possíveis**:
      - **0**: Contratação do Frete por conta do Remetente (CIF);
      - **1**: Contratação do Frete por conta do Destinatário/Remetente (FOB);
      - **2**: Contratação do Frete por conta de Terceiros;
      - **3**: Transporte próprio por conta do Remetente;
      - **4**: Transporte próprio por conta do Destinatário;
      - **9**: Sem Ocorrência de Transporte.
- **SubGrupo Transporta**
    - **CNPJ**
        - **Tamanho**: 14
        - **Tipo de dado**: numérico
        - **Descrição**: CNPJ do transportador.

    - **CPF**
    - **Tamanho**: 11
    - **Tipo de dado**: numérico
    - **Descrição**: CPF do transportador (utilizado quando não houver CNPJ).

    - **xNome**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Nome ou razão social do transportador.

    - **IE**
        - **Tamanho**: 0-14
        - **Tipo de dado**: texto
        - **Descrição**: Inscrição Estadual do transportador.

    - **xEnder**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Endereço completo do transportador.

    - **xMun**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Nome do município do transportador.

    - **UF**
        - **Tamanho**: 2
        - **Tipo de dado**: texto
        - **Descrição**: Sigla da unidade federativa do transportador.
- **veicTransp**
    - **placa**
        - **Tamanho**: 7
        - **Tipo de dado**: string
        - **Descrição**: Placa do veículo de transporte, no formato nacional (AAA-9999 ou similar).

    - **UF**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Sigla da unidade federativa onde o veículo está registrado.

    - **RNTC**
        - **Tamanho**: 20
        - **Tipo de dado**: string
        - **Descrição**: Registro Nacional de Transportadores de Carga (RNTC) do veículo.

- **reboque**
    - **placa**
        - **Tamanho**: 7
        - **Tipo de dado**: string
        - **Descrição**: Placa do reboque, no formato nacional (AAA-9999 ou similar).

    - **UF**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Sigla da unidade federativa onde o reboque está registrado.

    - **RNTC**
        - **Tamanho**: 20
        - **Tipo de dado**: string
        - **Descrição**: Registro Nacional de Transportadores de Carga (RNTC) do reboque.  

- **vagao**
  - **Tamanho**: 20
  - **Tipo de dado**: string
  - **Descrição**: Identificação do vagão (versão 2.0).
  - **Ocorrência mínima**: 0 (opcional)

- **balsa**
  - **Tamanho**: 20
  - **Tipo de dado**: string
  - **Descrição**: Identificação da balsa (versão 2.0).
  - **Ocorrência mínima**: 0 (opcional)
- **SubGrupo RetTransp**
    - **vServ**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor total dos serviços.

    - **vBCRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Base de cálculo da retenção.

    - **pICMSRet**
        - **Tamanho**: 5v2
        - **Tipo de dado**: decimal
        - **Descrição**: Alíquota da retenção.

    - **vICMSRet**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do ICMS retido.

    - **CFOP**
        - **Tamanho**: 4
        - **Tipo de dado**: numérico
        - **Descrição**: Código Fiscal de Operações e Prestações.

    - **cMunFG**
        - **Tamanho**: 7
        - **Tipo de dado**: numérico
        - **Descrição**: Código do município de ocorrência do fato gerador do ICMS, conforme tabela do IBGE.
- **SubGrupo Vol (volumes)**
    - **qVol**
        - **Tamanho**: 1-15
        - **Tipo de dado**: numérico
        - **Descrição**: Quantidade de volumes transportados.

    - **esp**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Espécie dos volumes transportados (ex.: caixa, pacote, etc.).

    - **marca**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Marca dos volumes transportados.

    - **nVol**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Numeração dos volumes transportados.

    - **pesoL**
        - **Tamanho**: 13v3
        - **Tipo de dado**: decimal
        - **Descrição**: Peso líquido total dos volumes transportados.

    - **pesoB**
        - **Tamanho**: 13v3
        - **Tipo de dado**: decimal
        - **Descrição**: Peso bruto total dos volumes transportados.
    - **Lacres**
        - **nLacre**
            - **Tamanho**: 1-60
            - **Tipo de dado**: texto
            - **Descrição**: Número do lacre associado ao volume transportado.

### Grupo Cobr - Dados de cobrança
- **Subgrupo Fatura**
    - **nFat**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Número da fatura.

    - **vOrig**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor original da fatura.

    - **vDesc**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do desconto da fatura.

    - **vLiq**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor líquido da fatura.
- **SubGrupo Duplicata**
    - **nDup**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Número da duplicata.

    - **dVenc**
        - **Tamanho**: AAAA-MM-DD
        - **Tipo de dado**: data
        - **Descrição**: Data de vencimento da duplicata.

    - **vDup**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da duplicata.

### Grupo Pag - Dados de pagamento
- **SubGrupo DetPag**
    - **indPag**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Indicador da Forma de Pagamento:
            - **0**: Pagamento à Vista
            - **1**: Pagamento à Prazo.

    - **tPag**
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Forma de Pagamento (código numérico com dois dígitos).

    - **xPag**
        - **Tamanho**: 2-60
        - **Tipo de dado**: texto
        - **Descrição**: Descrição do Meio de Pagamento.

    - **vPag**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor do Pagamento. Pode ser omitido se `tPag=90` (Sem Pagamento).

    - **dPag**
        - **Tamanho**: AAAA-MM-DD
        - **Tipo de dado**: data
        - **Descrição**: Data do Pagamento.

    - **CNPJPag**
        - **Tamanho**: 14
        - **Tipo de dado**: numérico
        - **Descrição**: CNPJ transacional do pagamento, caso processado em outro estabelecimento.

    - **UFPag**
        - **Tamanho**: 2
        - **Tipo de dado**: texto
        - **Descrição**: UF do estabelecimento onde o pagamento foi processado/transacionado.

    - **SubGrupo Card**
        - **tpIntegra**
            - **Tamanho**: 1
            - **Tipo de dado**: string
            - **Descrição**: Tipo de Integração do Processo de Pagamento:
                - **1**: Integrado com o sistema de automação da empresa.
                - **2**: Não integrado com o sistema de automação da empresa.

        - **CNPJ**
            - **Tamanho**: 14
            - **Tipo de dado**: numérico
            - **Descrição**: CNPJ da instituição de pagamento.

        - **tBand**
            - **Tamanho**: 2
            - **Tipo de dado**: string
            - **Descrição**: Código da bandeira da operadora de cartão.

        - **cAut**
            - **Tamanho**: 1-128
            - **Tipo de dado**: texto
            - **Descrição**: Número de autorização da operação.

        - **CNPJReceb**
            - **Tamanho**: 14
            - **Tipo de dado**: numérico
            - **Descrição**: CNPJ do beneficiário do pagamento.

        - **idTermPag**
            - **Tamanho**: 1-40
            - **Tipo de dado**: texto
            - **Descrição**: Identificador do terminal de pagamento.

- **vTroco**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor do Troco.

### Grupo InfInterMEd - Intermediador
- **CNPJ**
  - **Tamanho**: 14
  - **Tipo de dado**: numérico
  - **Descrição**: CNPJ do intermediador da operação (ex.: plataforma de marketplace).

- **idCadIntTran**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Identificador do cadastro do intermediador na plataforma utilizada.

### Grupo InfAdic - Informações Adicionais
- **infAdFisco**
  - **Tamanho**: 1-2000
  - **Tipo de dado**: texto
  - **Descrição**: Informações adicionais de interesse do Fisco.

- **infCpl**
  - **Tamanho**: 1-5000
  - **Tipo de dado**: texto
  - **Descrição**: Informações complementares de interesse do contribuinte.

- **SubGrupo obsCont**
    - **xTexto**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Conteúdo do campo de uso livre do contribuinte.

    - **(Atributo) xCampo**
        - **Tamanho**: 1-20
        - **Tipo de dado**: texto (atributo)
        - **Descrição**: Nome do campo.
- **SubGrupo obsFisco**
    - **xTexto**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Conteúdo do campo de uso livre do contribuinte.

    - **(Atributo) xCampo**
        - **Tamanho**: 1-20
        - **Tipo de dado**: texto (atributo)
        - **Descrição**: Nome do campo.
- **SubGrupo procRef**
    - **nProc**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Identificador do processo ou ato concessório.

    - **indProc**
        - **Tamanho**: 1
        - **Tipo de dado**: string
        - **Descrição**: Origem do processo:
            - **0**: SEFAZ
            - **1**: Justiça Federal
            - **2**: Justiça Estadual
            - **3**: Secex/RFB
            - **4**: CONFAZ
            - **9**: Outros.

    - **tpAto** (opcional)
        - **Tamanho**: 2
        - **Tipo de dado**: string
        - **Descrição**: Tipo do ato concessório (quando `indProc=0` - SEFAZ):
            - **08**: Termo de Acordo
            - **10**: Regime Especial
            - **12**: Autorização Específica
            - **14**: Ajuste SINIEF
            - **15**: Convênio ICMS.

### Grupo Exporta - Dados exportação
- **UFSaidaPais**
    - **Tamanho**: 2
    - **Tipo de dado**: texto
    - **Descrição**: Sigla da unidade federativa de onde ocorreu a saída da mercadoria para o exterior.

- **xLocExporta**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Local de saída da mercadoria.

- **xLocDespacho**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Local de despacho da mercadoria.

### Grupo Compra - Dados do pedido de compra
- **xNEmp**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Número da nota de empenho (quando houver).

- **xPed**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Número do pedido.

- **xCont**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Número do contrato (quando houver).

### Grupo Cana - Dados de cana-de-acucar
- **safra**
  - **Tamanho**: 9
  - **Tipo de dado**: texto
  - **Descrição**: Informar o ano da safra no formato `AAAA/AAAA` (ex.: 2023/2024).

- **ref**
  - **Tamanho**: 6
  - **Tipo de dado**: texto
  - **Descrição**: Mês e ano de referência no formato `MM/AAAA`.

- **qTotMes**
  - **Tamanho**: 13v3
  - **Tipo de dado**: decimal
  - **Descrição**: Quantidade total fornecida no mês.

- **qTotAnt**
  - **Tamanho**: 13v3
  - **Tipo de dado**: decimal
  - **Descrição**: Quantidade total fornecida anteriormente.

- **qTotGer**
  - **Tamanho**: 13v3
  - **Tipo de dado**: decimal
  - **Descrição**: Quantidade total geral fornecida.

- **vFor**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor total do fornecimento.

- **vTotDed**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor total das deduções.

- **vLiqFor**
  - **Tamanho**: 13v2
  - **Tipo de dado**: decimal
  - **Descrição**: Valor líquido devido ao fornecedor.

- **SubGrupo forDia**
    - **(atributo) dia**
        - **Tamanho**: 2
        - **Tipo de dado**: numérico
        - **Descrição**: Dia do fornecimento.

    - **qDia**
        - **Tamanho**: 13v3
        - **Tipo de dado**: decimal
        - **Descrição**: Quantidade fornecida no dia.

- **SubGrupo deduc**
    - **xDed**
        - **Tamanho**: 1-60
        - **Tipo de dado**: texto
        - **Descrição**: Descrição da dedução.

    - **vDed**
        - **Tamanho**: 13v2
        - **Tipo de dado**: decimal
        - **Descrição**: Valor da dedução.

### Grupo InfRespTec - Dados do responsavel tecnico
- **CNPJ**
  - **Tamanho**: 14
  - **Tipo de dado**: numérico
  - **Descrição**: CNPJ da empresa responsável técnica pela emissão da NF-e.

- **xContato**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: Nome da pessoa para contato.

- **email**
  - **Tamanho**: 1-60
  - **Tipo de dado**: texto
  - **Descrição**: E-mail da pessoa para contato.

- **fone**
  - **Tamanho**: 6-14
  - **Tipo de dado**: numérico
  - **Descrição**: Telefone da pessoa para contato (DDD + número).

- **idCSRT**
  - **Tamanho**: 2
  - **Tipo de dado**: numérico
  - **Descrição**: Identificador do Código de Segurança do Responsável Técnico (CSRT).

- **hashCSRT**
  - **Tamanho**: 28-64
  - **Tipo de dado**: texto
  - **Descrição**: Hash do CSRT para autenticação.

### Grupo InfSolicNFF - Informações da Solicitação de Emissão de Nota Fiscal Fácil (NFF)
- **xSolic**
  - **Tamanho**: 1-255
  - **Tipo de dado**: texto
  - **Descrição**: Informações adicionais relacionadas à solicitação da emissão da NFF.

## Grupo infSupl - Informações Suplementares
- **qrCode**
  - **Tamanho**: 1-500
  - **Tipo de dado**: texto
  - **Descrição**: Texto com o QR Code da Nota Fiscal Eletrônica (NFC-e ou NFF), utilizado para facilitar a consulta da nota pelo destinatário.

- **urlChave**
  - **Tamanho**: 1-500
  - **Tipo de dado**: texto
  - **Descrição**: URL de consulta da chave de acesso da NF-e.