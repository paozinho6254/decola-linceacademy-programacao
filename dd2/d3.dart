class Musica {
  String titulo;
  String autor;
  String album;
  int duracao;

  Musica(this.titulo, this.autor, this.album, this.duracao);

  @override
  String toString() {
    return 'Título: $titulo, Autor: $autor, Album: $album, Duração: $duracao';
  }
}

void main() {
  Biblioteca biblioteca = Biblioteca([
    Musica('Sudno', 'Molchat Doma', 'Etazhi', 150),
    Musica('Resistance', 'Muse', 'Resistance', 240),
    Musica('On the level', 'Mac deMarco', 'This Old Dog', 180),
    Musica('Dracula', 'Tane Impala', 'Dracula', 234),
  ]);

  biblioteca.imprimirBiblioteca();

  biblioteca.quantidadeMusica();

  biblioteca.horasMusica();

  biblioteca.buscarPorTitulo('Sudno');

  biblioteca.buscarPorAutor('Muse');

  biblioteca.buscarPorAlbum('This Old Dog');
}

class Biblioteca {
  List<Musica> musicas;

  Biblioteca(this.musicas);

  void imprimirBiblioteca() {
    print("Músicas disponíveis na biblioteca:");

    for (Musica musica in musicas) {
      print(musica);
    }
  }

  void quantidadeMusica() {
    print("Total de músicas na biblioteca: ${musicas.length}");
  }

  void horasMusica() {
    int segundos = 0;
    for (Musica musica in musicas) {
      segundos += musica.duracao;
    }
    double horas = segundos / 3600;
    print("Horas totais da biblioteca: ${horas.toStringAsFixed(2)}");
  }

  void buscarPorTitulo(String titulo) {
    bool encontra = false;
    for (Musica musica in musicas) {
      if (musica.titulo.toLowerCase() == titulo.toLowerCase()) {
        print(musica);
        encontra = true;
      }
    }
    if(encontra != true){
      print("Título não encontrado");
    }
  }

  void buscarPorAutor(String autor) {
    bool encontra = false;
    for (Musica musica in musicas) {
      if (musica.autor.toLowerCase() == autor.toLowerCase()) {
        print(musica);
        encontra = true;
      }
    }

    if (encontra != true) {
      print("Autor não encontrado");
    }
  }

  void buscarPorAlbum(String album) {
    bool encontra = false;
    for (Musica musica in musicas) {
      if (musica.album.toLowerCase() == album.toLowerCase()) {
        print(musica);
        encontra = true;
      }
    }
    if (encontra != true) {
      print("Album não encontrado");
    }
  }
}
