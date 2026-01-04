# Estrutura de Projeto – Delphi 12 (VCL)

A ideia inicial deste projeto surge da necessidade de organizar e padronizar dados provenientes de arquivos CSV, que frequentemente apresentam inconsistências estruturais e semânticas.

O objetivo principal é receber um arquivo .csv, realizar a leitura e o tratamento completo dos dados, incluindo a padronização e ajuste do cabeçalho, validação de campos e correção de inconsistências, de modo a permitir a importação segura e confiável dessas informações em um banco de dados.

Com isso, busca-se minimizar erros de importação, garantir a integridade dos dados e facilitar a manutenção e o uso das informações armazenadas.

---

## 📁 Raiz do Projeto   estrutura para me orientar no desenvolvimento

MeuProjeto/
├── MeuProjeto.dpr
├── MeuProjeto.dproj
├── MeuProjeto.dproj.local
├── README.md
├── .gitignore
│
├── docs/
│   ├── arquitetura.md
│   ├── regras-negocio.md
│   └── banco-dados.md
│
├── resources/
│   ├── images/
│   │   └── logo.png
│   ├── reports/
│   │   └── relatorio_padrao.fr3
│   └── sql/
│       ├── create_tables.sql
│       └── queries_base.sql
│
├── src/
│   ├── Application/
│   │   ├── Services/
│   │   │   ├── ProdutoService.pas
│   │   │   └── PedidoService.pas
│   │   └── DTO/
│   │       └── ProdutoDTO.pas
│   │
│   ├── Domain/
│   │   ├── Entities/
│   │   │   ├── Produto.pas
│   │   │   ├── Pedido.pas
│   │   │   └── Cliente.pas
│   │   │
│   │   ├── Interfaces/
│   │   │   ├── IProdutoRepository.pas
│   │   │   └── IPedidoRepository.pas
│   │   │
│   │   ├── ValueObjects/
│   │   │   └── EnderecoVO.pas
│   │   │
│   │   └── Exceptions/
│   │       └── DomainException.pas
│   │
│   ├── Infrastructure/
│   │   ├── Database/
│   │   │   ├── dmConnection.pas
│   │   │   ├── dmConnection.dfm
│   │   │   ├── dmProduto.pas
│   │   │   ├── dmProduto.dfm
│   │   │   ├── ProdutoRepositoryFD.pas
│   │   │   └── FireDACConfig.pas
│   │   │
│   │   ├── Logging/
│   │   │   └── Logger.pas
│   │   │
│   │   └── Config/
│   │       └── AppConfig.pas
│   │
│   ├── Presentation/
│   │   ├── Forms/
│   │   │   ├── frmPrincipal.pas
│   │   │   ├── frmPrincipal.dfm
│   │   │   ├── frmProduto.pas
│   │   │   └── frmProduto.dfm
│   │   │
│   │   ├── Frames/
│   │   │   ├── fraFiltroProduto.pas
│   │   │   └── fraFiltroProduto.dfm
│   │   │
│   │   └── ViewModels/
│   │       └── ProdutoViewModel.pas
│   │
│   └── Shared/
│       ├── Utils/
│       │   └── StringUtils.pas
│       ├── Constants/
│       │   └── AppConstants.pas
│       └── Types/
│           └── CustomTypes.pas
│
├── tests/
│   └── DomainTests.pas
│
├── Win32/
├── Win64/
└── __history/