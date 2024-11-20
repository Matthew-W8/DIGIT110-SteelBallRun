<?xml version="1.0" encoding="UTF-8"?>
<schema queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process"
    xmlns="http://purl.oclc.org/dsdl/schematron">
    <ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <ns uri="http://www.cbml.org/ns/1.0" prefix="cbml"/>
    
<pattern id="div-pages">
    <title>This is for the div elements to ensure they have a proper facs attribute pointing to their page in MangaDex.</title>
    <rule context="tei:div">
        <assert test="@facs">YIKES! Missing the @facs attribute! This is supposed to point to your manga page on the web that's represented in this div element.
        </assert>
    </rule>

</pattern>
    
</schema>