import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LivroRoutingModule } from './livro.routing.module';
import { LivroComponent } from '../componentes/livro/livro.component';



@NgModule({
  declarations: [LivroComponent],
  imports: [
    CommonModule,
    LivroRoutingModule
  ]
})
export class LivroModule { }
