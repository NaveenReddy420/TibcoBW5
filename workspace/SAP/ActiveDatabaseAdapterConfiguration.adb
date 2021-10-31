<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="ActiveDatabaseAdapterConfiguration">
        <AESDK:instanceId>ActiveDatabaseAdapterConfiguration</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:stdMicroAgentName>COM.TIBCO.ADAPTER.adb.%%Deployment%%.%%InstanceId%%</AESDK:stdMicroAgentName>
            <AESDK:stdMicroAgentTimeout>10000</AESDK:stdMicroAgentTimeout>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentTimeout>10000</AESDK:classMicroAgentTimeout>
            <AESDK:classMicroAgentName>COM.TIBCO.adb.%%Deployment%%.%%InstanceId%%</AESDK:classMicroAgentName>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBHawkDefault</AESDK:name>
            </AESDK:startComponent>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentRvSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBPublisher</AESDK:name>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:advisories xsi:nil="true"/>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                    <AESDK:rvSession isRef="true">#rvSession.ADBAgentRvSession</AESDK:rvSession>
                    <AESDK:rvCmSession isRef="true">#rvCmSession.adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AESDK:rvCmSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:producers>
                <AESDK:rvCmPublisher isRef="true">#producer.ADBPublisher</AESDK:rvCmPublisher>
            </AESDK:producers>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:fileName>%%DirTrace%%/%%Deployment%%.%%InstanceId%%.log</AESDK:fileName>
                <AESDK:fileCount>3</AESDK:fileCount>
                <AESDK:fileLimit>30000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:name>fileSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:fileSink>
            <AESDK:stdioSink>
                <AESDK:ioName>stdout</AESDK:ioName>
                <AESDK:name>stdioSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:stdioSink>
        </AESDK:reporting>
        <AESDK:metadata>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema</AESDK:loadUrl>
        </AESDK:metadata>
        <ADB:hawk xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:help>TIB/Adapter for ActiveDatabase MicroAgent</ADB:help>
            <ADB:microAgentName>COM.TIBCO.adb.custom.%%Deployment%%.%%InstanceId%%</ADB:microAgentName>
            <ADB:sessionName isRef="true">#rvSession.ADBHawkDefault</ADB:sessionName>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Sets the debug level for the agent (possible values 0-3)</ADB:help>
                <ADB:name>setDebugLevel</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>The debug level</ADB:help>
                    <ADB:name>DebugLevel</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Retrieve configuration information for the agent.</ADB:help>
                <ADB:name>showConfiguration</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Verbose flag information</ADB:help>
                    <ADB:name>VerboseInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Debug level information</ADB:help>
                    <ADB:name>DebugLevelInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Poll interval information</ADB:help>
                    <ADB:name>PollIntervalInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Terminates the agent</ADB:help>
                <ADB:name>terminateADBagent</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Toggles the value of the verbose flag.</ADB:help>
                <ADB:name>toggleVerboseFlag</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Gets number of messages waiting in the event queue.</ADB:help>
                <ADB:name>getEventQueueSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Specify subscriber or request/reply listener</ADB:help>
                    <ADB:name>Session</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Subscriber,RequestReply</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of events in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of events in queue (0 = unlimited)</ADB:help>
                    <ADB:name>QueueLimit</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by the adapter instance</ADB:help>
                <ADB:name>getActivityStatistics</ADB:name>
                <ADB:index>Name</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Get statistics by either service or operation</ADB:help>
                    <ADB:name>Get Subtotal By</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Service,Operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Service Name</ADB:help>
                    <ADB:name>Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by a particular adapter service</ADB:help>
                <ADB:name>getActivityStatisticsByService</ADB:name>
                <ADB:index>Operation</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of which service to get the statistic for</ADB:help>
                    <ADB:name>Service Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The type of operation this service provides</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the top level schema processed by this service, or the subject of a request/response service</ADB:help>
                    <ADB:name>SchemaName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about one operation</ADB:help>
                <ADB:name>getActivityStatisticsByOperation</ADB:name>
                <ADB:index>ServiceName</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of the operation</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>fetch,insert,update,delete,request/reply,standard_operation,custom_operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the Service</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get operation counts of the current threads</ADB:help>
                <ADB:name>getThreadStatistics</ADB:name>
                <ADB:index>TaskType</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular thread</ADB:help>
                    <ADB:name>ThreadID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that tells what part of the adapter this thread belongs to</ADB:help>
                    <ADB:name>ThreadType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Description of the tasks this thread processes</ADB:help>
                    <ADB:name>TaskType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of tasks processed by this thread</ADB:help>
                    <ADB:name>TaskCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about current count of elements in any internal queue</ADB:help>
                <ADB:name>getQueueStatistics</ADB:name>
                <ADB:index>QueueID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular queue</ADB:help>
                    <ADB:name>QueueID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that will match this queue to a thread or connection</ADB:help>
                    <ADB:name>QueueType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current number of elements in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of elements that can be held in this queue</ADB:help>
                    <ADB:name>MaxQueueSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Return the state and statistics for all the curent connections used by the adapter</ADB:help>
                <ADB:name>getConnectionStatistics</ADB:name>
                <ADB:index>ConnectionID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular connection</ADB:help>
                    <ADB:name>ConnectionID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Describe the purpose of this connection serves to the adapter</ADB:help>
                    <ADB:name>ConnectionType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current state of the connection</ADB:help>
                    <ADB:name>State</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of times this connection had been re-established</ADB:help>
                    <ADB:name>NumRetries</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection</ADB:help>
                    <ADB:name>TotalNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection since the last reconnection</ADB:help>
                    <ADB:name>CurrentNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the activity statistics</ADB:help>
                <ADB:name>resetActivityStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the thread statistics</ADB:help>
                <ADB:name>resetThreadStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the connection statistics</ADB:help>
                <ADB:name>resetConnectionStatistics</ADB:name>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling interval setting</ADB:help>
                <ADB:name>setPollingInterval</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling interval setting</ADB:help>
                <ADB:name>getPollingInterval</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling polling batch size setting</ADB:help>
                <ADB:name>setPollingBatchSize</ADB:name>
                <ADB:inputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling batch size setting</ADB:help>
                <ADB:name>getPollingBatchSize</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the setting of the perfMon option</ADB:help>
                <ADB:name>getPerfMonSetting</ADB:name>
                <ADB:outputParameter>
                    <ADB:help>Value of PerfMon option</ADB:help>
                    <ADB:name>Setting</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
        </ADB:hawk>
        <AESDK:designer>
            <AESDK:advancedLogging>false</AESDK:advancedLogging>
            <AESDK:adapterVersion>sdk51</AESDK:adapterVersion>
            <AESDK:timeout>30000</AESDK:timeout>
            <AESDK:savePassword>true</AESDK:savePassword>
            <AESDK:lastDBType>16</AESDK:lastDBType>
            <AESDK:vendor>16</AESDK:vendor>
            <AESDK:convertOracleNumberToString>true</AESDK:convertOracleNumberToString>
            <AESDK:deployOperations>true</AESDK:deployOperations>
            <AESDK:showExpertSettings>false</AESDK:showExpertSettings>
            <AESDK:identifierCase>1</AESDK:identifierCase>
            <AESDK:lockedProperties>
                <AESDK:locked>
                    <AESDK:properties>defaultSession,defaultStartup,searchUrl,defaultMicroAgentSession</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/Load URL Instance</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/adbActiveDatabaseAdapterConfigurationrvcmRvCmSession/ADBPublisher</AESDK:resource>
                    <AESDK:properties>replySubject,subject,name,wireFormat</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentRvSession</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Adapter Services</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
            </AESDK:lockedProperties>
            <AESDK:fixedChildren>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Metadata URLs</AESDK:resource>
                    <AESDK:children>LoadURL,Load URL Instance</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions</AESDK:resource>
                    <AESDK:children>ADBHawkDefault,ADBAgentRvSession,adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AESDK:resource>
                    <AESDK:children>ADBPublisher</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/adbActiveDatabaseAdapterConfigurationrvcmRvCmSession/ADBPublisher</AESDK:resource>
                    <AESDK:children>P_TBL_EMPLOYEE</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/adbActiveDatabaseAdapterConfigurationrvcmRvCmSession/ADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service ADBPublisher.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
        </AESDK:designer>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:activedb xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:defaultDataSource xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:name/>
                <ADB:user>naveen</ADB:user>
                <ADB:driver>tibcosoftwareinc.jdbc.oracle.OracleDriver</ADB:driver>
                <ADB:url>jdbc:tibcosoftwareinc:oracle://localhost:1521;SID=xe</ADB:url>
                <ADB:disConnCode>3111;3112;3113;3114</ADB:disConnCode>
                <ADB:dbmsType>ORACLE</ADB:dbmsType>
                <ADB:password>#!6RfJO3szHu1WUMFRlBO8ZrHG2XR8iVf4</ADB:password>
            </ADB:defaultDataSource>
            <ADB:threadCount xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:commInterfaces>1</ADB:commInterfaces>
                <ADB:commRRInterfaces>1</ADB:commRRInterfaces>
                <ADB:dbInterfaces>1</ADB:dbInterfaces>
                <ADB:dbRRInterfaces>1</ADB:dbRRInterfaces>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:subManagers>1</ADB:subManagers>
            </ADB:threadCount>
            <ADB:agentOptions xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:debug>2</ADB:debug>
                <ADB:verbose>on</ADB:verbose>
                <ADB:payload>false</ADB:payload>
                <ADB:useTraceFile/>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:poll>5000</ADB:poll>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:subBatchCommitSize>0</ADB:subBatchCommitSize>
                <ADB:subBatchCommitTimeout>10000</ADB:subBatchCommitTimeout>
                <ADB:subBulkInsertSize>1</ADB:subBulkInsertSize>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:useExceptTable>on</ADB:useExceptTable>
                <ADB:rebuildAfterException>off</ADB:rebuildAfterException>
                <ADB:encoding>ASCII</ADB:encoding>
                <ADB:jmsDestinationPrefix>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%</ADB:jmsDestinationPrefix>
                <ADB:retryTotal>3</ADB:retryTotal>
                <ADB:sleepBetweenRetries>10000</ADB:sleepBetweenRetries>
                <ADB:retryBeforeSuspend>1</ADB:retryBeforeSuspend>
                <ADB:stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</ADB:stopOnRetryFail>
                <ADB:useDesignTimeConnSetting>true</ADB:useDesignTimeConnSetting>
                <ADB:rpcMaxRows>0</ADB:rpcMaxRows>
                <ADB:scriptFileName>%%ADBScriptFileDir%%\ActiveDatabaseAdapterConfiguration.sql</ADB:scriptFileName>
                <ADB:termSubject>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%.exit</ADB:termSubject>
            </ADB:agentOptions>
        </ADB:activedb>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBHawkDefault">
        <AEService:daemon>%%TIBHawkDaemon%%</AEService:daemon>
        <AEService:service>%%TIBHawkService%%</AEService:service>
        <AEService:network>%%TIBHawkNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBAgentRvSession">
        <AEService:daemon>%%RvDaemon%%</AEService:daemon>
        <AEService:service>%%RvService%%</AEService:service>
        <AEService:network>%%RvNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:rvCmSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RVCM" name="adbActiveDatabaseAdapterConfigurationrvcmRvCmSession">
        <AEService:daemon>%%RvDaemon%%</AEService:daemon>
        <AEService:service>%%RvService%%</AEService:service>
        <AEService:network>%%RvNetwork%%</AEService:network>
        <AEService:cmName>%%Domain%%.%%Deployment%%.%%AppName%%.%%InstanceId%%.CM</AEService:cmName>
        <AEService:relayAgent/>
        <AEService:ledgerFile>%%DirLedger%%/%%Domain%%.%%Deployment%%.%%AppName%%.%%InstanceId%%.ldg</AEService:ledgerFile>
        <AEService:syncLedger>true</AEService:syncLedger>
        <AEService:defaultTimeLimit>0</AEService:defaultTimeLimit>
        <AEService:requireOldMessages>true</AEService:requireOldMessages>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvCmSession>
    <AEService:producer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.RVCMPublisher" name="ADBPublisher">
        <AEService:subject>%%Domain%%.%%Deployment%%.adb.ActiveDatabaseAdapterConfiguration.ADBPublisher</AEService:subject>
        <AEService:wireFormat>aeRvMsg</AEService:wireFormat>
        <AEService:replySubject/>
        <AEService:session isRef="true">#rvCmSession.adbActiveDatabaseAdapterConfigurationrvcmRvCmSession</AEService:session>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_TBL_EMPLOYEE</AEService:class>
    </AEService:producer>
</Repository:repository>