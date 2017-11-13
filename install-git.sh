#!/bin/bash

#
# Shell script voltado para automatizar a instalação do Git em sistemas derivados do Debian.
#

if sudo add-apt-repository ppa:git-core/ppa ;
  then
    echo "Repositorio adicionado com sucesso."

      if sudo apt-get update ;
        then
          echo "Atualizacao feita com sucesso."

          if sudo apt-get install git ;
            then
              echo "Git instalado com sucesso."
            else
              echo "Algum problema ocorreu ao tentar instalar o Git."
          fi

        else
          echo "Erro ao atualizar o sistema."
      fi

  else
    echo "Nao foi possivel adicionar o repositorio necessario."
fi
