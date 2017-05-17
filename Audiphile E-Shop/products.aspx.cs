using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Audiphile_E_Shop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnPurchaseM50x_Click(object sender, EventArgs e)
        //{
        //    decimal shippingCost = 5.0m;
        //    decimal itemPrice = 255.0m;
        //    int quantityOfItem = int.Parse(drpDwnM50xQuantity.SelectedValue);
        //    decimal subtotal = (quantityOfItem * itemPrice);
        //    decimal total = subtotal + shippingCost;

        //    //paypal authentication 
        //    var config = ConfigManager.Instance.GetProperties();
        //    var accessToken = new OAuthTokenCredential(config).GetAccessToken();

        //    //get APIContext Object
        //    var apiContext = new APIContext(accessToken);

        //    var M50x = new Item();
        //    M50x.name = "Audio Technica M50X ";
        //    M50x.currency = "SGD";
        //    M50x.price = itemPrice.ToString();
        //    M50x.sku = "audTechM50X";

        //    M50x.quantity = quantityOfItem.ToString();

        //    var transactionDetails = new Details();
        //    transactionDetails.tax = "0";
        //    transactionDetails.shipping = shippingCost.ToString();
        //    transactionDetails.subtotal = subtotal.ToString("0.00");

        //    var transactionAmount = new Amount();
        //    transactionAmount.currency = "SGD";
        //    transactionAmount.total = total.ToString("0.00");
        //    transactionAmount.details = transactionDetails;

        //    var transaction = new Transaction();
        //    transaction.description = "Your order of Audio Technica M50x";
        //    transaction.invoice_number = Guid.NewGuid().ToString();

        //    transaction.amount = transactionAmount;
        //    transaction.item_list = new ItemList
        //    {
        //        items = new List<Item> { M50x }
        //    };

        //    var payer = new Payer();
        //    payer.payment_method = "paypal";

        //    var redirectUrls = new RedirectUrls();
        //    redirectUrls.cancel_url = "http://localhost:1909/Cancel.aspx";
        //    redirectUrls.return_url = "http://localhost:1909/CompletePurchase.aspx";

        //    var payment = Payment.Create(apiContext, new Payment
        //    {
        //        intent = "sale",
        //        payer = payer,
        //        transactions = new List<Transaction> { transaction },
        //        redirect_urls = redirectUrls
        //    });

        //    Session["paymentId"] = payment.id;

        //    foreach (var link in payment.links)
        //    {
        //        if (link.rel.ToLower().Trim().Equals("approval_url"))
        //        {
        //            //send user
        //            Response.Redirect(link.href);
        //        }
        //    }
        //}
    }
}