<apex:page standardController="Case" extensions="cserequesttype">
    <apex:includescript value="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" />
    <script>
   $(document).ready(function(){
                       $("head").append("link rel='stylesheet' href='https://scottlandes1217.github.io/servcloud/stylesheets/vf-pages.css' type='text/css' media='screen'");
                     });
    </script>
    <apex:form >
        <apex:pageblock >
            <apex:pageblockButtons >
                <apex:commandButton value="Refresh" action="{!doNothing}" styleClass="refreshbtn" rerender="MainPanel"/><br/>
                <apex:commandButton action="{!save}" styleClass="savebtn" value="Save"/>
            </apex:pageblockButtons>
            <apex:pageBlockSection showHeader="true" title="Case Information">
                <apex:outputpanel >
                    <apex:outputLabel >Request Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Request_Type__c}" />
                    <apex:outputLabel >Issue Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Issue_Type__c}" />
                    <apex:outputLabel >Summary of Request</apex:outputLabel>
                    <apex:inputField value="{!Case.Summary_of_Request__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <apex:pageBlockSection showHeader="true" title="Technical Information">
                <apex:outputpanel >
                    <apex:outputLabel >Related Cases</apex:outputLabel>
                    <apex:inputField value="{!Case.Related_Cases__c}" />
                    <apex:outputLabel >Affected Clients and Locations</apex:outputLabel>
                    <apex:inputField value="{!Case.Affected_Clients_Locations__c}" />
                    <apex:outputLabel >Steps to Recreate</apex:outputLabel>
                    <apex:inputField value="{!Case.Steps_to_Recreate__c}" />
                    <apex:outputLabel >Screenshots or Videos</apex:outputLabel>
                    <apex:inputField value="{!Case.Relevant_Screenshots_or_Videos__c}" />
                    <apex:outputLabel >Troubleshooting</apex:outputLabel>
                    <apex:inputField value="{!Case.Troubleshooting__c}" />
                    <apex:outputLabel >Workaround</apex:outputLabel>
                    <apex:inputField value="{!Case.Workaround__c}" />
                    <apex:outputLabel >Documentation</apex:outputLabel>
                    <apex:inputField value="{!Case.Documentation__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <apex:outputPanel id="MainPanel">
                <apex:pageBlockSection title="Analytics & Reporting" rendered="{!Case.Request_Type__c == 'Analytics & Reporting'}">
                    <apex:pageBlockSectionItem >
                        <apex:outputpanel >
                            <apex:outputLabel >Affected Report</apex:outputLabel>
                            <apex:inputField value="{!Case.Affected_Report__c}" />
                            <apex:outputLabel >Client URN</apex:outputLabel>
                            <apex:inputField value="{!Case.Client_URN__c}" />
                            <apex:outputLabel >Location URN(s)</apex:outputLabel>
                            <apex:inputField value="{!Case.Location_URNs__c}" />
                            <apex:outputLabel >Relevant Links</apex:outputLabel>
                            <apex:inputField value="{!Case.Relevant_Links_Analytics_Reporting__c}" />
                        </apex:outputpanel>
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
                <apex:pageBlockSection title="Integrations" rendered="{!Case.Request_Type__c == 'Integrations'}">
                    <apex:pageBlockSectionItem rendered="{!Case.Request_Type__c}">
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
                <apex:pageBlockSection title="Other" rendered="{!CheckMe}">
                    <apex:pageBlockSectionItem >
                        <apex:outputLabel >Other:</apex:outputLabel>
                        <apex:outputText >{!Now()}</apex:outputText>
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
            </apex:outputPanel>
        </apex:pageblock>
    </apex:form>
    
    <style>
        
        .bPageBlock .detailList .labelCol {
            width: 0%;
        }

        .bPageBlock .detailList .dataCol {
            width: 100%;
        }

        body .bPageBlock .pbBody .dataCol {
            display: block;
            margin-left: 40px;
        }

        select {
            margin-left: auto;
            margin-right: auto;
            display: block;
            width: 100%;
            margin-bottom: 20px;
            margin-top: 5px;
            text-align: center;
        }

        .pbSubheader {
            margin-top: 5px!important;
        }
        
        .bPageBlock .dataCol {
            text-align: center;
        }
        
        .bPageBlock .requiredInput .requiredBlock {
            height: 18px;
         }
        
        .bPageBlock .detailList textarea {
            width: 100%;
            margin-bottom: 20px;
            margin-top: 5px;
        }
        
        .bPageBlock .detailList .errorMsg {
            margin-bottom: 15px;
        }

        td {
            font-family: sans-serif;
            font-size: 15px;
        }

        .apexp .bPageBlock.apexDefaultPageBlock .pbBody .pbSubheader h3 {
            font-size: 2em;
        }
        
        .apexp .bPageBlock.apexDefaultPageBlock .pbBody .pbSubheader {
            border-radius: 25px;
        }

        .caseTab .tertiaryPalette, .individualPalette .caseBlock .tertiaryPalette {
            background-color: #172542;
            border-color: #172542;
        }

        .caseTab .secondaryPalette, .individualPalette .caseBlock .secondaryPalette {
            background-color: #172542;
            border-color: #172542;
        }
        
        .apexp .bPageBlock.apexDefaultPageBlock .pbBody .pbSubheader .hideListButton, .apexp .bPageBlock.apexDefaultPageBlock .pbBody .pbSubheader .showListButton {
            background-position: 3px -34px;
            background-color: #e94f3d;
        }
        
        body .bPageBlock .pbBody .pbSubheader img {
            height: 16px;
            width: 16px;
            border-radius: 25px;
            margin-left: 6px;
        }

        .apexp .bPageBlock .pbHeader .btn {
            width: 70px;
        }

        .apexp .bPageBlock .pbBottomButtons .btn {
            width: 70px;
            top: 2px;
        }

        body .bPageBlock .pbTitle {
            display: none;
        }

        .savebtn {
            float: right;
            margin-top: -25px !important;
        }
    
    </style>

</apex:page>