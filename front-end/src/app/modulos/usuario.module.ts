import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { UsuarioRoutingModule } from './usuario.routing.module';
import { FormsModule } from '@angular/forms';
import { UsuarioComponent } from '../componentes/usuario/usuario.component';
import { UsuarioCadastroComponent } from '../componentes/usuario-cadastro/usuario-cadastro.component';



@NgModule({
  declarations: [UsuarioComponent,UsuarioCadastroComponent],
  imports: [
    CommonModule,
    UsuarioRoutingModule,
    FormsModule
  ]
})
export class UsuarioModule { }
