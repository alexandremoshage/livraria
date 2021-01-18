import { NgModule } from '@angular/core';
import {RouterModule, Routes} from '@angular/router'
import { InstituicaoCadastroComponent } from '../componentes/instituicao-cadastro/instituicao-cadastro.component';
import { InstituicaoEdicaoComponent } from '../componentes/instituicao-edicao/instituicao-edicao.component';
import { InstituicaoComponent } from '../componentes/instituicao/instituicao.component';


const routes: Routes = [
  {path:'',  component:InstituicaoComponent},
  {path:'add',  component:InstituicaoCadastroComponent},
  {path:':id',  component:InstituicaoEdicaoComponent}

]

@NgModule({
  declarations: [],
  imports: [RouterModule.forChild(routes)
  ],
  exports:[RouterModule]
})
export class InstituicaoRoutingModule { }
