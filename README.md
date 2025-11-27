# P1 – Murilo e Henrique

Aplicativo Flutter criado no FlutterFlow para apresentar o **Deck do Burger**, um cardápio digital com seções dinâmicas conectadas ao Firebase/Firestore. A tela principal (`CardapioPage`) exibe banners animados, lista itens por categoria e permite abrir uma página de detalhes ou adicionar pedidos ao carrinho.

## Principais recursos
- Integração com Firestore para carregar produtos por categoria (por exemplo: Hamburgueres da Orla, Especiais Turísticos, Acompanhamentos, Bebidas e Doces).
- Layout responsivo com animações (`flutter_animate`) e fontes personalizadas do Google Fonts.
- Navegação gerenciada pelo `index.dart`/FlutterFlow, permitindo abrir páginas detalhadas e enviar dados via `context.pushNamed`.
- Suporte a autenticação Firebase (via `auth_util.dart`) e manipulação de carrinho em tempo real (`CarrinhoRecord`).

## Estrutura do projeto
- `lib/` – Código principal gerado pelo FlutterFlow. Destaque para `pages/cardapio_page/cardapio_page_widget.dart` (cardápio) e `backend/` (interações Firestore).
- `assets/` – Logos e imagens usadas nas peças de divulgação.
- `firebase/` – Configurações do Firebase utilizadas pelo FlutterFlow.
- `pubspec.yaml` – Dependências (Flutter, FlutterFlow packages, animações, Google Fonts etc.).

## Pré-requisitos
1. Flutter estável instalado (`flutter channel stable && flutter upgrade`).
2. Dart SDK configurado (instalado automaticamente com o Flutter).
3. Conta Firebase com o projeto configurado (substitua os arquivos em `firebase/` se necessário).
4. Dispositivo físico/emulador Android ou iOS configurado.

## Como executar
1. Instale dependências:
   ```bash
   flutter pub get
   ```
2. Verifique se o Firebase está configurado (via `flutterfire configure` ou copiando os arquivos gerados pelo FlutterFlow).
3. Rode o aplicativo:
   ```bash
   flutter run
   ```
4. Para web:
   ```bash
   flutter run -d chrome
   ```

## Comandos úteis
- `flutter analyze` – Verifica erros e avisos no código.
- `flutter test` – Executa testes unitários (adicione-os em `test/` conforme necessário).
- `flutter build apk` / `flutter build ios` – Gera builds de produção.

> Este projeto foi montado e estilizado no FlutterFlow. Sempre utilize a versão **stable** do Flutter para garantir compatibilidade com o código exportado.
