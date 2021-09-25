# vagrant-clusterk8s
Este Vagrantfile cria 3 máquinas virtuais, uma Master com 4Gb de memória e duas Worker com 2 Gb de memória.
Também executa o script install.sh que provisiona a instalação do docker e kubernetes. Após isso é necessário fazer as configurações do cluster.

## Requisitos

É necessário ter o Vagrant e o Virtualbox instalados. Abaixo seguem os links para instalação:
* [Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/docs/installation)

## Como usar

Após instalar os requisitos é necessário clonar o repositório, ou se preferir, baixar os arquivos. Agora basta abrir o terminal, ir par ao diretório onde os arquivos estão alocados e iniciar o vagrant:

```bash
    vagrant up
```
O vagrant inicialmente irá baixar a imagem do S.O., iniciará a instalação das VM's e fará o provisionamento do docker e kubernetes. Quando todo processo for terminado já podemos acessar os nodes:

```bash
    vagrant ssh Master
    vagrant ssh Worker1
    vagrant ssh Worker2
```
Após a conclusão destes passos aconselho seguir os passos do [Livro - Descomplicando o Kubernetes](https://github.com/badtuxx/DescomplicandoKubernetes/tree/main/pt). Estou usando o mesmo para aprender sobre o assunto.