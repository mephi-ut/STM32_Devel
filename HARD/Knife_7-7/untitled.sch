<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<library name="amis">
<description>AMI Semiconductor&lt;p&gt;
ASIC &amp; ASSP Solutions for the Automotive, Medical and Industrial Markets.</description>
<packages>
<package name="PLCC28S">
<description>&lt;b&gt;PLASTIC LEADED CHIP CARRIER&lt;/b&gt;&lt;p&gt;
square</description>
<wire x1="6.2" y1="6.2" x2="-3.965" y2="6.2" width="0.2032" layer="51"/>
<wire x1="-6.2" y1="3.965" x2="-6.2" y2="-6.2" width="0.2032" layer="51"/>
<wire x1="-6.2" y1="-6.2" x2="6.2" y2="-6.2" width="0.2032" layer="51"/>
<wire x1="6.2" y1="-6.2" x2="6.2" y2="6.2" width="0.2032" layer="51"/>
<wire x1="-3.965" y1="6.2" x2="-6.2" y2="3.965" width="0.2032" layer="51"/>
<circle x="0" y="5.1001" radius="0.3" width="0.6096" layer="51"/>
<smd name="1" x="0" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-1.27" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-2.54" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-3.81" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-5.6" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="6" x="-5.6" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="7" x="-5.6" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="8" x="-5.6" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="9" x="-5.6" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="10" x="-5.6" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="11" x="-5.6" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="12" x="-3.81" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="13" x="-2.54" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="14" x="-1.27" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="15" x="0" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="16" x="1.27" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="17" x="2.54" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="18" x="3.81" y="-5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="5.6" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="20" x="5.6" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="21" x="5.6" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="22" x="5.6" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="23" x="5.6" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="24" x="5.6" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="25" x="5.6" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="26" x="3.81" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="27" x="2.54" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<smd name="28" x="1.27" y="5.6" dx="0.6" dy="2.2" layer="1"/>
<text x="-4.475" y="1.905" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-2.4051" size="1.778" layer="27">&gt;VALUE</text>
<rectangle x1="-0.2601" y1="6.2499" x2="0.2601" y2="6.7" layer="51"/>
<rectangle x1="-1.5301" y1="6.2499" x2="-1.0099" y2="6.7" layer="51"/>
<rectangle x1="-2.8001" y1="6.2499" x2="-2.2799" y2="6.7" layer="51"/>
<rectangle x1="-4.0701" y1="6.2499" x2="-3.5499" y2="6.7" layer="51"/>
<rectangle x1="-6.7" y1="3.5499" x2="-6.2499" y2="4.0701" layer="51"/>
<rectangle x1="-6.7" y1="2.2799" x2="-6.2499" y2="2.8001" layer="51"/>
<rectangle x1="-6.7" y1="1.0099" x2="-6.2499" y2="1.5301" layer="51"/>
<rectangle x1="-6.7" y1="-0.2601" x2="-6.2499" y2="0.2601" layer="51"/>
<rectangle x1="-6.7" y1="-1.5301" x2="-6.2499" y2="-1.0099" layer="51"/>
<rectangle x1="-6.7" y1="-2.8001" x2="-6.2499" y2="-2.2799" layer="51"/>
<rectangle x1="-6.7" y1="-4.0701" x2="-6.2499" y2="-3.5499" layer="51"/>
<rectangle x1="-4.0701" y1="-6.7" x2="-3.5499" y2="-6.2499" layer="51"/>
<rectangle x1="-2.8001" y1="-6.7" x2="-2.2799" y2="-6.2499" layer="51"/>
<rectangle x1="-1.5301" y1="-6.7" x2="-1.0099" y2="-6.2499" layer="51"/>
<rectangle x1="-0.2601" y1="-6.7" x2="0.2601" y2="-6.2499" layer="51"/>
<rectangle x1="1.0099" y1="-6.7" x2="1.5301" y2="-6.2499" layer="51"/>
<rectangle x1="2.2799" y1="-6.7" x2="2.8001" y2="-6.2499" layer="51"/>
<rectangle x1="3.5499" y1="-6.7" x2="4.0701" y2="-6.2499" layer="51"/>
<rectangle x1="6.2499" y1="-4.0701" x2="6.7" y2="-3.5499" layer="51"/>
<rectangle x1="6.2499" y1="-2.8001" x2="6.7" y2="-2.2799" layer="51"/>
<rectangle x1="6.2499" y1="-1.5301" x2="6.7" y2="-1.0099" layer="51"/>
<rectangle x1="6.2499" y1="-0.2601" x2="6.7" y2="0.2601" layer="51"/>
<rectangle x1="6.2499" y1="1.0099" x2="6.7" y2="1.5301" layer="51"/>
<rectangle x1="6.2499" y1="2.2799" x2="6.7" y2="2.8001" layer="51"/>
<rectangle x1="6.2499" y1="3.5499" x2="6.7" y2="4.0701" layer="51"/>
<rectangle x1="3.5499" y1="6.2499" x2="4.0701" y2="6.7" layer="51"/>
<rectangle x1="2.2799" y1="6.2499" x2="2.8001" y2="6.7" layer="51"/>
<rectangle x1="1.0099" y1="6.2499" x2="1.5301" y2="6.7" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="30585">
<wire x1="-12.7" y1="30.48" x2="12.7" y2="30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="30.48" x2="12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="-30.48" x2="-12.7" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-30.48" x2="-12.7" y2="30.48" width="0.254" layer="94"/>
<text x="-12.7" y="31.75" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-33.02" size="1.778" layer="96">&gt;VALUE</text>
<pin name="TX_OUT" x="15.24" y="0" length="short" direction="out" rot="R180"/>
<pin name="TX_DATA" x="15.24" y="7.62" length="short" direction="out" rot="R180"/>
<pin name="ALC_IN" x="15.24" y="-2.54" length="short" direction="in" rot="R180"/>
<pin name="RX_OUT" x="15.24" y="-7.62" length="short" direction="in" rot="R180"/>
<pin name="RX_IN" x="15.24" y="-10.16" length="short" direction="in" rot="R180"/>
<pin name="REF_OUT" x="15.24" y="-15.24" length="short" direction="in" rot="R180"/>
<pin name="M50HZ_IN" x="15.24" y="-22.86" length="short" direction="in" rot="R180"/>
<pin name="XIN" x="15.24" y="25.4" length="short" direction="in" rot="R180"/>
<pin name="XOUT" x="15.24" y="22.86" length="short" direction="out" rot="R180"/>
<pin name="TXD" x="-15.24" y="20.32" length="short" direction="out"/>
<pin name="RXD" x="-15.24" y="17.78" length="short" direction="in"/>
<pin name="BR1" x="-15.24" y="12.7" length="short" direction="in"/>
<pin name="BR0" x="-15.24" y="10.16" length="short" direction="in"/>
<pin name="RESB" x="-15.24" y="-2.54" length="short" direction="in"/>
<pin name="IO0" x="-15.24" y="7.62" length="short" direction="out"/>
<pin name="IO1" x="-15.24" y="5.08" length="short" direction="out"/>
<pin name="IO2" x="-15.24" y="2.54" length="short" direction="out"/>
<pin name="TDO" x="-15.24" y="-12.7" length="short" direction="out"/>
<pin name="TDI" x="-15.24" y="-15.24" length="short" direction="in"/>
<pin name="TCK" x="-15.24" y="-17.78" length="short" direction="in"/>
<pin name="TMS" x="-15.24" y="-20.32" length="short" direction="in"/>
<pin name="TRSTB" x="-15.24" y="-5.08" length="short" direction="in"/>
<pin name="TEST" x="-15.24" y="-7.62" length="short" direction="in"/>
<pin name="VDDA" x="-15.24" y="25.4" length="short" direction="in"/>
<pin name="VSSA" x="-15.24" y="-25.4" length="short" direction="in"/>
<pin name="VSS" x="-15.24" y="-27.94" length="short" direction="in"/>
<pin name="VDD" x="-15.24" y="27.94" length="short" direction="in"/>
<pin name="TX_ENB" x="15.24" y="15.24" length="short" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="30585" prefix="IC">
<description>&lt;b&gt;AMIS-30585 S-FSK PLC Modem&lt;/b&gt;&lt;p&gt;
Source: http://www.amis.com/pdf/amis_30585_ds.pdf</description>
<gates>
<gate name="-1" symbol="30585" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PLCC28S">
<connects>
<connect gate="-1" pin="ALC_IN" pad="27"/>
<connect gate="-1" pin="BR0" pad="21"/>
<connect gate="-1" pin="BR1" pad="20"/>
<connect gate="-1" pin="IO0" pad="6"/>
<connect gate="-1" pin="IO1" pad="22"/>
<connect gate="-1" pin="IO2" pad="19"/>
<connect gate="-1" pin="M50HZ_IN" pad="5"/>
<connect gate="-1" pin="REF_OUT" pad="4"/>
<connect gate="-1" pin="RESB" pad="23"/>
<connect gate="-1" pin="RXD" pad="18"/>
<connect gate="-1" pin="RX_IN" pad="3"/>
<connect gate="-1" pin="RX_OUT" pad="2"/>
<connect gate="-1" pin="TCK" pad="9"/>
<connect gate="-1" pin="TDI" pad="8"/>
<connect gate="-1" pin="TDO" pad="7"/>
<connect gate="-1" pin="TEST" pad="24"/>
<connect gate="-1" pin="TMS" pad="10"/>
<connect gate="-1" pin="TRSTB" pad="11"/>
<connect gate="-1" pin="TXD" pad="17"/>
<connect gate="-1" pin="TX_DATA" pad="12"/>
<connect gate="-1" pin="TX_ENB" pad="25"/>
<connect gate="-1" pin="TX_OUT" pad="26"/>
<connect gate="-1" pin="VDD" pad="16"/>
<connect gate="-1" pin="VDDA" pad="28"/>
<connect gate="-1" pin="VSS" pad="15"/>
<connect gate="-1" pin="VSSA" pad="1"/>
<connect gate="-1" pin="XIN" pad="13"/>
<connect gate="-1" pin="XOUT" pad="14"/>
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
<part name="IC1" library="amis" deviceset="30585" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="-1" x="60.96" y="45.72"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
