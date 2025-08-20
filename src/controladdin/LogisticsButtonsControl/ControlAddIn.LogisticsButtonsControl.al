controladdin "LogisticsButtonsControl"
{
    Scripts = 'scripts/LogisticsButtons.js';
    StyleSheets = 'styles/LogisticsButtons.css';
    RequestedHeight = 150; // Adjust for vertical space
    MinimumHeight = 100;
    RequestedWidth = 500;


    event RequestQuotationClicked();
    event PlaceBookingClicked();


    Procedure SetEnabled(IsEnabled: Boolean);
}
