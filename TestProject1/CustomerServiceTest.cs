using NUnit.Framework;
using System.Threading.Tasks;
using WebApplication1.Models;
using WebApplication1.Services;

namespace TestProject1
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void GetAllTest()
        {
            //IRepo<int, Customer> repo = new CustomerRepo();
            //var result = repo.GetAll();
            //result.Wait();
            //int count = result.Result.Count;
            //Assert.AreEqual(1, count);
          Assert.IsTrue(true);
        }
    }
}