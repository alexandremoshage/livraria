using Livraria.Domain.Entities;
using Livraria.Domain.Entities.FolderInstituicaoDeEnsino;
using System;
using System.Collections.Generic;
using System.Text;

namespace Livraria.test.Builder
{
    public class InstituicaoDeEnsinoBuilder
    {
        public InstituicaoDeEnsino BuildEntidade()
        {
            return new InstituicaoDeEnsino
            {
                Id = 1,
                Nome = "Banco do brasil",
                Endereco = "Rua das oliveiras 1990",
                CNPJ = "00360305000104"
            };
        }

        public InstituicaoDeEnsinoDto BuildDto()
        {
            return new InstituicaoDeEnsinoDto
            {
                Nome = "Banco do brasil",
                Endereco = "Rua das oliveiras 1990",
                CNPJ = "00360305000104"
            };
        }
    }
}
