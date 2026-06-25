void main() {
  String? nomeArquivo;
  try {
    nomeArquivo = 'anotacoes';
    if (nomeArquivo.isEmpty) {
      throw Exception();
    }
  } catch (e) {
    print("Entrada Invalida. Digite um nome valido");
  }

  try {
    final arquivo = ArquivoTexto(nomeArquivo);
    arquivo.abrir();
  } catch (e) {
    print(e);
  } finally {
    print('Fim programa');
  }
}

abstract class Arquivo {
  void abrir();
}

class ArquivoTexto implements Arquivo {
  final String? _nome;

  ArquivoTexto(this._nome);

  @override
  void abrir() {
    try {
      throw AbrirArquivoException(_nome);
    } catch (e) {
      rethrow;
    }
  }
}

class AbrirArquivoException implements Exception {
  final String? nome;

  AbrirArquivoException(this.nome);

  @override
  String toString() {
    return 'Erro ao abrir o arquivo $nome';
  }
}
