<apex:page standardController="Case" extensions="cserequesttype">
    <apex:stylesheet value="https://scottlandes1217.github.io/servcloud/stylesheets/vf-pages.css"/>
    <apex:form>
        <apex:pageblock>
            <apex:pageblockButtons>
                <apex:commandButton action="{!save}" styleClass="savebtn" value="Save"/>
                <apex:commandButton value="Refresh" action="{!doNothing}" styleClass="refreshbtn" rerender="MainPanel"/>
            </apex:pageblockButtons>
            <apex:pageBlockSection showHeader="true" title="Case Information">
                <apex:outputpanel>
                    <apex:outputLabel>Request Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Request_Type__c}" />
                    <apex:outputLabel>Issue Type</apex:outputLabel>
                    <apex:inputField value="{!Case.Issue_Type__c}" />
                    <apex:outputLabel>Summary of Request</apex:outputLabel>
                    <apex:inputField value="{!Case.Summary_of_Request__c}" />
                </apex:outputpanel>
            </apex:pageBlockSection>
            <apex:pageBlockSection showHeader="true" title="Technical Information">
                <apex:outputpanel>
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
            <apex:outputPanel id="MainPanel">
                <apex:pageBlockSection title="Analytics & Reporting" rendered="{!Case.Request_Type__c == 'Analytics & Reporting'}">
                    <apex:pageBlockSectionItem>
                        <apex:outputpanel>
                            <apex:outputLabel>Affected Report</apex:outputLabel>
                            <apex:inputField value="{!Case.Affected_Report__c}" />
                            <apex:outputLabel>Client URN</apex:outputLabel>
                            <apex:inputField value="{!Case.Client_URN__c}" />
                            <apex:outputLabel>Location URN(s)</apex:outputLabel>
                            <apex:inputField value="{!Case.Location_URNs__c}" />
                            <apex:outputLabel>Relevant Links</apex:outputLabel>
                            <apex:inputField value="{!Case.Relevant_Links_Analytics_Reporting__c}" />
                        </apex:outputpanel>
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
                <apex:pageBlockSection title="Integrations" rendered="{!Case.Request_Type__c == 'Integrations'}">
                    <apex:pageBlockSectionItem rendered="{!Case.Request_Type__c}">
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
                <apex:pageBlockSection title="Other" rendered="{!CheckMe}">
                    <apex:pageBlockSectionItem>
                        <apex:outputLabel >Other:</apex:outputLabel>
                        <apex:outputText >{!Now()}</apex:outputText>
                    </apex:pageBlockSectionItem>
                </apex:pageBlockSection>
            </apex:outputPanel>
        </apex:pageblock>
    </apex:form>
</apex:page>