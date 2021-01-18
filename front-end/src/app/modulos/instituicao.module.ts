import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InstituicaoRoutingModule } from './instituicao.routing.module';
import { InstituicaoComponent } from '../componentes/instituicao/instituicao.component';
import { InstituicaoCadastroComponent } from '../componentes/instituicao-cadastro/instituicao-cadastro.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { InstituicaoEdicaoComponent } from '../componentes/instituicao-edicao/instituicao-edicao.component';


@NgModule({
  declarations: [InstituicaoComponent,InstituicaoCadastroComponent,InstituicaoEdicaoComponent],
  imports: [
    CommonModule,
    InstituicaoRoutingModule,  FormsModule,
    ReactiveFormsModule
  ]
})
export class InstituicaoModule { }
