import { NgModule } from '@angular/core';
import {RouterModule, Routes} from '@angular/router'
import { UsuarioCadastroComponent } from '../componentes/usuario-cadastro/usuario-cadastro.component';
import { UsuarioComponent } from '../componentes/usuario/usuario.component';

const routes: Routes = [
  {path:'',  component:UsuarioComponent},
  {path:'add',  component:UsuarioCadastroComponent}

]

@NgModule({
  declarations: [],
  imports: [
    RouterModule.forChild(routes)
  ],
  exports:[RouterModule]
})
export class UsuarioRoutingModule { }
