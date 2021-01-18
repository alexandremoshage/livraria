import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Instituicao } from 'src/app/entidades/instituicao';
import { InstituicaoService } from 'src/app/services/instituicao.service';

@Component({
  selector: 'app-instituicao-cadastro',
  templateUrl: 'instituicao-cadastro.component.html'
})
export class InstituicaoCadastroComponent implements OnInit {


  public instituicao: Instituicao = new Instituicao()
  constructor(private instituicaoService: InstituicaoService, private router: Router) { }

  ngOnInit(): void {

  }

  public salvar() {
    this.instituicaoService.save(this.instituicao).subscribe(response => {
      console.log(response.valido);
      if (response.valido) {
        console.log(response);
        alert('salvo com sucesso!')
        this.voltar()
      } else {
        alert(response.listaErros.join(' \n'))
      }
    })
  }

  public voltar() {
    this.router.navigate(['../instituicao']);
  }
}
