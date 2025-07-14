pageextension 70140 "Vendor Card extension" extends "Vendor Card"
{
    layout
    {

        // Add changes to page layout here

    }

    actions
    {
        // Add changes to page actions here
        addafter(Orders)
        {
            action("Sync Vendor to Other Companies")//added on 11/03/2025
            {
                ApplicationArea = All;
                Caption = 'Sync Vendor to Other Companies';
                Image = Vendor;
                Enabled = SendDatatoOtherCompanies;
                trigger OnAction()
                begin
                    SyncVendortoOtherCompanies(Rec);
                end;
            }
        }
    }
    Local procedure SyncVendortoOtherCompanies(VendorRec: Record Vendor)
    var
        OtherCompanyVendorRec: Record Vendor;
    begin

        OtherCompanyVendorRec.Init();
        OtherCompanyVendorRec.Copy(VendorRec);
        OtherCompanyVendorRec.Insert();


    end;

    trigger OnOpenPage()
    var
    begin
        Clear(UserSetup);
        IF UserSetup.Get(UserId) then;
        SendDatatoOtherCompanies := UserSetup."Send Data to Other Companies";
    end;

    var
        UserSetup: Record "User Setup";
        SendDatatoOtherCompanies: Boolean;
        myInt: Integer;
}