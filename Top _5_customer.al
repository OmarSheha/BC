
query 50100 "top 5 customer"
{
    QueryType = Normal;
    Caption = 'Top 5 Customer';
    TopNumberOfRows = 5;
    QueryCategory = 'Customer List';
    OrderBy = descending(sales);

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            filter(Posting_Date; "Posting Date")
            {

            }

            column(Customer_No_; "Customer No.")
            {

            }
            column(Customer_Name; "Customer Name")
            {

            }
            column(sales; "Sales (LCY)")
            {
                Method = Sum;

            }

        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}
