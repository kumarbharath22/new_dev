using System.Collections.Generic;
using System.Threading.Tasks;

namespace WebApplication1.Services
{
    public interface IRepo<K,T>
    {
        public Task<T> Add(T item);
        public Task<T> Update(T item);
        public Task<T> GetT(K id);
        public Task<ICollection<T>> GetAll();
    }
}
