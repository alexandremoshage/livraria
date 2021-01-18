import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { Instituicao } from 'src/app/entidades/instituicao';
import { InstituicaoService } from 'src/app/services/instituicao.service';

@Component({
  selector: 'app-instituicao-edicao',
  templateUrl: './instituicao-edicao.component.html',
  styleUrls: ['./instituicao-edicao.component.css']
})
export class InstituicaoEdicaoComponent implements OnInit {

  public instituicao: Instituicao = new Instituicao()
  constructor(private instituicaoService: InstituicaoService, private router: Router, private route: ActivatedRoute) { }

  ngOnInit(): void {

    this.instituicaoService.get(this.route.snapshot.paramMap.get('id')).subscribe(response => { this.instituicao = response })
  }

  public salvar() {
    this.instituicaoService.update(this.instituicao).subscribe(response => {
      if (response.valido) {
        alert('atualizado com sucesso!')
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
