import { NgModule } from '@angular/core';
import {RouterModule, Routes} from '@angular/router'
import { InstituicaoModule } from './modulos/instituicao.module';
import { LivroModule } from './modulos/livro.module';
import { UsuarioModule } from './modulos/usuario.module';

const routes: Routes = [
  {path:'usuario', loadChildren: () => UsuarioModule},
  {path:'livro', loadChildren:() => LivroModule},
  {path:'instituicao', loadChildren: () => InstituicaoModule},

]

@NgModule({
  declarations: [],
  imports: [
    RouterModule.forRoot(routes,{useHash:true})
  ],
  exports:[RouterModule]
})
export class AppRoutingModule { }
