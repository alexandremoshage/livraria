using Livraria.Domain.Entities.FolderLivro;
using System;
using System.Collections.Generic;
using System.Text;

namespace Livraria.test.Builder
{
    public class LivroBuilder
    {
        public LivroDto BuildDto()
        {
            return new LivroDto
            {
                Genero = "Terro",
                Descricao = "Um livro que conta a história dos mortos que não encotnraram seu caminho",
                Publicacao = DateTime.Now.AddDays(-1000),
                Titulo = "A volta dos que não foram",
                Editora = "Editora do amanhã",
                Paginas = 666,
                Autor = "Desconhecido" 
            };
        }

        public Livro BuilEntidade()
        {
            return new Livro
            {
                Id = 1,
                Genero = "Terro",
                Descricao = "Um livro que conta a história dos mortos que não encotnraram seu caminho",
                Publicacao = DateTime.Now.AddDays(-1000),
                Titulo = "A volta dos que não foram",
                Editora = "Editora do amanhã",
                Paginas = 666,
                Autor = "Desconhecido",
                Emprestado = false,
                Reservado = false,
                IdUsuarioReserva = null
            };
        }
    }


}
