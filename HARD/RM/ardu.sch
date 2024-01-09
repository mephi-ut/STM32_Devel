<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="25" unitdist="mil" unit="mil" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="rocketfarm">
<packages>
<package name="PDIP-32">
<wire x1="-1.524" y1="1.524" x2="16.764" y2="1.524" width="0.127" layer="21"/>
<wire x1="16.764" y1="1.524" x2="16.764" y2="-42.164" width="0.127" layer="21"/>
<wire x1="16.764" y1="-42.164" x2="-1.524" y2="-42.164" width="0.127" layer="21"/>
<wire x1="-1.524" y1="-42.164" x2="-1.524" y2="1.524" width="0.127" layer="21"/>
<pad name="D1/TX" x="0" y="-2.54" drill="0.8" diameter="1.778" shape="square"/>
<pad name="D0/RX" x="0" y="-5.08" drill="0.8" diameter="1.778"/>
<pad name="RESET" x="0" y="-7.62" drill="0.8" diameter="1.778"/>
<pad name="GND" x="0" y="-10.16" drill="0.8" diameter="1.778"/>
<pad name="D2" x="0" y="-12.7" drill="0.8" diameter="1.778"/>
<pad name="D3" x="0" y="-15.24" drill="0.8" diameter="1.778"/>
<pad name="D4" x="0" y="-17.78" drill="0.8" diameter="1.778"/>
<pad name="D5" x="0" y="-20.32" drill="0.8" diameter="1.778"/>
<pad name="D6" x="0" y="-22.86" drill="0.8" diameter="1.778"/>
<pad name="D7" x="0" y="-25.4" drill="0.8" diameter="1.778"/>
<pad name="D8" x="0" y="-27.94" drill="0.8" diameter="1.778"/>
<pad name="D9" x="0" y="-30.48" drill="0.8" diameter="1.778"/>
<pad name="D10" x="0" y="-33.02" drill="0.8" diameter="1.778"/>
<pad name="D11" x="0" y="-35.56" drill="0.8" diameter="1.778"/>
<pad name="D12" x="0" y="-38.1" drill="0.8" diameter="1.778"/>
<pad name="VIN" x="15.24" y="-2.54" drill="0.8" diameter="1.778"/>
<pad name="GND1" x="15.24" y="-5.08" drill="0.8" diameter="1.778"/>
<pad name="RESET1" x="15.24" y="-7.62" drill="0.8" diameter="1.778"/>
<pad name="+5V" x="15.24" y="-10.16" drill="0.8" diameter="1.778"/>
<pad name="A0" x="15.24" y="-12.7" drill="0.8" diameter="1.778"/>
<pad name="A1" x="15.24" y="-15.24" drill="0.8" diameter="1.778"/>
<pad name="A2" x="15.24" y="-17.78" drill="0.8" diameter="1.778"/>
<pad name="A3" x="15.24" y="-20.32" drill="0.8" diameter="1.778"/>
<pad name="A4" x="15.24" y="-22.86" drill="0.8" diameter="1.778"/>
<pad name="A5" x="15.24" y="-25.4" drill="0.8" diameter="1.778"/>
<pad name="A6" x="15.24" y="-27.94" drill="0.8" diameter="1.778"/>
<pad name="A7" x="15.24" y="-30.48" drill="0.8" diameter="1.778"/>
<pad name="AREF" x="15.24" y="-33.02" drill="0.8" diameter="1.778"/>
<pad name="3V3" x="15.24" y="-35.56" drill="0.8" diameter="1.778"/>
<pad name="D13" x="15.24" y="-38.1" drill="0.8" diameter="1.778"/>
<text x="-0.762" y="2.286" size="1.27" layer="25">Name</text>
<text x="-1.27" y="-44.704" size="1.27" layer="25">Value</text>
<hole x="0" y="0" drill="1.778"/>
<hole x="0" y="-40.64" drill="1.778"/>
<hole x="15.24" y="-40.64" drill="1.778"/>
<hole x="15.24" y="0" drill="1.778"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINONANO">
<wire x1="0" y1="-76.2" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="20.32" y2="0" width="0.254" layer="94"/>
<wire x1="20.32" y1="0" x2="20.32" y2="-76.2" width="0.254" layer="94"/>
<wire x1="20.32" y1="-76.2" x2="0" y2="-76.2" width="0.254" layer="94"/>
<pin name="D1/TX" x="-5.08" y="-2.54" visible="pin" length="middle"/>
<pin name="D0/RX" x="-5.08" y="-7.62" visible="pin" length="middle"/>
<pin name="RESET" x="-5.08" y="-12.7" visible="pin" length="middle"/>
<pin name="GND" x="-5.08" y="-17.78" visible="pin" length="middle"/>
<pin name="D2" x="-5.08" y="-22.86" visible="pin" length="middle"/>
<pin name="D3" x="-5.08" y="-27.94" visible="pin" length="middle"/>
<pin name="D4" x="-5.08" y="-33.02" visible="pin" length="middle"/>
<pin name="D5" x="-5.08" y="-38.1" visible="pin" length="middle"/>
<pin name="D6" x="-5.08" y="-43.18" visible="pin" length="middle"/>
<pin name="D7" x="-5.08" y="-48.26" visible="pin" length="middle"/>
<pin name="D8" x="-5.08" y="-53.34" visible="pin" length="middle"/>
<pin name="D9" x="-5.08" y="-58.42" visible="pin" length="middle"/>
<pin name="D10" x="-5.08" y="-63.5" visible="pin" length="middle"/>
<pin name="D11" x="-5.08" y="-68.58" visible="pin" length="middle"/>
<pin name="D12" x="-5.08" y="-73.66" visible="pin" length="middle"/>
<pin name="VIN" x="25.4" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="GND1" x="25.4" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="RESET1" x="25.4" y="-12.7" visible="pin" length="middle" rot="R180"/>
<pin name="+5V" x="25.4" y="-17.78" visible="pin" length="middle" rot="R180"/>
<pin name="A0" x="25.4" y="-22.86" visible="pin" length="middle" rot="R180"/>
<pin name="A1" x="25.4" y="-27.94" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="25.4" y="-33.02" visible="pin" length="middle" rot="R180"/>
<pin name="A3" x="25.4" y="-38.1" visible="pin" length="middle" rot="R180"/>
<pin name="A4" x="25.4" y="-43.18" visible="pin" length="middle" rot="R180"/>
<pin name="A5" x="25.4" y="-48.26" visible="pin" length="middle" rot="R180"/>
<pin name="A6" x="25.4" y="-53.34" visible="pin" length="middle" rot="R180"/>
<pin name="A7" x="25.4" y="-58.42" visible="pin" length="middle" rot="R180"/>
<pin name="AREF" x="25.4" y="-63.5" visible="pin" length="middle" rot="R180"/>
<pin name="3V3" x="25.4" y="-68.58" visible="pin" length="middle" rot="R180"/>
<pin name="D13" x="25.4" y="-73.66" visible="pin" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINONANO">
<gates>
<gate name="G$1" symbol="ARDUINONANO" x="-10.16" y="38.1"/>
</gates>
<devices>
<device name="" package="PDIP-32">
<connects>
<connect gate="G$1" pin="+5V" pad="+5V"/>
<connect gate="G$1" pin="3V3" pad="3V3"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D0/RX" pad="D0/RX"/>
<connect gate="G$1" pin="D1/TX" pad="D1/TX"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND1" pad="GND1"/>
<connect gate="G$1" pin="RESET" pad="RESET"/>
<connect gate="G$1" pin="RESET1" pad="RESET1"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-phoenix-254">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt;&lt;p&gt;
Grid 2.54 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="5POL254">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-6.48" y1="-1.45" x2="6.48" y2="-1.45" width="0.254" layer="21"/>
<wire x1="6.48" y1="-1.45" x2="6.48" y2="1.45" width="0.254" layer="21"/>
<wire x1="6.48" y1="1.45" x2="-6.48" y2="1.45" width="0.254" layer="21"/>
<wire x1="-6.48" y1="1.45" x2="-6.48" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-6.37" y1="1.1" x2="6.37" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-0.508" x2="-4.572" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.254" x2="-1.778" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.635" x2="0.508" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0.381" x2="3.302" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.254" x2="5.842" y2="0.127" width="0.1524" layer="51"/>
<circle x="-5.08" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="-2.54" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="2.54" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="5.08" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-6.604" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-6.604" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="3POL254">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<wire x1="-3.94" y1="-1.45" x2="3.94" y2="-1.45" width="0.254" layer="21"/>
<wire x1="3.94" y1="-1.45" x2="3.94" y2="1.45" width="0.254" layer="21"/>
<wire x1="3.94" y1="1.45" x2="-3.94" y2="1.45" width="0.254" layer="21"/>
<wire x1="-3.94" y1="1.45" x2="-3.94" y2="-1.45" width="0.254" layer="21"/>
<wire x1="-3.83" y1="1.1" x2="3.83" y2="1.1" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-0.508" x2="-2.032" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.254" x2="0.762" y2="0.127" width="0.1524" layer="51"/>
<wire x1="2.032" y1="0.635" x2="3.048" y2="-0.635" width="0.1524" layer="51"/>
<circle x="-2.54" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="0" y="0" radius="0.889" width="0.1524" layer="51"/>
<circle x="2.54" y="0" radius="0.889" width="0.1524" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.2" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.2" shape="long" rot="R90"/>
<text x="-4.064" y="1.778" size="1.27" layer="25">&gt;NAME</text>
<text x="-4.064" y="-3.048" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="SKB">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
<symbol name="SKBV">
<wire x1="2.032" y1="0.762" x2="0.508" y2="-0.762" width="0.254" layer="94"/>
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="3.556" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.016" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="0" visible="pad" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPT5" prefix="X" uservalue="yes">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="0" y="12.7" addlevel="always"/>
<gate name="-2" symbol="SKB" x="0" y="7.62" addlevel="always"/>
<gate name="-3" symbol="SKB" x="0" y="2.54" addlevel="always"/>
<gate name="-4" symbol="SKB" x="0" y="-2.54" addlevel="always"/>
<gate name="-5" symbol="SKBV" x="0" y="-7.62" addlevel="always"/>
</gates>
<devices>
<device name="" package="5POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
<connect gate="-4" pin="1" pad="4"/>
<connect gate="-5" pin="1" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MPT3" prefix="X" uservalue="yes">
<description>&lt;b&gt;PHOENIX CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="SKB" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="SKB" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="SKBV" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="3POL254">
<connects>
<connect gate="-1" pin="1" pad="1"/>
<connect gate="-2" pin="1" pad="2"/>
<connect gate="-3" pin="1" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="rocketfarm" deviceset="ARDUINONANO" device=""/>
<part name="X1" library="con-phoenix-254" deviceset="MPT5" device=""/>
<part name="X2" library="con-phoenix-254" deviceset="MPT3" device=""/>
<part name="X3" library="con-phoenix-254" deviceset="MPT3" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="20.32" y="64.135" size="1.778" layer="97">Общ</text>
<text x="20.32" y="59.055" size="1.778" layer="97">Вых А1</text>
<text x="20.32" y="53.975" size="1.778" layer="97">Вых А2</text>
<text x="20.32" y="48.895" size="1.778" layer="97">Вых Б1</text>
<text x="20.32" y="43.815" size="1.778" layer="97">Вых Б2</text>
<text x="19.685" y="13.335" size="1.778" layer="97">Концевик 1</text>
<text x="19.685" y="8.255" size="1.778" layer="97">Концевик 2</text>
<text x="84.455" y="64.135" size="1.778" layer="97">Общ</text>
<text x="76.2" y="59.055" size="1.778" layer="97">Аналог вх 1</text>
<text x="76.835" y="53.975" size="1.778" layer="97">Аналог вх 2</text>
<text x="19.685" y="18.415" size="1.778" layer="97">Общ</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="48.26" y="81.28"/>
<instance part="X1" gate="-1" x="17.78" y="43.18" rot="R180"/>
<instance part="X1" gate="-2" x="17.78" y="48.26" rot="R180"/>
<instance part="X1" gate="-3" x="17.78" y="53.34" rot="R180"/>
<instance part="X1" gate="-4" x="17.78" y="58.42" rot="R180"/>
<instance part="X1" gate="-5" x="17.78" y="63.5" rot="R180"/>
<instance part="X2" gate="-1" x="17.78" y="7.62" rot="R180"/>
<instance part="X2" gate="-2" x="17.78" y="12.7" rot="R180"/>
<instance part="X2" gate="-3" x="17.78" y="17.78" rot="R180"/>
<instance part="X3" gate="-1" x="91.44" y="63.5"/>
<instance part="X3" gate="-2" x="91.44" y="58.42"/>
<instance part="X3" gate="-3" x="91.44" y="53.34"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<pinref part="X1" gate="-5" pin="1"/>
<wire x1="43.18" y1="63.5" x2="25.4" y2="63.5" width="0.1524" layer="91"/>
<pinref part="X2" gate="-3" pin="1"/>
<wire x1="25.4" y1="63.5" x2="20.32" y2="63.5" width="0.1524" layer="91"/>
<wire x1="25.4" y1="63.5" x2="25.4" y2="17.78" width="0.1524" layer="91"/>
<wire x1="25.4" y1="17.78" x2="20.32" y2="17.78" width="0.1524" layer="91"/>
<junction x="25.4" y="63.5"/>
<pinref part="X3" gate="-1" pin="1"/>
<wire x1="88.9" y1="63.5" x2="76.835" y2="63.5" width="0.1524" layer="91"/>
<wire x1="76.835" y1="63.5" x2="76.835" y2="83.82" width="0.1524" layer="91"/>
<wire x1="76.835" y1="83.82" x2="25.4" y2="83.82" width="0.1524" layer="91"/>
<wire x1="25.4" y1="83.82" x2="25.4" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="AREF"/>
<wire x1="73.66" y1="17.78" x2="76.835" y2="17.78" width="0.1524" layer="91"/>
<wire x1="76.835" y1="17.78" x2="76.835" y2="63.5" width="0.1524" layer="91"/>
<junction x="76.835" y="63.5"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D2"/>
<pinref part="X1" gate="-4" pin="1"/>
<wire x1="43.18" y1="58.42" x2="20.32" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D3"/>
<pinref part="X1" gate="-3" pin="1"/>
<wire x1="43.18" y1="53.34" x2="20.32" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D4"/>
<pinref part="X1" gate="-2" pin="1"/>
<wire x1="43.18" y1="48.26" x2="20.32" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="D5"/>
<pinref part="X1" gate="-1" pin="1"/>
<wire x1="43.18" y1="43.18" x2="20.32" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X2" gate="-2" pin="1"/>
<pinref part="U$1" gate="G$1" pin="D11"/>
<wire x1="20.32" y1="12.7" x2="43.18" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X2" gate="-1" pin="1"/>
<pinref part="U$1" gate="G$1" pin="D12"/>
<wire x1="20.32" y1="7.62" x2="43.18" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="A0"/>
<pinref part="X3" gate="-2" pin="1"/>
<wire x1="73.66" y1="58.42" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="A1"/>
<pinref part="X3" gate="-3" pin="1"/>
<wire x1="73.66" y1="53.34" x2="88.9" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
