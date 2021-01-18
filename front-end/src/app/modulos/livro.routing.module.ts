import { NgModule } from '@angular/core';
import {RouterModule, Routes} from '@angular/router'
import { LivroComponent } from '../componentes/livro/livro.component';

const routes: Routes = [
  {path:'',  component:LivroComponent}
]

@NgModule({
  declarations: [],
  imports: [
    RouterModule.forChild(routes)
  ],
  exports:[RouterModule]
})
export class LivroRoutingModule { }
