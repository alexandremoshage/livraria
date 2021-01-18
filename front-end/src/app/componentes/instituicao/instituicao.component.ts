import { Component, OnInit } from '@angular/core';
import { Instituicao } from 'src/app/entidades/instituicao';
import { InstituicaoService } from '../../services/instituicao.service';

@Component({
  selector: 'app-instituicao',
  templateUrl: './instituicao.component.html',
  styleUrls: ['./instituicao.component.css']
})
export class InstituicaoComponent implements OnInit {
  public instituicoes: Instituicao[]

  constructor(private instituicaoService: InstituicaoService) { }

  ngOnInit(): void {
    this.carregarGrid()
  }

  private carregarGrid() {
    this.instituicaoService.getAll().subscribe(response => { this.instituicoes = response })
  }

  public deletar(id: bigint) {
    if (confirm("tem certeza que deseja excluir o cadastro ? ")) {
      this.instituicaoService.delete(id).subscribe(response => {
        if (response.valido) {
          console.log(response);
          alert('excluido com sucesso')
          this.carregarGrid()
        } else {
          alert(response.listaErros.join(' \n'))
        }
      })
    }
  }

}
