<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.4.0.0</version>
      <version>10.5.0.0</version>
    </saved-by-versions>
    <referenced-types>
      <type name="Filter"/>
      <type name="Email"/>
      <type name="ExchangeWebServices"/>
      <type name="ExchangeWebServices_SOAP"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="filter" type-name="Filter"/>
      <typed-variable name="Email" type-name="Email"/>
      <typed-variable name="ews" type-name="ExchangeWebServices"/>
      <typed-variable name="ews_SOAP" type-name="ExchangeWebServices_SOAP"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables>
      <variable name="Email"/>
      <variable name="filter"/>
    </store-in-database-variables>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String" id="0">filter</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Filter</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Email</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Email</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">ews_SOAP</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">ExchangeWebServices_SOAP</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">Filters</property>
      <property name="global" class="Boolean">true</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">13</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">Id	Name	UserName	Server	Owner	Inbox	SenderFilter	SubjectFilter	BodyFilter	AttachmentFilter	ExportAttachment	ExportBody	MarkAsRead	OutBox	DateCreated	Description	active
1	test	david.wright@kofax.com	mail.kofax.com	wiki@kofax.com	inbox	david.wright@kofax.com	^test$		balance\.txt	y	y	y	Processed	09/30/19 06:06 PM	test	y
2	OpenOffice.unknownemail	david.wright@kofax.com	mail.kofax.com	wiki@kofax.com	inbox		Kofax RPA Ask the Expert Office Hours	The e-mail address you entered couldn't be found		n	y	y	Processed	09/30/19 06:06 PM	unknown email	y
3	OpenOffice.resendlater	david.wright@kofax.com	mail.kofax.com	wiki@kofax.com	RPA		Kofax RPA Ask the Expert Office Hours	(resend the message|resending this message|hop count exceeded)		n	y	y	Processed	09/30/19 06:06 PM	resend later	y
4	OpenOffice.personleft	david.wright@kofax.com	mail.kofax.com	wiki@kofax.com	inbox		Kofax RPA Ask the Expert Office Hours	recipient addresses rejected		n	y	y	Processed	09/30/19 06:06 PM	person left company	y
</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.TextAttributeType</property>
          </property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="1">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="1"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="2">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" idref="1"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="3"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String">Version 3.0.2</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">https://github.com/KofaxRPA/Mail</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="5">name</element>
        </property>
      </object>
      <object class="BranchPoint" id="6"/>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">Loop through all inboxes</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="sql" class="String">"SELECT distinct server,username,inbox,owner FROM Filter
where active='y'"</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">server</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">filter.Server</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">username</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.UserName</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">inbox</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">filter.InBox</property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">owner</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">filter.Owner</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="8">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="9">
        <property name="name" class="String">Lookup Password in Store</property>
        <property name="stepAction" class="LookupPassword">
          <property name="userName" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">ews.UserName</property>
            </property>
          </property>
          <property name="targetSystem" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
            <property name="value" class="String">MSExchange</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">ews.Password</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="10">name</element>
        </property>
      </object>
      <object class="Group" id="11">
        <name class="String">Read Outlook Inbox</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="12"/>
        <steps class="ArrayList">
          <object class="Group" id="13">
            <name class="String">Set EWS Version</name>
            <comment class="String">Make sure that the variable ews.Version is set correctly for your Exchange Server
Exchange2013_SP1
Exchange2013
Exchange2010_SP2    : Kofax
Exchange2010_SP1
Exchange2010
Exchange2007_SP1
Exchange2007
https://docs.microsoft.com/en-us/exchange/client-developer/exchange-web-services/ews-schema-versions-in-exchange?redirectedfrom=MSDN</comment>
            <blockBeginStep class="BlockBeginStep" id="14"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="15">
                <property name="name" class="String">Open Request</property>
                <property name="stepAction" class="OpenVariable">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="16">
                <property name="name" class="String">Set EWS Version</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Version</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Version</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:requestserverversion</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="17">
                <property name="name" class="String">Check Server URI</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="Expression" serializationversion="1">
                    <property name="text" class="String">contains(filter.Server,"https://") ?  filter.Server : "https://"+filter.Server+"/ews/exchange.asmx"</property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="18"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="14"/>
                <to idref="15"/>
              </object>
              <object class="TransitionEdge">
                <from idref="15"/>
                <to idref="16"/>
              </object>
              <object class="TransitionEdge">
                <from idref="16"/>
                <to idref="17"/>
              </object>
              <object class="TransitionEdge">
                <from idref="17"/>
                <to idref="18"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="19">
            <name class="String">EWS:Find Inbox</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="20"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="21">
                <property name="name" class="String">FindBoxOfOwner</property>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_FindInboxOfOwner</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="5"/>
                </property>
              </object>
              <object class="Try" id="22"/>
              <object class="Transition" serializationversion="3" id="23">
                <property name="name" class="String">Distinguished Folder?</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">filter.InBox</property>
                        </property>
                      </element>
                      <element class="ConvertToLowerCase"/>
                      <element class="EvaluateExpression" serializationversion="0">
                        <property name="expression" class="String">contains("\n"+ews_SOAP.DistinguishedFolderIds+"\n","\n"+INPUT+"\n")</property>
                      </element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="24">
                <property name="name" class="String">Set Distinguished FolderId</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">filter.InBox</property>
                        </property>
                      </element>
                      <element class="ConvertToLowerCase"/>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:distinguishedfolderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment" class="String">Here we look for a custom folder using it's DisplayName</property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="25">
                <property name="name" class="String">Set Owner</property>
                <property name="stepAction" class="SetText">
                  <property name="text" class="Expression" serializationversion="1">
                    <property name="text" class="String">filter.Owner=="" ? ews.UserName : filter.Owner</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:emailaddress</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="26">
                <property name="name" class="String">EWS:Read Inbox</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">FindItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="27">
                <property name="name" class="String" id="28">View as XML</property>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Try" id="29"/>
              <object class="Transition" serializationversion="3" id="30">
                <property name="name" class="String">Distinguished Folder?</property>
                <property name="stepAction" class="TestValue" serializationversion="0">
                  <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="GetVariable" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">filter.InBox</property>
                        </property>
                      </element>
                      <element class="ConvertToLowerCase"/>
                      <element class="EvaluateExpression" serializationversion="0">
                        <property name="expression" class="String">contains("\n"+ews_SOAP.DistinguishedFolderIds+"\n","\n"+INPUT+"\n")</property>
                      </element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="31">
                <property name="name" class="String">Extract Inbox Folder Id</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">Id</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Inbox_FolderId</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="32">
                <property name="name" class="String">Extract Inbox Folder Change Key</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">ChangeKey</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Group" id="33">
                <name class="String">Get the FolderId of the Custom Folder</name>
                <comment>
                  <null/>
                </comment>
                <blockBeginStep class="BlockBeginStep" id="34"/>
                <steps class="ArrayList">
                  <object class="Transition" serializationversion="3" id="35">
                    <property name="name" class="String">Extract Inbox Folder Id</property>
                    <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                      <property name="tagAttr" class="String">Id</property>
                      <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Inbox_FolderId</property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:parentfolderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="36">
                    <property name="name" class="String">Extract Inbox Folder Change Key</property>
                    <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                      <property name="tagAttr" class="String">ChangeKey</property>
                      <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:parentfolderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="37">
                    <property name="name" class="String" id="38">Set Current Window</property>
                    <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                      <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                        <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                          <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                            <property name="id" class="String">ews_SOAP.Request</property>
                          </property>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders"/>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="39">
                    <property name="name" class="String">SOAP:FindFolder</property>
                    <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                      <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews_SOAP.Request_FindFolderByName</property>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.soap:Body.*</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">name</element>
                    </property>
                  </object>
                  <object class="Transition" serializationversion="3" id="40">
                    <property name="name" class="String">Set Folder Name</property>
                    <property name="stepAction" class="SetAttribute">
                      <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                        <property name="value" class="String">Value</property>
                      </property>
                      <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">filter.InBox</property>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:constant</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">name</element>
                    </property>
                  </object>
                  <object class="Transition" serializationversion="3" id="41">
                    <property name="name" class="String">Set Attribute Id</property>
                    <property name="stepAction" class="SetAttribute">
                      <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                        <property name="value" class="String">Id</property>
                      </property>
                      <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Inbox_FolderId</property>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:folderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="42">
                    <property name="name" class="String">Set Attribute ChangeKey</property>
                    <property name="stepAction" class="SetAttribute">
                      <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                        <property name="value" class="String">ChangeKey</property>
                      </property>
                      <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:folderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="43">
                    <property name="name" class="String">EWS:FindFolder</property>
                    <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                      <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                        <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                            <property name="name" class="String">ews.Server</property>
                          </property>
                        </property>
                        <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">FindItem</property>
                        </property>
                        <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                            <property name="name" class="String">ews_SOAP.Request</property>
                          </property>
                        </property>
                        <property name="sOAPVersion" class="String">SOAP 1.2</property>
                      </property>
                      <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                        <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                          <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                              <property name="name" class="String">ews.UserName</property>
                            </property>
                          </property>
                          <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                              <property name="name" class="String">ews.Password</property>
                            </property>
                          </property>
                        </property>
                        <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                          <property name="headers" class="BeanList">
                            <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                              <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                                <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                                  <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                                </property>
                              </property>
                            </object>
                          </property>
                        </property>
                        <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews_SOAP.StatusCode</property>
                        </property>
                        <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews_SOAP.Headers</property>
                        </property>
                        <property name="ignoreLoadErrors" class="Boolean">true</property>
                        <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                        <property name="changedProperties" class="java.util.HashSet">
                          <element class="String">ignoreLoadErrors</element>
                          <element class="String">responseHeadersAttributeName</element>
                          <element class="String">responseStatusCodeAttributeName</element>
                          <element class="String">headerProvider</element>
                          <element class="String">credentialsProvider</element>
                        </property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders"/>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">name</element>
                    </property>
                  </object>
                  <object class="Transition" serializationversion="3" id="44">
                    <property name="name" idref="28"/>
                    <property name="stepAction" class="ViewAsXML"/>
                    <property name="elementFinders" class="ElementFinders"/>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="45">
                    <property name="name" class="String">Extract Inbox Folder Id</property>
                    <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                      <property name="tagAttr" class="String">Id</property>
                      <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Inbox_FolderId</property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:folderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                  <object class="Transition" serializationversion="3" id="46">
                    <property name="name" class="String">Extract Inbox Folder Change Key</property>
                    <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                      <property name="tagAttr" class="String">ChangeKey</property>
                      <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                      </property>
                    </property>
                    <property name="elementFinders" class="ElementFinders">
                      <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                        <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                          <property name="value" class="String">.*.t:folderid</property>
                        </property>
                      </object>
                    </property>
                    <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                    <property name="comment">
                      <null/>
                    </property>
                    <property name="enabled" idref="2"/>
                    <property name="changedProperties" class="java.util.HashSet"/>
                  </object>
                </steps>
                <blockEndStep class="BlockEndStep" id="47"/>
                <edges class="ArrayList">
                  <object class="TransitionEdge">
                    <from idref="34"/>
                    <to idref="35"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="35"/>
                    <to idref="36"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="36"/>
                    <to idref="37"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="37"/>
                    <to idref="39"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="39"/>
                    <to idref="40"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="40"/>
                    <to idref="41"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="41"/>
                    <to idref="42"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="42"/>
                    <to idref="43"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="43"/>
                    <to idref="44"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="44"/>
                    <to idref="45"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="45"/>
                    <to idref="46"/>
                  </object>
                  <object class="TransitionEdge">
                    <from idref="46"/>
                    <to idref="47"/>
                  </object>
                </edges>
              </object>
              <object class="Transition" serializationversion="3" id="48">
                <property name="name" class="String">Set Root Folder Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">root</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:distinguishedfolderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment" class="String">Here we look for a custom folder using it's DisplayName</property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="5"/>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="49"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="20"/>
                <to idref="21"/>
              </object>
              <object class="TransitionEdge">
                <from idref="21"/>
                <to idref="22"/>
              </object>
              <object class="TransitionEdge">
                <from idref="22"/>
                <to idref="23"/>
              </object>
              <object class="TransitionEdge">
                <from idref="22"/>
                <to idref="48"/>
              </object>
              <object class="TransitionEdge">
                <from idref="23"/>
                <to idref="24"/>
              </object>
              <object class="TransitionEdge">
                <from idref="24"/>
                <to idref="25"/>
              </object>
              <object class="TransitionEdge">
                <from idref="25"/>
                <to idref="26"/>
              </object>
              <object class="TransitionEdge">
                <from idref="26"/>
                <to idref="27"/>
              </object>
              <object class="TransitionEdge">
                <from idref="27"/>
                <to idref="29"/>
              </object>
              <object class="TransitionEdge">
                <from idref="29"/>
                <to idref="30"/>
              </object>
              <object class="TransitionEdge">
                <from idref="29"/>
                <to idref="33"/>
              </object>
              <object class="TransitionEdge">
                <from idref="30"/>
                <to idref="31"/>
              </object>
              <object class="TransitionEdge">
                <from idref="31"/>
                <to idref="32"/>
              </object>
              <object class="TransitionEdge">
                <from idref="32"/>
                <to idref="49"/>
              </object>
              <object class="TransitionEdge">
                <from idref="33"/>
                <to idref="49"/>
              </object>
              <object class="TransitionEdge">
                <from idref="48"/>
                <to idref="25"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="50">
            <name class="String">EWS:Read Inbox</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="51"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="52">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="53">
                <property name="name" class="String" id="54">Set Tag</property>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_FindEmailsByQuery</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="55">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Inbox_FolderId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="56">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="57">
                <property name="name" class="String">Read 20 at a time</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">MaxEntriesReturned</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">20</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.m:indexedpageitemview</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="10"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="58">
                <property name="name" class="String">EWS:Read Inbox</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">FindItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="59">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="60"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="51"/>
                <to idref="52"/>
              </object>
              <object class="TransitionEdge">
                <from idref="52"/>
                <to idref="53"/>
              </object>
              <object class="TransitionEdge">
                <from idref="53"/>
                <to idref="55"/>
              </object>
              <object class="TransitionEdge">
                <from idref="55"/>
                <to idref="56"/>
              </object>
              <object class="TransitionEdge">
                <from idref="56"/>
                <to idref="57"/>
              </object>
              <object class="TransitionEdge">
                <from idref="57"/>
                <to idref="58"/>
              </object>
              <object class="TransitionEdge">
                <from idref="58"/>
                <to idref="59"/>
              </object>
              <object class="TransitionEdge">
                <from idref="59"/>
                <to idref="60"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="61"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="13"/>
          </object>
          <object class="TransitionEdge">
            <from idref="13"/>
            <to idref="19"/>
          </object>
          <object class="TransitionEdge">
            <from idref="19"/>
            <to idref="50"/>
          </object>
          <object class="TransitionEdge">
            <from idref="50"/>
            <to idref="61"/>
          </object>
        </edges>
      </object>
      <object class="Try" id="62"/>
      <object class="Transition" serializationversion="3" id="63">
        <property name="name" class="String">emails?</property>
        <property name="stepAction" class="TestTag" serializationversion="1">
          <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
            <property name="value" class="String">&lt;t:items&gt;\n&lt;/t:items&gt;</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:items</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="10"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="64">
        <property name="name" class="String" id="65">Loop emails</property>
        <property name="stepAction" class="ForEachTag" serializationversion="0">
          <property name="tag" class="String">t:message</property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.t:items</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="66">name</element>
        </property>
      </object>
      <object class="Group" id="67">
        <name class="String">Get basic email data - FAST</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="68"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="69">
            <property name="name" class="String">Extract Subject</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Subject</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:subject</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="70">
            <property name="name" class="String">Extract Date Time Sent</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractDate">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                      <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                        <property name="value" class="String">yyyy-MM-ddThh:mm:ss</property>
                      </property>
                    </object>
                  </property>
                  <property name="defaultTimeZone" class="sun.util.calendar.ZoneInfo" id="71">
                    <property name="ID" class="java.lang.String">UTC</property>
                  </property>
                  <property name="resultTimeZone" idref="71"/>
                  <property name="specifiedDescription" class="String">Get date (UTC)</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.DateTimeSent</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:datetimesent</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="72">
            <property name="name" class="String">Extract Sender</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Sender</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="73">
            <property name="name" class="String">Extract Attachment Name</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.AttachmentName</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:hasattachments</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="74">
            <property name="name" class="String">Extract Is Read</property>
            <property name="stepAction" class="Extract" serializationversion="1">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.isRead</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:isread</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="75">
            <property name="name" class="String">Extract Item Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.ItemId</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="76">
            <property name="name" class="String">Extract Id</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">Id</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Id</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="77">
            <property name="name" class="String">Extract Item Change Key</property>
            <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
              <property name="tagAttr" class="String">ChangeKey</property>
              <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">ews.ItemChangeKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="tagRelation" class="InTagRelation" serializationversion="1">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="78"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="68"/>
            <to idref="69"/>
          </object>
          <object class="TransitionEdge">
            <from idref="69"/>
            <to idref="70"/>
          </object>
          <object class="TransitionEdge">
            <from idref="70"/>
            <to idref="72"/>
          </object>
          <object class="TransitionEdge">
            <from idref="72"/>
            <to idref="73"/>
          </object>
          <object class="TransitionEdge">
            <from idref="73"/>
            <to idref="74"/>
          </object>
          <object class="TransitionEdge">
            <from idref="74"/>
            <to idref="75"/>
          </object>
          <object class="TransitionEdge">
            <from idref="75"/>
            <to idref="76"/>
          </object>
          <object class="TransitionEdge">
            <from idref="76"/>
            <to idref="77"/>
          </object>
          <object class="TransitionEdge">
            <from idref="77"/>
            <to idref="78"/>
          </object>
        </edges>
      </object>
      <object class="BranchPoint" id="79"/>
      <object class="Transition" serializationversion="3" id="80">
        <property name="name" class="String">Loop through active Filters for this inbox</property>
        <property name="stepAction" class="QueryDatabase2" serializationversion="1">
          <property name="sql" class="String">&gt;&gt;SELECT objectkey from Filter
where active='y'
and server='&lt;&lt;+filter.Server+&gt;&gt;'
and owner='&lt;&lt;+filter.Owner+&gt;&gt;'
and inbox='&lt;&lt;+filter.InBox+&gt;&gt;'
&lt;&lt;</property>
          <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
            <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
              <property name="columnName" class="String">objectkey</property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">filter.Name</property>
              </property>
            </object>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="81"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="82">
        <property name="name" class="String">Get FIlter</property>
        <property name="stepAction" class="FindInDatabase" serializationversion="0">
          <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
            <property name="name" idref="0"/>
          </property>
          <property name="key" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">filter.Name</property>
            </property>
          </property>
        </property>
        <property name="elementFinders" idref="81"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="66"/>
        </property>
      </object>
      <object class="Group" id="83">
        <name class="String">Quick Filter Check</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="84"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="85">
            <property name="name" class="String">passes subject Filter?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.SubjectFilter=="" || replacePattern(Email.Subject,filter.SubjectFilter,"") != Email.Subject</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="86">
            <property name="name" class="String">quick Attachment Filter?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.AttachmentFilter=="" || Email.Attachment !="false"</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment" class="String">We don't yet know the attachment names.
but Email.Attachment=true if there are 1 or more attachements.
So if there is an attachmentname filter AND there are no attachments then the filter fails.
Later we download all the attachment names and check them more throughly</property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="87"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="84"/>
            <to idref="85"/>
          </object>
          <object class="TransitionEdge">
            <from idref="85"/>
            <to idref="86"/>
          </object>
          <object class="TransitionEdge">
            <from idref="86"/>
            <to idref="87"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="88">
        <name class="String">Detailed Filter Check</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="89"/>
        <steps class="ArrayList">
          <object class="Group" id="90">
            <name class="String">EWS:Get complete email - SLOW</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="91"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="92">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="93">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_GetItem</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="94">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="95">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="96">
                <property name="name" class="String">EWS:Get Item</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">GetItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="97">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="98">
                <property name="name" class="String">Extract Body</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="dataConverters" class="DataConverters">
                    <element class="EvaluateExpression" serializationversion="0">
                      <property name="expression" class="String">filter.ExportBody =="true" ? INPUT :  ""</property>
                      <property name="specifiedDescription" class="String">only take the body if the filter says so</property>
                    </element>
                  </property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.Body</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:body</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="99">
                <property name="name" class="String">Extract Sender</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.Sender</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:emailaddress</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="100">
                <property name="name" class="String">Extract CC</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.CC</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:ccrecipients.*.t:emailaddress</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0">
                  <property name="reportingViaAPI" class="Boolean">false</property>
                  <property name="reportingViaLog" class="Boolean">false</property>
                  <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$IgnoreAndContinue"/>
                </property>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="101">
                <property name="name" class="String">Extract Recipient</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.Recipient</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:torecipients.*.t:emailaddress</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="102"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="91"/>
                <to idref="92"/>
              </object>
              <object class="TransitionEdge">
                <from idref="92"/>
                <to idref="93"/>
              </object>
              <object class="TransitionEdge">
                <from idref="93"/>
                <to idref="94"/>
              </object>
              <object class="TransitionEdge">
                <from idref="94"/>
                <to idref="95"/>
              </object>
              <object class="TransitionEdge">
                <from idref="95"/>
                <to idref="96"/>
              </object>
              <object class="TransitionEdge">
                <from idref="96"/>
                <to idref="97"/>
              </object>
              <object class="TransitionEdge">
                <from idref="97"/>
                <to idref="98"/>
              </object>
              <object class="TransitionEdge">
                <from idref="98"/>
                <to idref="99"/>
              </object>
              <object class="TransitionEdge">
                <from idref="99"/>
                <to idref="100"/>
              </object>
              <object class="TransitionEdge">
                <from idref="100"/>
                <to idref="101"/>
              </object>
              <object class="TransitionEdge">
                <from idref="101"/>
                <to idref="102"/>
              </object>
            </edges>
          </object>
          <object class="Transition" serializationversion="3" id="103">
            <property name="name" class="String">passes Sender Filter?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.SenderFilter=="" || replacePattern(Email.Sender,filter.SenderFilter,"") != Email.Sender</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="104">
            <property name="name" class="String">passes Body Filter?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.BodyFilter=="" || replacePattern(Email.Body,filter.BodyFilter,"") != Email.Body</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Try" id="105"/>
          <object class="Transition" serializationversion="3" id="106">
            <property name="name" class="String">no attachment filter?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.AttachmentFilter==""</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="107">
            <property name="name" class="String">passes Attachment Filter?</property>
            <property name="stepAction" class="SetNamedTag" serializationversion="0">
              <property name="tagName" class="DesiredElementName">
                <property name="name" class="String">Attachment</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:FileAttachment</property>
                </property>
                <property name="nodePattern" class="kapow.robot.plugin.common.support.expression2.PatternExpression" serializationversion="1">
                  <property name="text" class="String">".*&lt;t:Name&gt;"+filter.AttachmentFilter+"&lt;/t:Name&gt;.*"</property>
                </property>
                <property name="matchAgainst" class="kapow.robot.robomaker.state.document.nodefinder.defaultnodefinder.AbstractDefaultDOMElementFinder$PatternMatchTextType">
                  <property name="enum-name" class="String">HTML</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration"/>
            </property>
            <property name="comment" class="String">this only finds the first attachment with the filter match</property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Try" id="108"/>
          <object class="Transition" serializationversion="3" id="109">
            <property name="name" class="String">Get attachment?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.ExportAttachment</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Group" id="110">
            <name class="String">EWS:Get Attachment</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="111"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="112">
                <property name="name" class="String">Extract Attachment Name</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">Id</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.AttachmentName</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="tagRelation" class="InTagRelation" serializationversion="1">
                      <property name="tagName" class="ElementName">
                        <property name="name" class="String">Attachment</property>
                      </property>
                    </property>
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:attachmentid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="113">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="114">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Requestt_GetAttachment</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="115">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Email.AttachmentName</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:attachmentid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="116">
                <property name="name" class="String">EWS:Get Attachment</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">GetItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="117">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="118">
                <property name="name" class="String">Extract Attachment Name</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.AttachmentName</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:name</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="119">
                <property name="name" class="String">Extract Attachment</property>
                <property name="stepAction" class="Extract" serializationversion="1">
                  <property name="dataConverters" class="DataConverters">
                    <element class="Base64Decode"/>
                  </property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.Attachment</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:content</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="120">
                <property name="name" class="String">Convert Attachement from Binary</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ConvertBinaryToText">
                        <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">Email.Attachment</property>
                        </property>
                      </element>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">Email.Attachment</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment" class="String">you will need to pick a long text variable to convert the attachement too.
Make sure in the converter you select the default page encoding. Here it defaults to utf-8.</property>
                <property name="enabled" idref="1"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="121"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="111"/>
                <to idref="112"/>
              </object>
              <object class="TransitionEdge">
                <from idref="112"/>
                <to idref="113"/>
              </object>
              <object class="TransitionEdge">
                <from idref="113"/>
                <to idref="114"/>
              </object>
              <object class="TransitionEdge">
                <from idref="114"/>
                <to idref="115"/>
              </object>
              <object class="TransitionEdge">
                <from idref="115"/>
                <to idref="116"/>
              </object>
              <object class="TransitionEdge">
                <from idref="116"/>
                <to idref="117"/>
              </object>
              <object class="TransitionEdge">
                <from idref="117"/>
                <to idref="118"/>
              </object>
              <object class="TransitionEdge">
                <from idref="118"/>
                <to idref="119"/>
              </object>
              <object class="TransitionEdge">
                <from idref="119"/>
                <to idref="120"/>
              </object>
              <object class="TransitionEdge">
                <from idref="120"/>
                <to idref="121"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="122"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="89"/>
            <to idref="90"/>
          </object>
          <object class="TransitionEdge">
            <from idref="90"/>
            <to idref="103"/>
          </object>
          <object class="TransitionEdge">
            <from idref="103"/>
            <to idref="104"/>
          </object>
          <object class="TransitionEdge">
            <from idref="104"/>
            <to idref="105"/>
          </object>
          <object class="TransitionEdge">
            <from idref="105"/>
            <to idref="106"/>
          </object>
          <object class="TransitionEdge">
            <from idref="105"/>
            <to idref="107"/>
          </object>
          <object class="TransitionEdge">
            <from idref="106"/>
            <to idref="122"/>
          </object>
          <object class="TransitionEdge">
            <from idref="107"/>
            <to idref="108"/>
          </object>
          <object class="TransitionEdge">
            <from idref="108"/>
            <to idref="109"/>
          </object>
          <object class="TransitionEdge">
            <from idref="108"/>
            <to idref="122"/>
          </object>
          <object class="TransitionEdge">
            <from idref="109"/>
            <to idref="110"/>
          </object>
          <object class="TransitionEdge">
            <from idref="110"/>
            <to idref="122"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="123">
        <name class="String">Save Email to Database</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="124"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="125">
            <property name="name" class="String">Assign Classification</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">filter.Name</property>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.Classification</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="126">
            <property name="name" class="String">Assign Is Processed</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">false</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.isProcessed</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="127">
            <property name="name" class="String">Assign Is Read</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">filter.MarkAsRead</property>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.isRead</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="128">
            <property name="name" class="String" id="129">Store in Database</property>
            <property name="stepAction" class="StoreInDatabase" serializationversion="0">
              <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                <property name="name" class="String">Email</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">The email is stored with the unique ID that came from the email server. If the filters are re-run the email is not added to the database, it is updated.</property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="130"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="124"/>
            <to idref="125"/>
          </object>
          <object class="TransitionEdge">
            <from idref="125"/>
            <to idref="126"/>
          </object>
          <object class="TransitionEdge">
            <from idref="126"/>
            <to idref="127"/>
          </object>
          <object class="TransitionEdge">
            <from idref="127"/>
            <to idref="128"/>
          </object>
          <object class="TransitionEdge">
            <from idref="128"/>
            <to idref="130"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="131">
        <name class="String">Mark Email in Outlook as "processed"</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="132"/>
        <steps class="ArrayList">
          <object class="Try" id="133"/>
          <object class="Transition" serializationversion="3" id="134">
            <property name="name" class="String">mark as read?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">filter.MarkAsRead</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="135">
            <property name="name" class="String">Assign Is Read</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">true</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Email.isRead</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Group" id="136">
            <name class="String">EWS:Mark Email as Read</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="137"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="138">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="139">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_ItemMarkAsRead</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="140">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="141">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="142">
                <property name="name" class="String">EWS:Mark as Read</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">UpdateItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="143">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="144"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="137"/>
                <to idref="138"/>
              </object>
              <object class="TransitionEdge">
                <from idref="138"/>
                <to idref="139"/>
              </object>
              <object class="TransitionEdge">
                <from idref="139"/>
                <to idref="140"/>
              </object>
              <object class="TransitionEdge">
                <from idref="140"/>
                <to idref="141"/>
              </object>
              <object class="TransitionEdge">
                <from idref="141"/>
                <to idref="142"/>
              </object>
              <object class="TransitionEdge">
                <from idref="142"/>
                <to idref="143"/>
              </object>
              <object class="TransitionEdge">
                <from idref="143"/>
                <to idref="144"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="145">
            <name class="String">EWS:Categorize Email as "Robot Prcoessed"</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="146"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="147">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="148">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_ItemCategorize</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="149">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="150">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="151">
                <property name="name" class="String">Set Category</property>
                <property name="stepAction" class="SetText">
                  <property name="text" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">Robot Processed</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:string</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element idref="8"/>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="152">
                <property name="name" class="String">EWS:Categorize as "Robot Procesed"</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">UpdateItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="153">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="154"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="146"/>
                <to idref="147"/>
              </object>
              <object class="TransitionEdge">
                <from idref="147"/>
                <to idref="148"/>
              </object>
              <object class="TransitionEdge">
                <from idref="148"/>
                <to idref="149"/>
              </object>
              <object class="TransitionEdge">
                <from idref="149"/>
                <to idref="150"/>
              </object>
              <object class="TransitionEdge">
                <from idref="150"/>
                <to idref="151"/>
              </object>
              <object class="TransitionEdge">
                <from idref="151"/>
                <to idref="152"/>
              </object>
              <object class="TransitionEdge">
                <from idref="152"/>
                <to idref="153"/>
              </object>
              <object class="TransitionEdge">
                <from idref="153"/>
                <to idref="154"/>
              </object>
            </edges>
          </object>
          <object class="Try" id="155"/>
          <object class="Transition" serializationversion="3" id="156">
            <property name="name" class="String">move to OutBox?</property>
            <property name="stepAction" class="TestValue" serializationversion="0">
              <property name="condition" class="Expression" serializationversion="1">
                <property name="text" class="String">filter.OutBox!=""</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0">
              <property name="reportingViaAPI" class="Boolean">false</property>
              <property name="reportingViaLog" class="Boolean">false</property>
              <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
            </property>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Group" id="157">
            <name class="String">EWS:Find Outbox</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="158"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="159">
                <property name="name" class="String">Assign Outbox Folder Name</property>
                <property name="stepAction" class="AssignVariable" serializationversion="4">
                  <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.OutBox</property>
                    </property>
                  </property>
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Outbox_FolderName</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="160">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="161">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_FindFolderByName</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="162">
                <property name="name" class="String">Set Attribute Value</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Value</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Outbox_FolderName</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:constant</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="163">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Inbox_FolderId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="164">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Inbox_FolderChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="165">
                <property name="name" class="String">EWS:Read Inbox</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">FindItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="166">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="167">
                <property name="name" class="String">Extract Outbox Folder Id</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">Id</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Outbox_FolderId</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="168">
                <property name="name" class="String">Extract Outbox Folder Change Key</property>
                <property name="stepAction" class="ExtractTagAttribute2" serializationversion="3">
                  <property name="tagAttr" class="String">ChangeKey</property>
                  <property name="Name" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Outbox_FolderChangeKey</property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="169"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="158"/>
                <to idref="159"/>
              </object>
              <object class="TransitionEdge">
                <from idref="159"/>
                <to idref="160"/>
              </object>
              <object class="TransitionEdge">
                <from idref="160"/>
                <to idref="161"/>
              </object>
              <object class="TransitionEdge">
                <from idref="161"/>
                <to idref="162"/>
              </object>
              <object class="TransitionEdge">
                <from idref="162"/>
                <to idref="163"/>
              </object>
              <object class="TransitionEdge">
                <from idref="163"/>
                <to idref="164"/>
              </object>
              <object class="TransitionEdge">
                <from idref="164"/>
                <to idref="165"/>
              </object>
              <object class="TransitionEdge">
                <from idref="165"/>
                <to idref="166"/>
              </object>
              <object class="TransitionEdge">
                <from idref="166"/>
                <to idref="167"/>
              </object>
              <object class="TransitionEdge">
                <from idref="167"/>
                <to idref="168"/>
              </object>
              <object class="TransitionEdge">
                <from idref="168"/>
                <to idref="169"/>
              </object>
            </edges>
          </object>
          <object class="Group" id="170">
            <name class="String">EWS:Move to Folder</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="171"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="172">
                <property name="name" idref="38"/>
                <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
                  <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                    <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                      <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                        <property name="id" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="173">
                <property name="name" idref="54"/>
                <property name="stepAction" class="SetTagStepAction" serializationversion="0">
                  <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Request_MoveItem</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.soap:Body.*</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="174">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="175">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.ItemChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:itemid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="176">
                <property name="name" class="String">Set Attribute ChangeKey</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">ChangeKey</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Outbox_FolderChangeKey</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="177">
                <property name="name" class="String">Set Attribute Id</property>
                <property name="stepAction" class="SetAttribute">
                  <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                    <property name="value" class="String">Id</property>
                  </property>
                  <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Outbox_FolderId</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                    <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">.*.t:folderid</property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="178">
                <property name="name" class="String">EWS: Move to Folder</property>
                <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
                  <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                    <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews.Server</property>
                      </property>
                    </property>
                    <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                      <property name="value" class="String">UpdateItem</property>
                    </property>
                    <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                      <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                        <property name="name" class="String">ews_SOAP.Request</property>
                      </property>
                    </property>
                    <property name="sOAPVersion" class="String">SOAP 1.2</property>
                  </property>
                  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                    <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                      <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.UserName</property>
                        </property>
                      </property>
                      <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                        <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                          <property name="name" class="String">ews.Password</property>
                        </property>
                      </property>
                    </property>
                    <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                      <property name="headers" class="BeanList">
                        <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                          <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                            <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                              <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                            </property>
                          </property>
                        </object>
                      </property>
                    </property>
                    <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.StatusCode</property>
                    </property>
                    <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews_SOAP.Headers</property>
                    </property>
                    <property name="ignoreLoadErrors" class="Boolean">true</property>
                    <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                    <property name="changedProperties" class="java.util.HashSet">
                      <element class="String">ignoreLoadErrors</element>
                      <element class="String">responseHeadersAttributeName</element>
                      <element class="String">responseStatusCodeAttributeName</element>
                      <element class="String">headerProvider</element>
                      <element class="String">credentialsProvider</element>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">name</element>
                </property>
              </object>
              <object class="Transition" serializationversion="3" id="179">
                <property name="name" idref="28"/>
                <property name="stepAction" class="ViewAsXML"/>
                <property name="elementFinders" class="ElementFinders"/>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="180"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="171"/>
                <to idref="172"/>
              </object>
              <object class="TransitionEdge">
                <from idref="172"/>
                <to idref="173"/>
              </object>
              <object class="TransitionEdge">
                <from idref="173"/>
                <to idref="174"/>
              </object>
              <object class="TransitionEdge">
                <from idref="174"/>
                <to idref="175"/>
              </object>
              <object class="TransitionEdge">
                <from idref="175"/>
                <to idref="176"/>
              </object>
              <object class="TransitionEdge">
                <from idref="176"/>
                <to idref="177"/>
              </object>
              <object class="TransitionEdge">
                <from idref="177"/>
                <to idref="178"/>
              </object>
              <object class="TransitionEdge">
                <from idref="178"/>
                <to idref="179"/>
              </object>
              <object class="TransitionEdge">
                <from idref="179"/>
                <to idref="180"/>
              </object>
            </edges>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="181"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="132"/>
            <to idref="133"/>
          </object>
          <object class="TransitionEdge">
            <from idref="133"/>
            <to idref="134"/>
          </object>
          <object class="TransitionEdge">
            <from idref="133"/>
            <to idref="145"/>
          </object>
          <object class="TransitionEdge">
            <from idref="134"/>
            <to idref="135"/>
          </object>
          <object class="TransitionEdge">
            <from idref="135"/>
            <to idref="136"/>
          </object>
          <object class="TransitionEdge">
            <from idref="136"/>
            <to idref="145"/>
          </object>
          <object class="TransitionEdge">
            <from idref="145"/>
            <to idref="155"/>
          </object>
          <object class="TransitionEdge">
            <from idref="155"/>
            <to idref="156"/>
          </object>
          <object class="TransitionEdge">
            <from idref="155"/>
            <to idref="181"/>
          </object>
          <object class="TransitionEdge">
            <from idref="156"/>
            <to idref="157"/>
          </object>
          <object class="TransitionEdge">
            <from idref="157"/>
            <to idref="170"/>
          </object>
          <object class="TransitionEdge">
            <from idref="170"/>
            <to idref="181"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="182">
        <property name="name" class="String">Skip next Filters, Loop next Email</property>
        <property name="stepAction" class="AssignVariable" serializationversion="4">
          <property name="stringExpr" class="Expression" serializationversion="1">
            <property name="text" class="String">1/0</property>
          </property>
          <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
            <property name="name" class="String">filter.Id</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="183"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="changedProperties" class="java.util.HashSet">
            <element class="String">reportingViaAPI</element>
            <element class="String">reportingViaLog</element>
          </property>
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextIteration">
            <property name="targetStepSelector" class="kapow.robot.robomaker.robot.ControlFlow$TargetStepSelector">
              <property name="name" idref="65"/>
            </property>
          </property>
        </property>
        <property name="comment" class="String">this uses a division by zero error to loop straight to next email, because of success with this filter.</property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="10"/>
        </property>
      </object>
      <object class="End" id="184"/>
      <object class="Group" id="185">
        <name class="String">Mark Email in Outlook as "ignore"</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="186"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="187">
            <property name="name" idref="38"/>
            <property name="stepAction" class="SetCurrentWindow" serializationversion="1">
              <property name="windowReferenceProvider" class="kapow.robot.plugin.common.stepaction.windowreferenceprovider.NamedWindowReferenceProvider">
                <property name="windowReference" class="kapow.robot.robomaker.state.window.reference.IdBasedWindowReference" serializationversion="0">
                  <property name="windowId" class="kapow.robot.robomaker.state.VariableDataModelId">
                    <property name="id" class="String">ews_SOAP.Request</property>
                  </property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="188">
            <property name="name" idref="54"/>
            <property name="stepAction" class="SetTagStepAction" serializationversion="0">
              <property name="newContent" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Request_ItemCategorize</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.soap:Body.*</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="189">
            <property name="name" class="String">Set Attribute Id</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">Id</property>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.ItemId</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="190">
            <property name="name" class="String">Set Attribute ChangeKey</property>
            <property name="stepAction" class="SetAttribute">
              <property name="attributeName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">ChangeKey</property>
              </property>
              <property name="value" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews.ItemChangeKey</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:itemid</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="191">
            <property name="name" class="String">Set Text</property>
            <property name="stepAction" class="SetText">
              <property name="text" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                <property name="value" class="String">Robot Ignoring</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.*.t:string</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="192">
            <property name="name" class="String">EWS:Categorize as "Robot Ignoring"</property>
            <property name="stepAction" class="CallSOAPWebService" serializationversion="1">
              <property name="webserviceInvoker" class="kapow.robot.plugin.common.stateprocessor.callwebservice3.ManualSOAPRequestProvider">
                <property name="webServiceURLExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews.Server</property>
                  </property>
                </property>
                <property name="sOAPActionExpression" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">UpdateItem</property>
                </property>
                <property name="sOAPRequestProvider" class="kapow.robot.plugin.common.support.xml.provider.VariableValueXMLProvider" serializationversion="1">
                  <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">ews_SOAP.Request</property>
                  </property>
                </property>
                <property name="sOAPVersion" class="String">SOAP 1.2</property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="credentialsProvider" class="com.kapowtech.net.UsernamePasswordCredentialsProvider">
                  <property name="usernameExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.UserName</property>
                    </property>
                  </property>
                  <property name="passwordExpression" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">ews.Password</property>
                    </property>
                  </property>
                </property>
                <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                  <property name="headers" class="BeanList">
                    <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                      <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderTemplateStringExpression">
                        <property name="header" class="kapow.robot.plugin.common.support.browser2.requestheaders.HeaderBean">
                          <property name="header" class="String">Content-Type: text/xml; charset=utf-8</property>
                        </property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="responseStatusCodeAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.StatusCode</property>
                </property>
                <property name="responseHeadersAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">ews_SOAP.Headers</property>
                </property>
                <property name="ignoreLoadErrors" class="Boolean">true</property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">ignoreLoadErrors</element>
                  <element class="String">responseHeadersAttributeName</element>
                  <element class="String">responseStatusCodeAttributeName</element>
                  <element class="String">headerProvider</element>
                  <element class="String">credentialsProvider</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="193">
            <property name="name" idref="28"/>
            <property name="stepAction" class="ViewAsXML"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="194"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="186"/>
            <to idref="187"/>
          </object>
          <object class="TransitionEdge">
            <from idref="187"/>
            <to idref="188"/>
          </object>
          <object class="TransitionEdge">
            <from idref="188"/>
            <to idref="189"/>
          </object>
          <object class="TransitionEdge">
            <from idref="189"/>
            <to idref="190"/>
          </object>
          <object class="TransitionEdge">
            <from idref="190"/>
            <to idref="191"/>
          </object>
          <object class="TransitionEdge">
            <from idref="191"/>
            <to idref="192"/>
          </object>
          <object class="TransitionEdge">
            <from idref="192"/>
            <to idref="193"/>
          </object>
          <object class="TransitionEdge">
            <from idref="193"/>
            <to idref="194"/>
          </object>
        </edges>
      </object>
      <object class="End" id="195"/>
      <object class="Transition" serializationversion="3" id="196">
        <property name="name" class="String">no emails to process</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" idref="183"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="2"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="10"/>
        </property>
      </object>
      <object class="End" id="197"/>
      <object class="Try" id="198">
        <property name="comment" class="String">The branch below can only be run in the designer.
it is used to create a filter.</property>
      </object>
      <object class="End" id="199"/>
      <object class="Group" id="200">
        <name class="String">Filter CSV-&gt;Database</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="201"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="202">
            <property name="name" class="String">Open Filters</property>
            <property name="stepAction" class="CreatePage2">
              <property name="contents" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">Filters</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25">
                <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider">
                  <property name="mimeType" class="com.kapowtech.net.MIMEType">
                    <property name="mimeType" class="String">text/csv</property>
                  </property>
                </property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">overrideMimeTypeProvider</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="203">
            <property name="name" class="String">View as CSV</property>
            <property name="stepAction" class="ViewAsCSV">
              <property name="separator" class="kapow.robot.plugin.common.stepaction.tabulardata.csv.CSVTabSeparator"/>
              <property name="quote" class="kapow.robot.plugin.common.stepaction.tabulardata.csv.CSVUserDefinedQuote">
                <property name="symbol" class="String">ƺ</property>
              </property>
              <property name="escape" class="kapow.robot.plugin.common.stepaction.tabulardata.csv.CSVUserDefinedEscape">
                <property name="symbol" class="String">ƍ</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="204">
            <property name="name" class="String">For Each Filter</property>
            <property name="stepAction" class="LoopTabularDataRows"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Group" id="205">
            <name class="String">Extraxct Filter</name>
            <comment>
              <null/>
            </comment>
            <blockBeginStep class="BlockBeginStep" id="206"/>
            <steps class="ArrayList">
              <object class="Transition" serializationversion="3" id="207">
                <property name="name" class="String">Extract Id from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractNumber"/>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.Id</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Id</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="208">
                <property name="name" class="String">Extract Name from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.Name</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Name</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="209">
                <property name="name" class="String">Extract User Name from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.UserName</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">UserName</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="210">
                <property name="name" class="String">Extract Server from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.Server</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Server</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="211">
                <property name="name" class="String">Extract Owner from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.Owner</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Owner</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="212">
                <property name="name" class="String">Extract In Box from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.InBox</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Inbox</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="213">
                <property name="name" class="String">Extract Sender Filter from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.SenderFilter</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">SenderFilter</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="214">
                <property name="name" class="String">Extract Subject Filter from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.SubjectFilter</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">SubjectFilter</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="215">
                <property name="name" class="String">Extract Body Filter from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.BodyFilter</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">BodyFilter</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="216">
                <property name="name" class="String">Extract Attachment Filter from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.AttachmentFilter</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">AttachmentFilter</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="217">
                <property name="name" class="String">Extract Export Attachment from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractBoolean">
                        <property name="formats" class="BeanList">
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">n</property>
                            </property>
                          </object>
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">y</property>
                            </property>
                            <property name="specifiedOutput" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification$BooleanResult" id="218">
                              <property name="enum-name" class="String">TRUE</property>
                            </property>
                          </object>
                        </property>
                      </element>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.ExportAttachment</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">ExportAttachment</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="219">
                <property name="name" class="String">Extract Export Body from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractBoolean">
                        <property name="formats" class="BeanList">
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">n</property>
                            </property>
                          </object>
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">y</property>
                            </property>
                            <property name="specifiedOutput" idref="218"/>
                          </object>
                        </property>
                      </element>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.ExportBody</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">ExportBody</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="220">
                <property name="name" class="String">Extract Mark As Read from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractBoolean">
                        <property name="formats" class="BeanList">
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">n</property>
                            </property>
                          </object>
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">y</property>
                            </property>
                            <property name="specifiedOutput" idref="218"/>
                          </object>
                        </property>
                      </element>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.MarkAsRead</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">MarkAsRead</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="221">
                <property name="name" class="String">Extract Out Box from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.OutBox</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">OutBox</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="222">
                <property name="name" class="String">Extract Date Created from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractDate">
                        <property name="formats" class="BeanList">
                          <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification"/>
                          <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                            <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                              <property name="value" class="String">dd/MM/yy hh:mm a</property>
                            </property>
                          </object>
                        </property>
                      </element>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.DateCreated</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">DateCreated</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="223">
                <property name="name" class="String">Extract Description from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.Description</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">Description</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
              <object class="Transition" serializationversion="3" id="224">
                <property name="name" class="String">Extract Active from Row</property>
                <property name="stepAction" class="ExtractTabularData">
                  <property name="extractStepConfiguration" class="kapow.robot.plugin.common.stepaction.configuration.ExtractStepConfiguration">
                    <property name="dataConverters" class="DataConverters">
                      <element class="ExtractBoolean">
                        <property name="formats" class="BeanList">
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">n</property>
                            </property>
                          </object>
                          <object class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanPatternSpecification">
                            <property name="patternWithSuggestions" class="kapow.robot.plugin.common.stringprocessor.booleanconverter.BooleanExtractorPatternValueStringExpression">
                              <property name="value" class="String">y</property>
                            </property>
                            <property name="specifiedOutput" idref="218"/>
                          </object>
                        </property>
                      </element>
                    </property>
                    <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">filter.active</property>
                    </property>
                  </property>
                </property>
                <property name="elementFinders" class="ElementFinders">
                  <object class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.TabularDataElementFinder">
                    <property name="detail" class="TabularDataElementFinderDetail">
                      <property name="rangeName" class="ElementName">
                        <property name="name" class="String">1</property>
                      </property>
                      <property name="column" class="kapow.robot.robomaker.state.document.elementfinder.tabulardata.NamedTabularDataColumn">
                        <property name="columnName" class="kapow.robot.plugin.common.support.expression.stringexpr.PatternValueStringExpression">
                          <property name="value" class="String">active</property>
                        </property>
                      </property>
                    </property>
                  </object>
                </property>
                <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
                <property name="comment">
                  <null/>
                </property>
                <property name="enabled" idref="2"/>
                <property name="changedProperties" class="java.util.HashSet"/>
              </object>
            </steps>
            <blockEndStep class="BlockEndStep" id="225"/>
            <edges class="ArrayList">
              <object class="TransitionEdge">
                <from idref="206"/>
                <to idref="207"/>
              </object>
              <object class="TransitionEdge">
                <from idref="207"/>
                <to idref="208"/>
              </object>
              <object class="TransitionEdge">
                <from idref="208"/>
                <to idref="209"/>
              </object>
              <object class="TransitionEdge">
                <from idref="209"/>
                <to idref="210"/>
              </object>
              <object class="TransitionEdge">
                <from idref="210"/>
                <to idref="211"/>
              </object>
              <object class="TransitionEdge">
                <from idref="211"/>
                <to idref="212"/>
              </object>
              <object class="TransitionEdge">
                <from idref="212"/>
                <to idref="213"/>
              </object>
              <object class="TransitionEdge">
                <from idref="213"/>
                <to idref="214"/>
              </object>
              <object class="TransitionEdge">
                <from idref="214"/>
                <to idref="215"/>
              </object>
              <object class="TransitionEdge">
                <from idref="215"/>
                <to idref="216"/>
              </object>
              <object class="TransitionEdge">
                <from idref="216"/>
                <to idref="217"/>
              </object>
              <object class="TransitionEdge">
                <from idref="217"/>
                <to idref="219"/>
              </object>
              <object class="TransitionEdge">
                <from idref="219"/>
                <to idref="220"/>
              </object>
              <object class="TransitionEdge">
                <from idref="220"/>
                <to idref="221"/>
              </object>
              <object class="TransitionEdge">
                <from idref="221"/>
                <to idref="222"/>
              </object>
              <object class="TransitionEdge">
                <from idref="222"/>
                <to idref="223"/>
              </object>
              <object class="TransitionEdge">
                <from idref="223"/>
                <to idref="224"/>
              </object>
              <object class="TransitionEdge">
                <from idref="224"/>
                <to idref="225"/>
              </object>
            </edges>
          </object>
          <object class="Transition" serializationversion="3" id="226">
            <property name="name" idref="129"/>
            <property name="stepAction" class="StoreInDatabase" serializationversion="0">
              <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                <property name="name" class="String">filter</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="227"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="201"/>
            <to idref="202"/>
          </object>
          <object class="TransitionEdge">
            <from idref="202"/>
            <to idref="203"/>
          </object>
          <object class="TransitionEdge">
            <from idref="203"/>
            <to idref="204"/>
          </object>
          <object class="TransitionEdge">
            <from idref="204"/>
            <to idref="205"/>
          </object>
          <object class="TransitionEdge">
            <from idref="205"/>
            <to idref="226"/>
          </object>
          <object class="TransitionEdge">
            <from idref="226"/>
            <to idref="227"/>
          </object>
        </edges>
      </object>
      <object class="End" id="228"/>
      <object class="Group" id="229">
        <name class="String">Filter Database-&gt;CSV</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="230"/>
        <steps class="ArrayList">
          <object class="BranchPoint" id="231"/>
          <object class="Transition" serializationversion="3" id="232">
            <property name="name" class="String">Assign Filters</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="AddToCSV" serializationversion="1">
                    <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                      <property name="name" class="String">filter</property>
                    </property>
                    <property name="createHeader" class="Boolean">true</property>
                    <property name="fieldSeparator" class="AddToCSV$FieldHandler$3" id="233">
                      <property name="enum-name" class="String">TAB</property>
                    </property>
                  </element>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Filters</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="234">
            <property name="name" class="String">Get all Filters from Database</property>
            <property name="stepAction" class="QueryDatabase2" serializationversion="1">
              <property name="sql" class="String">"SELECT objectkey FROM Filter where active='y'"</property>
              <property name="columnAttributeMappings" class="kapow.robot.plugin.common.support.database.ColumnAttributeMappings">
                <object class="kapow.robot.plugin.common.support.database.ColumnAttributeMapping">
                  <property name="columnName" class="String">objectkey</property>
                  <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                    <property name="name" class="String">filter.Name</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="235">
            <property name="name" class="String">Find in Database</property>
            <property name="stepAction" class="FindInDatabase" serializationversion="0">
              <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                <property name="name" class="String">filter</property>
              </property>
              <property name="key" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">filter.Name</property>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="236">
            <property name="name" class="String">Assign Filters</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                <property name="dataConverters" class="DataConverters">
                  <element class="GetVariable" serializationversion="2">
                    <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                      <property name="name" class="String">Filters</property>
                    </property>
                  </element>
                  <element class="AddToCSV" serializationversion="1">
                    <property name="variableName" class="kapow.robot.plugin.common.support.VariableName">
                      <property name="name" class="String">filter</property>
                    </property>
                    <property name="fieldSeparator" idref="233"/>
                  </element>
                </property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">Filters</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="2"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="End" id="237"/>
        </steps>
        <blockEndStep class="BlockEndStep" id="238"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="230"/>
            <to idref="231"/>
          </object>
          <object class="TransitionEdge">
            <from idref="231"/>
            <to idref="232"/>
          </object>
          <object class="TransitionEdge">
            <from idref="231"/>
            <to idref="237"/>
          </object>
          <object class="TransitionEdge">
            <from idref="232"/>
            <to idref="234"/>
          </object>
          <object class="TransitionEdge">
            <from idref="234"/>
            <to idref="235"/>
          </object>
          <object class="TransitionEdge">
            <from idref="235"/>
            <to idref="236"/>
          </object>
          <object class="TransitionEdge">
            <from idref="236"/>
            <to idref="238"/>
          </object>
        </edges>
      </object>
      <object class="End" id="239"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="4"/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="6"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="198"/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="9"/>
      </object>
      <object class="TransitionEdge">
        <from idref="9"/>
        <to idref="11"/>
      </object>
      <object class="TransitionEdge">
        <from idref="11"/>
        <to idref="62"/>
      </object>
      <object class="TransitionEdge">
        <from idref="62"/>
        <to idref="63"/>
      </object>
      <object class="TransitionEdge">
        <from idref="62"/>
        <to idref="196"/>
      </object>
      <object class="TransitionEdge">
        <from idref="63"/>
        <to idref="64"/>
      </object>
      <object class="TransitionEdge">
        <from idref="64"/>
        <to idref="67"/>
      </object>
      <object class="TransitionEdge">
        <from idref="67"/>
        <to idref="79"/>
      </object>
      <object class="TransitionEdge">
        <from idref="79"/>
        <to idref="80"/>
      </object>
      <object class="TransitionEdge">
        <from idref="79"/>
        <to idref="185"/>
      </object>
      <object class="TransitionEdge">
        <from idref="80"/>
        <to idref="82"/>
      </object>
      <object class="TransitionEdge">
        <from idref="82"/>
        <to idref="83"/>
      </object>
      <object class="TransitionEdge">
        <from idref="83"/>
        <to idref="88"/>
      </object>
      <object class="TransitionEdge">
        <from idref="88"/>
        <to idref="123"/>
      </object>
      <object class="TransitionEdge">
        <from idref="123"/>
        <to idref="131"/>
      </object>
      <object class="TransitionEdge">
        <from idref="131"/>
        <to idref="182"/>
      </object>
      <object class="TransitionEdge">
        <from idref="182"/>
        <to idref="184"/>
      </object>
      <object class="TransitionEdge">
        <from idref="185"/>
        <to idref="195"/>
      </object>
      <object class="TransitionEdge">
        <from idref="196"/>
        <to idref="197"/>
      </object>
      <object class="TransitionEdge">
        <from idref="198"/>
        <to idref="199"/>
      </object>
      <object class="TransitionEdge">
        <from idref="198"/>
        <to idref="200"/>
      </object>
      <object class="TransitionEdge">
        <from idref="198"/>
        <to idref="229"/>
      </object>
      <object class="TransitionEdge">
        <from idref="200"/>
        <to idref="228"/>
      </object>
      <object class="TransitionEdge">
        <from idref="229"/>
        <to idref="239"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="25"/>
</object>
