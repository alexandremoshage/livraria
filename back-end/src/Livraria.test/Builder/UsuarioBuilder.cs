using Livraria.Domain.Entities;
using Livraria.Domain.Entities.FolderUsuario;
using System;
using System.Collections.Generic;
using System.Text;

namespace Livraria.test.Builder
{
    public class UsuarioBuilder
    {
        public Usuario BuildEntidade1()
        {
            return new Usuario
            {
                Id = 1,
                Nome = "Astolfo",
                Endereco = "Rua Pinguind numero 51",
                CPF = "04829787163",
                IdInstituicaoDeEnsino = 1,
                Email = "Teste",
                Telefone = "6599255439"
            };
        }

        public Usuario BuildEntidade2()
        {
            return new Usuario
            {
                Id = 2,
                Nome = "Armando",
                Endereco = "Rua Pinguind numero 51",
                CPF = "35322997040",
                IdInstituicaoDeEnsino = 1,
                Email = "Teste",
                Telefone = "6599255439"
            };
        }

        internal UsuarioDto BuildDto()
        {
            return new UsuarioDto
            {
                Nome = "Armando",
                Endereco = "Rua Pinguind numero 51",
                CPF = "35322997040",
                IdInstituicaoDeEnsino = 1,
                Email = "Teste",
                Telefone = "6599255439"
            };
        }
    }
}
