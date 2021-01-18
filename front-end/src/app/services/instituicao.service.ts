import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Instituicao } from '../entidades/instituicao';

@Injectable({
  providedIn: 'root'
})
export class InstituicaoService {

  url = environment.host + "InstituicaoDeEnsino"
  constructor(private http: HttpClient) { }

  public getAll(): Observable<any[]> {
    return this.http.get<any[]>(this.url)
  }

  public get(id): Observable<any> {
    return this.http.get<any[]>(this.url + '/' + id)
  }

  public save(instituicao: Instituicao): Observable<any> {
    return this.http.post<any>(this.url, instituicao)
  }

  
  public update( instituicao: Instituicao): Observable<any> {
    return this.http.put<any>(this.url + '/' + instituicao.id, instituicao)
  }

  public delete(id: bigint): Observable<any> {
    return this.http.delete<any>(this.url + '/' + id)
  }
}
