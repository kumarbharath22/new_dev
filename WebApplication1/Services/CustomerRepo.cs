using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication1.Models;

namespace WebApplication1.Services
{
    public class CustomerRepo : IRepo<int, Customer>
    {
        static List<Customer> _customers = new List<Customer>()
        {
            new Customer() { Id = 1, Name ="Ramu",Age =21}
        };
        public async Task<Customer> Add(Customer item)
        {
           _customers.Add(item);
            return item;
        }

        public async Task<ICollection<Customer>> GetAll()
        {
            return _customers;
        }

        public async Task<Customer> GetT(int id)
        {
            var customer = _customers.SingleOrDefault(c => c.Id == id);
            return customer;
        }

        public Task<Customer> Update(Customer item)
        {
            throw new System.NotImplementedException();
        }
    }
}
