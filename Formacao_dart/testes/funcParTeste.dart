void main() {
  criarLogin('recebil@gmail.com');

  adicionarUser(
    nome: 'manhattan cafe',
    email: 'macafe@tracen.jp',
    idade: 30,
    cep: '89120-233',
  );
}

void criarLogin(String email, [String? senha]) {
  if(senha == null){
    // caso usuário não informar de uma padrão com base no usuário
    senha = email.split('@').first + 'mudesuasenha123';
  }
  print("login: $email, ${senha}");
}

void adicionarUser({
  required String nome,
  required String email,
  required int idade,
  required String cep,
}) {
  print('Adicionando usuário: $nome, $email, $idade, $cep');
}
