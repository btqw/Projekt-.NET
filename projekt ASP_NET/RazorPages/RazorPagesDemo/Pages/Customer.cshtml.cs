using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RazorPagesDemo.Models;

namespace RazorPagesDemo.Pages
{
    public class CustomerModel : PageModel
    {
        DatabaseContext _Context;
        public CustomerModel(DatabaseContext databasecontext)
        {
            _Context = databasecontext;
        }

        [BindProperty]
        public Customer Customer { get; set; }

        public void OnGet()
        {

        }

        public ActionResult OnPost()
        {
            var customer = Customer;
            if (!ModelState.IsValid)
            {
                return Page(); // return page
            }

            customer.CustomerID = 0;
            var result = _Context.Add(customer);
            _Context.SaveChanges(); // Saving Data in database

            return RedirectToPage("AllCustomer");
        }
    }
}