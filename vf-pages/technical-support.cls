<apex:page standardController="Case" extensions="cserequesttype">
    <apex:stylesheet value="https://scottlandes1217.github.io/servcloud/stylesheets/vf-pages.css"/>
    <apex:form>
        <apex:pageblock>
            <apex:pageblockButtons>
                <apex:commandButton action="{!save}" styleClass="savebtn" value="Save"/>
                <apex:commandButton value="Refresh" action="{!doNothing}" styleClass="refreshbtn" rerender="MainPanel"/>
            </apex:pageblockButtons>
            
            <apex:pageBlockSection id="contactinfo" showHeader="true" title="Contact Information">
                <apex:outputpanel>
                    <apex:outputLabel>Account </apex:outputLabel>
                    <apex:inputField value="{!Case.AccountId}" /><br/>
                    <apex:outputLabel>Contact </apex:outputLabel>
                    <apex:inputField value="{!Case.ContactId}" /><br/>
                </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.contactinfo}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="caseinfo" showHeader="true" title="Case Information">
                <apex:outputpanel>
                    <apex:outputLabel>Status</apex:outputLabel>
                    <apex:inputField value="{!Case.Status}" />
                    <apex:outputLabel>Priority Exception</apex:outputLabel>
                    <apex:inputField value="{!Case.Priority_Exception__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.caseinfo}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="casedescription" showHeader="true" title="Case Description">
                <apex:outputpanel>
                    <apex:outputLabel>Record Type</apex:outputLabel>
                    <apex:inputField value="{!Case.RecordTypeId}" />
                    <apex:outputLabel>Request Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Request_Type__c}" />
                    <apex:outputLabel>Location(s)</apex:outputLabel>
                    <apex:inputField value="{!Case.Location_s__c}" />
                    <apex:outputLabel>Summary of Request</apex:outputLabel>
                    <apex:inputField value="{!Case.Summary_of_Request__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.casedescription}").childNodes[0].childNodes[0]); </script>

            
        <apex:outputPanel id="MainPanel">

<!-- Technical Support (TS) Rows -->

            <apex:pageBlockSection id="technicalinfo" showHeader="true" title="Technical Information" rendered="{!Case.RecordTypeId == '0120v000000SF1oAAG'}">
                <apex:outputpanel>
                    <apex:outputLabel>Issue Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Issue_Type__c}" />
                    <apex:outputLabel>Related Cases</apex:outputLabel>
                    <apex:inputField value="{!Case.Related_Cases__c}" />
                    <apex:outputLabel>Affected Clients and Locations</apex:outputLabel>
                    <apex:inputField value="{!Case.Affected_Clients_Locations__c}" />
                    <apex:outputLabel>Steps to Recreate</apex:outputLabel>
                    <apex:inputField value="{!Case.Steps_to_Recreate__c}" />
                    <apex:outputLabel>Screenshots or Videos</apex:outputLabel>
                    <apex:inputField value="{!Case.Relevant_Screenshots_or_Videos__c}" />
                    <apex:outputLabel>Troubleshooting</apex:outputLabel>
                    <apex:inputField value="{!Case.Troubleshooting__c}" />
                    <apex:outputLabel>Workaround</apex:outputLabel>
                    <apex:inputField value="{!Case.Workaround__c}" />
                    <apex:outputLabel>Documentation</apex:outputLabel>
                    <apex:inputField value="{!Case.Documentation__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.technicalinfo}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="analytics" title="Analytics & Reporting" rendered="{!Case.Request_Type__c == 'Analytics & Reporting'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Affected Report</apex:outputLabel>
                        <apex:inputField value="{!Case.Affected_Report__c}" />
                        <apex:outputLabel>Client URN</apex:outputLabel>
                        <apex:inputField value="{!Case.Client_URN__c}" />
                        <apex:outputLabel>Location URN(s)</apex:outputLabel>
                        <apex:inputField value="{!Case.Location_URNs__c}" />
                        <apex:outputLabel>Relevant Links</apex:outputLabel>
                        <apex:inputField value="{!Case.Relevant_Links__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.analytics}").childNodes[0].childNodes[0]); </script>
                
            <apex:pageBlockSection id="integrations" title="Integrations" rendered="{!Case.Request_Type__c == 'Integrations'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Integration Vendor</apex:outputLabel>
                        <apex:inputField value="{!Case.Integration_Vendor__c}" />
                        <apex:outputLabel>Client Vendor Setting</apex:outputLabel>
                        <apex:inputField value="{!Case.Link_to_Client_Setting__c}" />
                        <apex:outputLabel>Relevant Links</apex:outputLabel>
                        <apex:inputField value="{!Case.Relevant_Links__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.integrations}").childNodes[0].childNodes[0]); </script>
    
            <apex:pageBlockSection id="reputation" title="Reputation & Social" rendered="{!Case.Request_Type__c == 'Reputation & Social'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Chatmeter Ticket</apex:outputLabel>
                        <apex:inputField value="{!Case.Chatmeter_Ticket__c}" />
                        <apex:outputLabel>Relevant Links</apex:outputLabel>
                        <apex:inputField value="{!Case.Relevant_Links__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.reputation}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="sites" title="Sites" rendered="{!Case.Request_Type__c == 'Sites'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Link to Live Site</apex:outputLabel>
                        <apex:inputField value="{!Case.Link_to_Live_Site__c}" />
                        <apex:outputLabel>Link to CMS</apex:outputLabel>
                        <apex:inputField value="{!Case.Link_to_Live_Site__c}" />
                        <apex:outputLabel>Widget</apex:outputLabel>
                        <apex:inputField value="{!Case.Widget__c}" />
                        <apex:outputLabel>Relevant Links</apex:outputLabel>
                        <apex:inputField value="{!Case.Relevant_Links__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.sites}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="themes" title="Themes" rendered="{!Case.Request_Type__c == 'Themes'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Link to Live Site</apex:outputLabel>
                        <apex:inputField value="{!Case.Link_to_Live_Site__c}" />
                        <apex:outputLabel>Link to CMS</apex:outputLabel>
                        <apex:inputField value="{!Case.Link_to_Live_Site__c}" />
                        <apex:outputLabel>Theme</apex:outputLabel>
                        <apex:inputField value="{!Case.Theme__c}" />
                        <apex:outputLabel>Relevant Links</apex:outputLabel>
                        <apex:inputField value="{!Case.Relevant_Links__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.themes}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="thirdpartycode" title="Third Party Code" rendered="{!Case.Request_Type__c == 'Request to add 3rd Party Code'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Vendor</apex:outputLabel>
                        <apex:inputField value="{!Case.Vendor__c}" />
                        <apex:outputLabel>Script Function</apex:outputLabel>
                        <apex:inputField value="{!Case.Script_Function__c}" />
                        <apex:outputLabel>Provided Code</apex:outputLabel>
                        <apex:inputField value="{!Case.Provided_Code__c }" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.thirdpartycode}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="bulkupdate" title="Bulk Update Request" rendered="{!Case.Request_Type__c == 'Bulk Update Request'}">
                    <apex:outputpanel>
                        <apex:outputLabel>New Value</apex:outputLabel>
                        <apex:inputField value="{!Case.New_Value__c}" />
                        <apex:outputLabel>Old Value</apex:outputLabel>
                        <apex:inputField value="{!Case.Old_Value__c}" />
                        <apex:outputLabel>Widget</apex:outputLabel>
                        <apex:inputField value="{!Case.Widget__c}" />
                        <apex:outputLabel>Page Slug</apex:outputLabel>
                        <apex:inputField value="{!Case.Page_Slug__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.bulkupdate}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="redirect" title="Redirect Request" rendered="{!Case.Request_Type__c == 'Redirect Request'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Source URL</apex:outputLabel>
                        <apex:inputField value="{!Case.Source__c}" />
                        <apex:outputLabel>Destination URL</apex:outputLabel>
                        <apex:inputField value="{!Case.Destination_URL__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.redirect}").childNodes[0].childNodes[0]); </script>

<!-- Website Maintenance (WM) Rows -->
            
            <apex:pageBlockSection id="newctn" title="New Call Tracking Request" rendered="{!Case.Request_Type__c == 'Request a New Call Tracking Number'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Number Type</apex:outputLabel>
                        <apex:inputField value="{!Case.Number_Type__c}" /> <br/>
                        <apex:outputLabel>Channel Name</apex:outputLabel>
                        <apex:inputField value="{!Case.Channel_Name__c}" /> <br/>
                        <apex:outputLabel>Description</apex:outputLabel>
                        <apex:inputField value="{!Case.Description__c}" /> <br/>
                        <apex:outputLabel>Source</apex:outputLabel>
                        <apex:inputField value="{!Case.Source__c}" /> <br/>
                        <apex:outputLabel>Medium</apex:outputLabel>
                        <apex:inputField value="{!Case.Medium__c}" /> <br/>
                        <apex:outputLabel>Keyword</apex:outputLabel>
                        <apex:inputField value="{!Case.Keyword__c}" /> <br/>
                        <apex:outputLabel>Campaign</apex:outputLabel>
                        <apex:inputField value="{!Case.Campaign__c}" /> <br/>
                        <apex:outputLabel>Forward To Number</apex:outputLabel>
                        <apex:inputField value="{!Case.Forward_To_Number__c}" /> <br/>
                        <apex:outputLabel>CPM Code</apex:outputLabel>
                        <apex:inputField value="{!Case.CPM_Code__c}" /> <br/>
                        <apex:outputLabel>Marketing Source</apex:outputLabel>
                        <apex:inputField value="{!Case.Marketing_Source__c  }" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.newctn}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="newusr" title="New User Request" rendered="{!Case.Request_Type__c == 'Request a New User'}">
                    <apex:outputpanel>
                        <apex:outputLabel>First Name</apex:outputLabel>
                        <apex:inputField value="{!Case.First_Name__c}" /> <br/>
                        <apex:outputLabel>Last Name</apex:outputLabel>
                        <apex:inputField value="{!Case.Last_Name__c}" /> <br/>
                        <apex:outputLabel>Email Address</apex:outputLabel>
                        <apex:inputField value="{!Case.Email_Address__c}" /> <br/>
                        <apex:outputLabel>Job Title</apex:outputLabel>
                        <apex:inputField value="{!Case.Job_Title__c}" /> <br/>
                        <apex:outputLabel>Phone Number</apex:outputLabel>
                        <apex:inputField value="{!Case.Phone_Number__c}" /> <br/>
                        <apex:outputLabel>Company Name</apex:outputLabel>
                        <apex:inputField value="{!Case.Company_Name_s__c}" /> <br/>
                        <apex:outputLabel>Location Privileges</apex:outputLabel>
                        <apex:inputField value="{!Case.Location_Privileges__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.newusr}").childNodes[0].childNodes[0]); </script>

<!-- Digital Advertising (DA) Rows -->
            
            <apex:pageBlockSection id="budgetrecommendation" title="Budget Recommendation" rendered="{!Case.Request_Type__c == 'Budget Recommendation'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Channel</apex:outputLabel>
                        <apex:inputField value="{!Case.Channel__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.budgetrecommendation}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="adjustbudget" title="Adjust DA Budget" rendered="{!Case.Request_Type__c == 'Adjust DA Budget'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Channel</apex:outputLabel>
                        <apex:inputField value="{!Case.Channel__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.adjustbudget}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="launchbudget" title="Launch DA Budget" rendered="{!Case.Request_Type__c == 'Launch DA Budget'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Channel</apex:outputLabel>
                        <apex:inputField value="{!Case.Channel__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.launchbudget}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="customreport" title="Custom Report Request" rendered="{!Case.Request_Type__c == 'Custom Report Request'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Report Type</apex:outputLabel>
                        <apex:inputField value="{!Case.Advertising_Report_Type__c}" />
                        <apex:outputLabel>Channel</apex:outputLabel>
                        <apex:inputField value="{!Case.Channel__c}" />
                        <apex:outputLabel>Report Start Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Report_Start_Date__c}" />
                        <apex:outputLabel>Report End Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Report_End_Date__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.resolution}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="datest" title="DA Test" rendered="{!Case.Request_Type__c == 'DA Test'}">
                    <apex:outputpanel>
                        <apex:outputLabel>What are we testing?</apex:outputLabel>
                        <apex:inputField value="{!Case.What_are_we_testing__c}" />
                        <apex:outputLabel>Testing Goal</apex:outputLabel>
                        <apex:inputField value="{!Case.Testing_Goal__c}" />
                        <apex:outputLabel>Test Start Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Test_Start_Date__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.datest}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="trendingperformance" title="Trending Performance Report" rendered="{!Case.Request_Type__c == 'Trending Performance Report'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Report Start Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Trending_Performance_Report_Start_Date__c}" />
                        <apex:outputLabel>Report End Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Trending_Performance_Report_End_Date__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.trendingperformance}").childNodes[0].childNodes[0]); </script>

<!-- Account and Billing (AB) Row -->

            <apex:pageBlockSection id="accountbilling" title="Account & Billing" rendered="{!Case.RecordTypeId == '0120v000000SHKsAAO'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Account or Invoice Number</apex:outputLabel>
                        <apex:inputField value="{!Case.Account_Number__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.accountbilling}").childNodes[0].childNodes[0]); </script>

            <apex:pageBlockSection id="deletelocation" title="Delete Request" rendered="{!Case.Request_Type__c == 'Pause or Delete Existing Service'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Location(s)</apex:outputLabel>
                        <apex:inputField value="{!Case.Location_s__c}" />
                        <apex:outputLabel>Date Termination Request Received</apex:outputLabel>
                        <apex:inputField value="{!Case.Date_Termination_Request_Received__c}" />
                        <apex:outputLabel>Estimated Termination Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Estimated_Termination_Date__c}" />
                        <apex:outputLabel>Requested Paused Date</apex:outputLabel>
                        <apex:inputField value="{!Case.Requested_Pause_Date__c}" />
                        <apex:outputLabel>New Owners Name and Title</apex:outputLabel>
                        <apex:inputField value="{!Case.GMB_New_Owners_Name_Title__c}" />
                        <apex:outputLabel>New Owners Google Account</apex:outputLabel>
                        <apex:inputField value="{!Case.GMB_New_Owners_Google_Account__c}" />
                        <apex:outputLabel>Termination Reason</apex:outputLabel>
                        <apex:inputField value="{!Case.Termination_Reason__c}" />
                        <apex:outputLabel>Termination Outcome</apex:outputLabel>
                        <apex:inputField value="{!Case.Termination_Outcome__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.deletelocation}").childNodes[0].childNodes[0]); </script>

<!-- Resolution Row -->

            <apex:pageBlockSection id="resolution" title="Resolution" rendered="{!Case.Request_Type__c == 'Solved'}">
                    <apex:outputpanel>
                        <apex:outputLabel>Root Cause</apex:outputLabel>
                        <apex:inputField value="{!Case.Root_Cause__c}" />
                        <apex:outputLabel>Resolution Comment</apex:outputLabel>
                        <apex:inputField value="{!Case.Resolution_Comment__c}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.resolution}").childNodes[0].childNodes[0]); </script>

        </apex:outputPanel>

<!-- System Information Row -->

            <apex:pageBlockSection id="systeminfo" title="System Information">
                    <apex:outputpanel>
                        <apex:outputLabel>Created By: </apex:outputLabel>
                        <apex:inputField value="{!Case.CreatedById}" /> <br/>
                        <apex:outputLabel>Last Modified By: </apex:outputLabel>
                        <apex:inputField value="{!Case.LastModifiedById}" /> <br/>
                        <apex:outputLabel>Created On: </apex:outputLabel>
                        <apex:inputField value="{!Case.CreatedDate}" />
                    </apex:outputpanel>
            </apex:pageBlockSection>
            <script>twistSection(document.getElementById("{!$Component.systeminfo}").childNodes[0].childNodes[0]); </script>

    </apex:pageblock>

    <script>
        window.onload=function(){
              document.getElementsByName("refreshbtn").click();
            };
            function buttonClick(){
             }
    </script>

    </apex:form>
</apex:page>