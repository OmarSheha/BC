query 50112 "customer sales"
{
    QueryType = Normal;
    QueryCategory = 'Customer List';
    OrderBy = descending(QTY);
    elements
    {
        dataitem(cus; Customer)
        {
            column(custNo; "No.")
            {

            }
            column(custName; Name)
            {

            }
            dataitem(sales_Line; "Sales Line")
            {
                // لربط جدولين 
                DataItemLink = "sell-to customer no." = cus."No.";
                SqlJoinType = InnerJoin;

                column(No_; "No.")
                {

                }

                column(QTY; Quantity)

                {
                    Method = Sum;
                }
            }
            filter(Date_Filter; "Date Filter")
            {

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}
