import { TestBed } from '@angular/core/testing';

import { InstituicaoService } from './instituicao.service';

describe('UsuarioService', () => {
  let service: InstituicaoService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(InstituicaoService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
