<apex:page standardController="Account" extensions="c03573267">
	<apex:form >
		<apex:pageblock>
			<apex:pageblockButtons>
				<apex:commandButton value="Refresh" action="{!doNothing}" rerender="MainPanel"/><br/>
			</apex:pageblockButtons>
			<apex:pageBlockSection showHeader="true" title="General Stuff">
				<apex:inputField value="{!Account.Industry}" />
			</apex:pageBlockSection>
			<apex:outputPanel id="MainPanel">
				<apex:pageBlockSection title="Agriculture" rendered="{!Account.industry == 'Agriculture'}">
					<apex:pageBlockSectionItem>
						<apex:outputLabel>Agriculture:</apex:outputLabel>
						<apex:outputText>{!Now()}</apex:outputText>
					</apex:pageBlockSectionItem>
				</apex:pageBlockSection>
				<apex:pageBlockSection title="Apparel" rendered="{!Account.industry == 'Apparel'}">
					<apex:pageBlockSectionItem>
						<apex:outputLabel>Apparel:</apex:outputLabel>
						<apex:outputText>{!Now()}</apex:outputText>
					</apex:pageBlockSectionItem>
				</apex:pageBlockSection>
				<apex:pageBlockSection title="Other" rendered="{!CheckMe}">
					<apex:pageBlockSectionItem>
						<apex:outputLabel>Other:</apex:outputLabel>
						<apex:outputText>{!Now()}</apex:outputText>
					</apex:pageBlockSectionItem>
				</apex:pageBlockSection>
			</apex:outputPanel>
		</apex:pageblock>
	</apex:form>
</apex:page>