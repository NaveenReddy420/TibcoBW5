<?xml version="1.0" encoding="ASCII"?>
<emulation:EmulationData xmlns:emulation="http:///emulation.ecore" isBW="true" location="tests3.module">
  <ProcessNode Id="tests3.module.Process1" Name="tests3.module.Process1" ModelType="BW" moduleName="tests3.module">
    <Operation Name="callProcess" serviceName="tests3.module.Process1">
      <Inputs Id="c4b90fbe-158d-4af1-906e-3d38f50e0f09tests3.module_tests3.module.Process1_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS">
        <informations Name="input" nameSpace="http://www.example.com/namespaces/tns/1615793374131">
          <nameSpaces prefix="tns" nameSapce="http://www.example.com/namespaces/tns/1615793374131"/>
          <Parameter Name="tns:Element">
            <parameters Name="tns:secretkey" Value="1" type="string" nameSpace="http://www.w3.org/2001/XMLSchema"/>
            <parameters Name="tns:accesskey" type="string" nameSpace="http://www.w3.org/2001/XMLSchema" canDelete="true"/>
            <parameters Name="tns:awsregion" type="integer" nameSpace="http://www.w3.org/2001/XMLSchema" canDelete="true"/>
            <parameters Name="tns:servicename" Value="2" type="string" nameSpace="http://www.w3.org/2001/XMLSchema"/>
          </Parameter>
        </informations>
      </Inputs>
      <Inputs Id="418651e3-c474-433b-ac4d-cbde0f6b72abtests3.module_tests3.module.Process1_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS">
        <informations Name="input" nameSpace="http://www.example.com/namespaces/tns/1615793374131">
          <nameSpaces prefix="tns" nameSapce="http://www.example.com/namespaces/tns/1615793374131"/>
          <Parameter Name="tns:Element">
            <parameters Name="tns:secretkey" Value="&quot;abc&quot;" type="string" nameSpace="http://www.w3.org/2001/XMLSchema"/>
            <parameters Name="tns:accesskey" type="string" nameSpace="http://www.w3.org/2001/XMLSchema" canDelete="true"/>
            <parameters Name="tns:awsregion" type="integer" nameSpace="http://www.w3.org/2001/XMLSchema" canDelete="true"/>
            <parameters Name="tns:servicename" Value="&quot;abc&quot;" type="string" nameSpace="http://www.w3.org/2001/XMLSchema"/>
          </Parameter>
        </informations>
      </Inputs>
    </Operation>
  </ProcessNode>
</emulation:EmulationData>
