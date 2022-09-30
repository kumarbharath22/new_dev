using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using WebApplication1.Models;
using WebApplication1.Services;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomerController : ControllerBase
    {
        private readonly IRepo<int, Customer> _repo;

        public CustomerController(IRepo<int,Customer> repo)
        {
            _repo = repo;
        }
        public async Task<ActionResult<List<Customer>>> Get(){
            return Ok((await _repo.GetAll()).ToList());
        }
    }
}
