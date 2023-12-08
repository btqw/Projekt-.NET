using Microsoft.EntityFrameworkCore;

namespace RazorPagesDemo.Models
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
        {

        }
        public DbSet<Customer> CustomerTB { get; set; }
    }
}
