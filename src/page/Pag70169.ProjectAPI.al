page 70169 "Project API"
{
    Caption = 'Project API';
    APIGroup = 'SIGMA';
    APIPublisher = 'SIGMA';
    APIVersion = 'beta';
    DelayedInsert = true;
    EntityName = 'ProjectAPT';
    EntitySetName = 'ProjectAPI';
    PageType = API;
    SourceTable = Job;

    layout
    {
        area(content)
        {
            // Add fields to expose via the API

            // Add more fields as needed
            field(JobNo; Rec."No.")
            {
                Caption = 'Project No.';
            }

        }
    }

    // Add any additional properties or triggers if required
}