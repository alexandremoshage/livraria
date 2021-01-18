﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Livraria.Domain.Interfaces.Services.Base
{
    public interface IServiceBase<TEntity> : IDisposable where TEntity : class
    {
        IList<string> Erros { get; }
    }
}
