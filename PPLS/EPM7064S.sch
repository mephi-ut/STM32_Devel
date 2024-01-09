<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.2.0">
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
<library name="altera">
<description>&lt;b&gt;Altera Programmable Logic Devices&lt;/b&gt;&lt;p&gt;
FLEX 10K&lt;p&gt;
MAX 7000&lt;p&gt;
MAX 9000&lt;p&gt;
FLEX 6000&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt; Databook, January 1998
&lt;li&gt;CD-ROM Gigital-Library, December 1998
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="PLCC44">
<description>&lt;b&gt;Plastic J-Lead Chip Carrier&lt;/b&gt;</description>
<wire x1="8.7" y1="8.7" x2="-6.465" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="6.465" x2="-8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="-8.7" x2="8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="8.7" y1="-8.7" x2="8.7" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-6.465" y1="8.7" x2="-8.7" y2="6.465" width="0.2032" layer="51"/>
<wire x1="-8.255" y1="6.909" x2="-6.909" y2="8.255" width="0.2032" layer="21"/>
<wire x1="-8.687" y1="-6.909" x2="-8.687" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="-8.687" y1="-8.687" x2="-6.883" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="6.883" y1="-8.687" x2="8.687" y2="-8.687" width="0.2032" layer="21"/>
<wire x1="8.687" y1="-8.687" x2="8.687" y2="-6.909" width="0.2032" layer="21"/>
<wire x1="8.687" y1="6.858" x2="8.687" y2="8.687" width="0.2032" layer="21"/>
<wire x1="8.687" y1="8.687" x2="6.934" y2="8.687" width="0.2032" layer="21"/>
<circle x="0" y="6.3299" radius="0.3" width="0.6096" layer="21"/>
<smd name="1" x="0" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="-6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="8" x="-8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="9" x="-8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="10" x="-8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="11" x="-8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="12" x="-8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="13" x="-8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="14" x="-8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="15" x="-8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="16" x="-8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="17" x="-8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="18" x="-6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="-5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="20" x="-3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="21" x="-2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="22" x="-1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="23" x="0" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="24" x="1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="25" x="2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="26" x="3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="27" x="5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="28" x="6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="29" x="8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="30" x="8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="31" x="8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="32" x="8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="33" x="8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="34" x="8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="35" x="8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="36" x="8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="37" x="8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="38" x="8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="39" x="8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="40" x="6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="41" x="5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="42" x="3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="43" x="2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="44" x="1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<text x="-7.015" y="9.525" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-2.4051" size="1.778" layer="27">&gt;VALUE</text>
<text x="-4.0551" y="0.46" size="0.6096" layer="51">PLCC-44</text>
<rectangle x1="-0.2601" y1="8.75" x2="0.2601" y2="9.1999" layer="51"/>
<rectangle x1="-1.5301" y1="8.75" x2="-1.0099" y2="9.1999" layer="51"/>
<rectangle x1="-2.8001" y1="8.75" x2="-2.2799" y2="9.1999" layer="51"/>
<rectangle x1="-4.0701" y1="8.75" x2="-3.5499" y2="9.1999" layer="51"/>
<rectangle x1="-5.3401" y1="8.75" x2="-4.8199" y2="9.1999" layer="51"/>
<rectangle x1="-6.6101" y1="8.75" x2="-6.0899" y2="9.1999" layer="51"/>
<rectangle x1="-9.1999" y1="6.0899" x2="-8.75" y2="6.6101" layer="51"/>
<rectangle x1="-9.1999" y1="4.8199" x2="-8.75" y2="5.3401" layer="51"/>
<rectangle x1="-9.1999" y1="3.5499" x2="-8.75" y2="4.0701" layer="51"/>
<rectangle x1="-9.1999" y1="2.2799" x2="-8.75" y2="2.8001" layer="51"/>
<rectangle x1="-9.1999" y1="1.0099" x2="-8.75" y2="1.5301" layer="51"/>
<rectangle x1="-9.1999" y1="-0.2601" x2="-8.75" y2="0.2601" layer="51"/>
<rectangle x1="-9.1999" y1="-1.5301" x2="-8.75" y2="-1.0099" layer="51"/>
<rectangle x1="-9.1999" y1="-2.8001" x2="-8.75" y2="-2.2799" layer="51"/>
<rectangle x1="-9.1999" y1="-4.0701" x2="-8.75" y2="-3.5499" layer="51"/>
<rectangle x1="-9.1999" y1="-5.3401" x2="-8.75" y2="-4.8199" layer="51"/>
<rectangle x1="-9.1999" y1="-6.6101" x2="-8.75" y2="-6.0899" layer="51"/>
<rectangle x1="-6.6101" y1="-9.1999" x2="-6.0899" y2="-8.75" layer="51"/>
<rectangle x1="-5.3401" y1="-9.1999" x2="-4.8199" y2="-8.75" layer="51"/>
<rectangle x1="-4.0701" y1="-9.1999" x2="-3.5499" y2="-8.75" layer="51"/>
<rectangle x1="-2.8001" y1="-9.1999" x2="-2.2799" y2="-8.75" layer="51"/>
<rectangle x1="-1.5301" y1="-9.1999" x2="-1.0099" y2="-8.75" layer="51"/>
<rectangle x1="-0.2601" y1="-9.1999" x2="0.2601" y2="-8.75" layer="51"/>
<rectangle x1="1.0099" y1="-9.1999" x2="1.5301" y2="-8.75" layer="51"/>
<rectangle x1="2.2799" y1="-9.1999" x2="2.8001" y2="-8.75" layer="51"/>
<rectangle x1="3.5499" y1="-9.1999" x2="4.0701" y2="-8.75" layer="51"/>
<rectangle x1="4.8199" y1="-9.1999" x2="5.3401" y2="-8.75" layer="51"/>
<rectangle x1="6.0899" y1="-9.1999" x2="6.6101" y2="-8.75" layer="51"/>
<rectangle x1="8.75" y1="-6.6101" x2="9.1999" y2="-6.0899" layer="51"/>
<rectangle x1="8.75" y1="-5.3401" x2="9.1999" y2="-4.8199" layer="51"/>
<rectangle x1="8.75" y1="-4.0701" x2="9.1999" y2="-3.5499" layer="51"/>
<rectangle x1="8.75" y1="-2.8001" x2="9.1999" y2="-2.2799" layer="51"/>
<rectangle x1="8.75" y1="-1.5301" x2="9.1999" y2="-1.0099" layer="51"/>
<rectangle x1="8.75" y1="-0.2601" x2="9.1999" y2="0.2601" layer="51"/>
<rectangle x1="8.75" y1="1.0099" x2="9.1999" y2="1.5301" layer="51"/>
<rectangle x1="8.75" y1="2.2799" x2="9.1999" y2="2.8001" layer="51"/>
<rectangle x1="8.75" y1="3.5499" x2="9.1999" y2="4.0701" layer="51"/>
<rectangle x1="8.75" y1="4.8199" x2="9.1999" y2="5.3401" layer="51"/>
<rectangle x1="8.75" y1="6.0899" x2="9.1999" y2="6.6101" layer="51"/>
<rectangle x1="6.0899" y1="8.75" x2="6.6101" y2="9.1999" layer="51"/>
<rectangle x1="4.8199" y1="8.75" x2="5.3401" y2="9.1999" layer="51"/>
<rectangle x1="3.5499" y1="8.75" x2="4.0701" y2="9.1999" layer="51"/>
<rectangle x1="2.2799" y1="8.75" x2="2.8001" y2="9.1999" layer="51"/>
<rectangle x1="1.0099" y1="8.75" x2="1.5301" y2="9.1999" layer="51"/>
</package>
<package name="PLCC-S44">
<description>&lt;b&gt;Plastic Leaded Chip Carrier&lt;/b&gt; Socked</description>
<wire x1="11.43" y1="11.43" x2="-10.16" y2="11.43" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="11.43" x2="-11.43" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="10.16" x2="-11.43" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-11.43" x2="-11.43" y2="-11.43" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-11.43" x2="11.43" y2="11.43" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="6.985" x2="-6.985" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-7.239" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-10.414" y2="-9.398" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-9.398" x2="-8.255" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="-8.255" x2="-6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-10.414" x2="-6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-10.414" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-8.255" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-8.255" x2="-5.461" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="-10.414" x2="-5.461" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-10.414" x2="-4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-8.255" x2="-4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-8.255" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-2.921" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-10.414" x2="-2.921" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-10.414" x2="-2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-8.255" x2="-2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-8.255" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.381" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-10.414" x2="-0.381" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-10.414" x2="0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-8.255" x2="0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-8.255" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="10.414" y1="9.398" x2="8.255" y2="7.239" width="0.1524" layer="21"/>
<wire x1="10.414" y1="9.398" x2="9.398" y2="10.414" width="0.1524" layer="21"/>
<wire x1="9.398" y1="10.414" x2="7.239" y2="8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="7.239" x2="8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.969" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.969" x2="8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="5.461" x2="8.255" y2="5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="5.461" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="8.255" y1="4.699" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="8.255" y1="4.699" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="2.921" x2="8.255" y2="2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="2.921" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.159" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="8.255" y1="2.159" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="8.255" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.414" y1="0.381" x2="8.255" y2="0.381" width="0.1524" layer="21"/>
<wire x1="10.414" y1="0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-0.381" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-1.651" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-7.239" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-5.461" x2="-8.255" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-5.461" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-4.699" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-4.699" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-2.921" x2="-8.255" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-2.921" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.159" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-2.159" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-8.255" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-0.381" x2="-8.255" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="0.381" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.651" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.239" y1="8.255" x2="6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="8.255" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="8.255" x2="5.461" y2="8.255" width="0.1524" layer="51"/>
<wire x1="5.461" y1="10.414" x2="5.461" y2="8.255" width="0.1524" layer="21"/>
<wire x1="5.461" y1="10.414" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="8.255" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="8.255" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="2.921" y2="8.255" width="0.1524" layer="51"/>
<wire x1="2.921" y1="10.414" x2="2.921" y2="8.255" width="0.1524" layer="21"/>
<wire x1="2.921" y1="10.414" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="8.255" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="8.255" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.381" y2="8.255" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.414" x2="0.381" y2="8.255" width="0.1524" layer="21"/>
<wire x1="0.381" y1="10.414" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="8.255" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="8.255" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.255" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="0" y1="5.08" x2="0" y2="3.175" width="0.508" layer="21"/>
<wire x1="0" y1="5.08" x2="0.635" y2="4.445" width="0.508" layer="21"/>
<wire x1="0.635" y1="4.445" x2="-0.635" y2="4.445" width="0.508" layer="21"/>
<wire x1="-0.635" y1="4.445" x2="0" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-1.651" y1="8.255" x2="-2.159" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="10.414" x2="-2.159" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.414" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="8.255" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="8.255" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.699" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="10.414" x2="-4.699" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="10.414" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.255" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="8.255" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="8.255" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="2.159" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-10.414" x2="2.159" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-10.414" x2="2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-8.255" x2="2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-8.255" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.699" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-10.414" x2="4.699" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-10.414" x2="5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-8.255" x2="5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-8.255" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="6.731" y1="-8.255" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="5.461" x2="-8.255" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="5.461" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="4.699" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="4.699" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="2.921" x2="-8.255" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.921" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="2.159" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-6.731" x2="8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-6.731" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-5.461" x2="8.255" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-5.461" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-4.699" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-4.699" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-2.921" x2="8.255" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.921" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-2.159" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="6.731" y1="-8.255" x2="8.255" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-8.255" x2="8.255" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.651" x2="8.255" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="8.255" x2="-6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="6.731" x2="-8.255" y2="6.985" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="2.159" x2="-8.255" y2="1.651" width="0.1524" layer="51"/>
<circle x="-2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="-2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="6.35" drill="0.8128"/>
<pad name="2" x="-1.27" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="3" x="-1.27" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="4" x="-3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="5" x="-3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="6" x="-6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="7" x="-8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="8" x="-6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="9" x="-8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="10" x="-6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="11" x="-8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="12" x="-6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="14" x="-6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="15" x="-8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="16" x="-6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="17" x="-8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="18" x="-6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="19" x="-6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="20" x="-3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="21" x="-3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="22" x="-1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="23" x="-1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="24" x="1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="25" x="1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="26" x="3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="27" x="3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="28" x="6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="29" x="8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="30" x="6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="31" x="8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="32" x="6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="33" x="8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="34" x="6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="35" x="8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="36" x="6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="37" x="8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="38" x="6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="39" x="8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="40" x="6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="41" x="6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="42" x="3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="43" x="3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="44" x="1.27" y="8.89" drill="0.8128" shape="octagon"/>
<text x="0" y="11.938" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<text x="-10.16" y="11.938" size="1.778" layer="25" ratio="10">&gt;NAME</text>
</package>
<package name="TQFP44">
<description>Plastic &lt;b&gt;Thin Quad Flat Pack&lt;/b&gt;</description>
<wire x1="1.139" y1="0.167" x2="1.139" y2="0.421" width="0.0508" layer="21" curve="180"/>
<wire x1="1.075" y1="-0.087" x2="1.202" y2="-0.214" width="0.0508" layer="21" curve="-90"/>
<wire x1="1.202" y1="0.675" x2="1.3928" y2="-0.0239" width="0.0508" layer="21" curve="-139.967977"/>
<wire x1="1.3929" y1="-0.0234" x2="1.5197" y2="-0.2776" width="0.0508" layer="21" curve="-77.346012"/>
<wire x1="-2.417" y1="-0.659" x2="-1.909" y2="0.675" width="0.0508" layer="21"/>
<wire x1="-1.909" y1="0.675" x2="-1.655" y2="0.675" width="0.0508" layer="21"/>
<wire x1="-1.655" y1="0.675" x2="-1.211" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="-1.211" y1="-0.405" x2="-1.211" y2="0.675" width="0.0508" layer="21"/>
<wire x1="-1.211" y1="0.675" x2="-0.957" y2="0.675" width="0.0508" layer="21"/>
<wire x1="-0.957" y1="0.675" x2="-0.957" y2="0.421" width="0.0508" layer="21"/>
<wire x1="-0.957" y1="0.421" x2="-0.957" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="-0.957" y1="-0.405" x2="-0.512" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="-0.512" y1="-0.405" x2="-0.512" y2="0.421" width="0.0508" layer="21"/>
<wire x1="-0.512" y1="0.421" x2="-0.957" y2="0.421" width="0.0508" layer="21"/>
<wire x1="-0.957" y1="0.675" x2="0.123" y2="0.675" width="0.0508" layer="21"/>
<wire x1="0.123" y1="0.675" x2="0.123" y2="0.421" width="0.0508" layer="21"/>
<wire x1="0.123" y1="0.421" x2="-0.258" y2="0.421" width="0.0508" layer="21"/>
<wire x1="-0.258" y1="0.421" x2="-0.258" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="-0.258" y1="-0.659" x2="-1.401" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="-1.401" y1="-0.659" x2="-1.528" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="-1.528" y1="-0.405" x2="-2.036" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="-2.036" y1="-0.405" x2="-2.163" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="-2.163" y1="-0.659" x2="-2.417" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="-1.782" y1="0.421" x2="-1.973" y2="-0.151" width="0.0508" layer="21"/>
<wire x1="-1.973" y1="-0.151" x2="-1.592" y2="-0.151" width="0.0508" layer="21"/>
<wire x1="-1.592" y1="-0.151" x2="-1.782" y2="0.421" width="0.0508" layer="21"/>
<wire x1="0.123" y1="0.421" x2="0.123" y2="0.167" width="0.0508" layer="21"/>
<wire x1="0.123" y1="0.167" x2="0.631" y2="0.167" width="0.0508" layer="21"/>
<wire x1="0.631" y1="0.167" x2="0.631" y2="0.421" width="0.0508" layer="21"/>
<wire x1="0.631" y1="0.421" x2="0.123" y2="0.421" width="0.0508" layer="21"/>
<wire x1="0.123" y1="0.675" x2="1.202" y2="0.675" width="0.0508" layer="21"/>
<wire x1="2.663" y1="-0.659" x2="2.155" y2="0.675" width="0.0508" layer="21"/>
<wire x1="2.155" y1="0.675" x2="1.901" y2="0.675" width="0.0508" layer="21"/>
<wire x1="1.901" y1="0.675" x2="1.52" y2="-0.214" width="0.0508" layer="21"/>
<wire x1="1.202" y1="-0.659" x2="1.647" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="1.647" y1="-0.659" x2="1.774" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="1.774" y1="-0.405" x2="2.282" y2="-0.405" width="0.0508" layer="21"/>
<wire x1="2.282" y1="-0.405" x2="2.409" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="2.409" y1="-0.659" x2="2.663" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="2.028" y1="0.421" x2="2.218" y2="-0.151" width="0.0508" layer="21"/>
<wire x1="2.218" y1="-0.151" x2="1.837" y2="-0.151" width="0.0508" layer="21"/>
<wire x1="1.837" y1="-0.151" x2="2.028" y2="0.421" width="0.0508" layer="21"/>
<wire x1="1.139" y1="0.421" x2="0.948" y2="0.421" width="0.0508" layer="21"/>
<wire x1="0.948" y1="0.421" x2="0.948" y2="0.167" width="0.0508" layer="21"/>
<wire x1="0.948" y1="0.167" x2="1.139" y2="0.167" width="0.0508" layer="21"/>
<wire x1="0.948" y1="-0.087" x2="1.075" y2="-0.087" width="0.0508" layer="21"/>
<wire x1="0.948" y1="-0.087" x2="0.948" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="0.948" y1="-0.659" x2="-0.195" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="0.123" y1="-0.087" x2="0.631" y2="-0.087" width="0.0508" layer="21"/>
<wire x1="0.631" y1="-0.087" x2="0.631" y2="-0.341" width="0.0508" layer="21"/>
<wire x1="0.631" y1="-0.341" x2="0.123" y2="-0.341" width="0.0508" layer="21"/>
<wire x1="0.123" y1="-0.341" x2="0.123" y2="-0.087" width="0.0508" layer="21"/>
<wire x1="1.202" y1="-0.214" x2="1.202" y2="-0.659" width="0.0508" layer="21"/>
<wire x1="-4.8" y1="4.4" x2="-4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="4.8" x2="4.4" y2="4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="4.8" x2="4.8" y2="4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="4.4" x2="4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="4.8" y1="-4.4" x2="4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="4.4" y1="-4.8" x2="-4.4" y2="-4.8" width="0.2032" layer="21"/>
<wire x1="-4.4" y1="-4.8" x2="-4.8" y2="-4.4" width="0.2032" layer="21"/>
<wire x1="-4.8" y1="-4.4" x2="-4.8" y2="4.4" width="0.2032" layer="21"/>
<circle x="-4" y="4" radius="0.2827" width="0.254" layer="21"/>
<smd name="1" x="-5.8" y="4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="2" x="-5.8" y="3.2" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="3" x="-5.8" y="2.4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="4" x="-5.8" y="1.6" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="5" x="-5.8" y="0.8" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="6" x="-5.8" y="0" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="7" x="-5.8" y="-0.8" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="8" x="-5.8" y="-1.6" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="9" x="-5.8" y="-2.4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="10" x="-5.8" y="-3.2" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="11" x="-5.8" y="-4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="12" x="-4" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="13" x="-3.2" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="14" x="-2.4" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="15" x="-1.6" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="16" x="-0.8" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="17" x="0" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="18" x="0.8" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="19" x="1.6" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="20" x="2.4" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="21" x="3.2" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="22" x="4" y="-5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="23" x="5.8" y="-4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="24" x="5.8" y="-3.2" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="25" x="5.8" y="-2.4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="26" x="5.8" y="-1.6" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="27" x="5.8" y="-0.8" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="28" x="5.8" y="0" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="29" x="5.8" y="0.8" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="30" x="5.8" y="1.6" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="31" x="5.8" y="2.4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="32" x="5.8" y="3.2" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="33" x="5.8" y="4" dx="1.7018" dy="0.4064" layer="1"/>
<smd name="34" x="4" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="35" x="3.2" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="36" x="2.4" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="37" x="1.6" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="38" x="0.8" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="39" x="0" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="40" x="-0.8" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="41" x="-1.6" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="42" x="-2.4" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="43" x="-3.2" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<smd name="44" x="-4" y="5.8" dx="0.4064" dy="1.524" layer="1"/>
<text x="-3.81" y="6.985" size="1.778" layer="25">&gt;NAME</text>
<text x="-4.445" y="-8.7551" size="1.778" layer="27">&gt;VALUE</text>
<text x="-2.7851" y="-3.985" size="0.6096" layer="51">TQFP-44</text>
<rectangle x1="-6.1001" y1="3.8001" x2="-4.95" y2="4.1999" layer="51"/>
<rectangle x1="-6.1001" y1="3" x2="-4.95" y2="3.4" layer="51"/>
<rectangle x1="-6.1001" y1="2.1999" x2="-4.95" y2="2.5999" layer="51"/>
<rectangle x1="-6.1001" y1="1.4" x2="-4.95" y2="1.8001" layer="51"/>
<rectangle x1="-6.1001" y1="0.5999" x2="-4.95" y2="1" layer="51"/>
<rectangle x1="-6.1001" y1="-0.1999" x2="-4.95" y2="0.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-1" x2="-4.95" y2="-0.5999" layer="51"/>
<rectangle x1="-6.1001" y1="-1.8001" x2="-4.95" y2="-1.4" layer="51"/>
<rectangle x1="-6.1001" y1="-2.5999" x2="-4.95" y2="-2.1999" layer="51"/>
<rectangle x1="-6.1001" y1="-3.4" x2="-4.95" y2="-3" layer="51"/>
<rectangle x1="-6.1001" y1="-4.1999" x2="-4.95" y2="-3.8001" layer="51"/>
<rectangle x1="-4.1999" y1="-6.1001" x2="-3.8001" y2="-4.95" layer="51"/>
<rectangle x1="-3.4" y1="-6.1001" x2="-3" y2="-4.95" layer="51"/>
<rectangle x1="-2.5999" y1="-6.1001" x2="-2.1999" y2="-4.95" layer="51"/>
<rectangle x1="-1.8001" y1="-6.1001" x2="-1.4" y2="-4.95" layer="51"/>
<rectangle x1="-1" y1="-6.1001" x2="-0.5999" y2="-4.95" layer="51"/>
<rectangle x1="-0.1999" y1="-6.1001" x2="0.1999" y2="-4.95" layer="51"/>
<rectangle x1="0.5999" y1="-6.1001" x2="1" y2="-4.95" layer="51"/>
<rectangle x1="1.4" y1="-6.1001" x2="1.8001" y2="-4.95" layer="51"/>
<rectangle x1="2.1999" y1="-6.1001" x2="2.5999" y2="-4.95" layer="51"/>
<rectangle x1="3" y1="-6.1001" x2="3.4" y2="-4.95" layer="51"/>
<rectangle x1="3.8001" y1="-6.1001" x2="4.1999" y2="-4.95" layer="51"/>
<rectangle x1="4.95" y1="-4.1999" x2="6.1001" y2="-3.8001" layer="51"/>
<rectangle x1="4.95" y1="-3.4" x2="6.1001" y2="-3" layer="51"/>
<rectangle x1="4.95" y1="-2.5999" x2="6.1001" y2="-2.1999" layer="51"/>
<rectangle x1="4.95" y1="-1.8001" x2="6.1001" y2="-1.4" layer="51"/>
<rectangle x1="4.95" y1="-1" x2="6.1001" y2="-0.5999" layer="51"/>
<rectangle x1="4.95" y1="-0.1999" x2="6.1001" y2="0.1999" layer="51"/>
<rectangle x1="4.95" y1="0.5999" x2="6.1001" y2="1" layer="51"/>
<rectangle x1="4.95" y1="1.4" x2="6.1001" y2="1.8001" layer="51"/>
<rectangle x1="4.95" y1="2.1999" x2="6.1001" y2="2.5999" layer="51"/>
<rectangle x1="4.95" y1="3" x2="6.1001" y2="3.4" layer="51"/>
<rectangle x1="4.95" y1="3.8001" x2="6.1001" y2="4.1999" layer="51"/>
<rectangle x1="3.8001" y1="4.95" x2="4.1999" y2="6.1001" layer="51"/>
<rectangle x1="3" y1="4.95" x2="3.4" y2="6.1001" layer="51"/>
<rectangle x1="2.1999" y1="4.95" x2="2.5999" y2="6.1001" layer="51"/>
<rectangle x1="1.4" y1="4.95" x2="1.8001" y2="6.1001" layer="51"/>
<rectangle x1="0.5999" y1="4.95" x2="1" y2="6.1001" layer="51"/>
<rectangle x1="-0.1999" y1="4.95" x2="0.1999" y2="6.1001" layer="51"/>
<rectangle x1="-1" y1="4.95" x2="-0.5999" y2="6.1001" layer="51"/>
<rectangle x1="-1.8001" y1="4.95" x2="-1.4" y2="6.1001" layer="51"/>
<rectangle x1="-2.5999" y1="4.95" x2="-2.1999" y2="6.1001" layer="51"/>
<rectangle x1="-3.4" y1="4.95" x2="-3" y2="6.1001" layer="51"/>
<rectangle x1="-4.1999" y1="4.95" x2="-3.8001" y2="6.1001" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="EPM7032">
<wire x1="-7.62" y1="50.8" x2="-7.62" y2="-50.8" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-50.8" x2="7.62" y2="-50.8" width="0.254" layer="94"/>
<wire x1="7.62" y1="-50.8" x2="7.62" y2="50.8" width="0.254" layer="94"/>
<wire x1="7.62" y1="50.8" x2="-7.62" y2="50.8" width="0.254" layer="94"/>
<text x="-7.62" y="52.07" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-53.34" size="1.778" layer="96">&gt;VALUE</text>
<pin name="IO1" x="-10.16" y="30.48" length="short" swaplevel="1"/>
<pin name="IO2" x="-10.16" y="27.94" length="short" swaplevel="1"/>
<pin name="IO3" x="-10.16" y="25.4" length="short" swaplevel="1"/>
<pin name="IO4/TDI" x="-10.16" y="22.86" length="short" swaplevel="1"/>
<pin name="IO5" x="-10.16" y="20.32" length="short" swaplevel="1"/>
<pin name="IO6" x="-10.16" y="17.78" length="short" swaplevel="1"/>
<pin name="IO7" x="-10.16" y="15.24" length="short" swaplevel="1"/>
<pin name="IO8" x="-10.16" y="12.7" length="short" swaplevel="1"/>
<pin name="IO9/TMS" x="-10.16" y="10.16" length="short" swaplevel="1"/>
<pin name="IO10" x="-10.16" y="7.62" length="short" swaplevel="1"/>
<pin name="IO11" x="-10.16" y="5.08" length="short" swaplevel="1"/>
<pin name="IO12" x="-10.16" y="2.54" length="short" swaplevel="1"/>
<pin name="IO13" x="-10.16" y="0" length="short" swaplevel="1"/>
<pin name="IO14" x="-10.16" y="-2.54" length="short" swaplevel="1"/>
<pin name="IO15" x="-10.16" y="-5.08" length="short" swaplevel="1"/>
<pin name="IO16" x="-10.16" y="-7.62" length="short" swaplevel="1"/>
<pin name="IO17" x="-10.16" y="-10.16" length="short" swaplevel="1"/>
<pin name="IO18" x="-10.16" y="-12.7" length="short" swaplevel="1"/>
<pin name="IO19" x="-10.16" y="-15.24" length="short" swaplevel="1"/>
<pin name="IO20/TCK" x="-10.16" y="-17.78" length="short" swaplevel="1"/>
<pin name="IO21" x="-10.16" y="-20.32" length="short" swaplevel="1"/>
<pin name="IO22" x="-10.16" y="-22.86" length="short" swaplevel="1"/>
<pin name="IO23" x="-10.16" y="-25.4" length="short" swaplevel="1"/>
<pin name="IO24" x="-10.16" y="-27.94" length="short" swaplevel="1"/>
<pin name="IO25/TDO" x="-10.16" y="-30.48" length="short" swaplevel="1"/>
<pin name="IO26" x="-10.16" y="-33.02" length="short" swaplevel="1"/>
<pin name="IO27" x="-10.16" y="-35.56" length="short" swaplevel="1"/>
<pin name="IO28" x="-10.16" y="-38.1" length="short" swaplevel="1"/>
<pin name="IO29" x="-10.16" y="-40.64" length="short" swaplevel="1"/>
<pin name="IO30" x="-10.16" y="-43.18" length="short" swaplevel="1"/>
<pin name="IO31" x="-10.16" y="-45.72" length="short" swaplevel="1"/>
<pin name="IO32" x="-10.16" y="-48.26" length="short" swaplevel="1"/>
<pin name="GCLK1" x="-10.16" y="43.18" length="short" direction="in"/>
<pin name="GCLR/" x="-10.16" y="40.64" length="short" direction="in"/>
<pin name="OE1" x="-10.16" y="38.1" length="short" direction="in"/>
<pin name="OE2-GCLK2" x="-10.16" y="35.56" length="short" direction="in"/>
<pin name="PD/_VCC" x="-10.16" y="48.26" length="short" direction="pas"/>
</symbol>
<symbol name="PWR3-4">
<text x="-2.54" y="0" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-2.54" size="1.778" layer="95" rot="R180">GND</text>
<text x="0" y="5.08" size="1.778" layer="95">VCC</text>
<pin name="VCC" x="0" y="10.16" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="VCC@1" x="2.54" y="10.16" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="VCC@2" x="5.08" y="10.16" visible="pad" length="short" direction="pwr" rot="R270"/>
<pin name="GND" x="-2.54" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="GND@1" x="0" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="GND@2" x="2.54" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
<pin name="GND@3" x="5.08" y="-7.62" visible="pad" length="short" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EPM7032" prefix="IC">
<description>&lt;b&gt;EPM7032&lt;/b&gt;&lt;p&gt;
MAX 7000 family</description>
<gates>
<gate name="_" symbol="EPM7032" x="0" y="0"/>
<gate name="P" symbol="PWR3-4" x="30.48" y="2.54" addlevel="always"/>
</gates>
<devices>
<device name="J44" package="PLCC44">
<connects>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="GND@1" pad="22"/>
<connect gate="P" pin="GND@2" pad="30"/>
<connect gate="P" pin="GND@3" pad="42"/>
<connect gate="P" pin="VCC" pad="15"/>
<connect gate="P" pin="VCC@1" pad="23"/>
<connect gate="P" pin="VCC@2" pad="35"/>
<connect gate="_" pin="GCLK1" pad="43"/>
<connect gate="_" pin="GCLR/" pad="1"/>
<connect gate="_" pin="IO1" pad="4"/>
<connect gate="_" pin="IO10" pad="14"/>
<connect gate="_" pin="IO11" pad="16"/>
<connect gate="_" pin="IO12" pad="17"/>
<connect gate="_" pin="IO13" pad="18"/>
<connect gate="_" pin="IO14" pad="19"/>
<connect gate="_" pin="IO15" pad="20"/>
<connect gate="_" pin="IO16" pad="21"/>
<connect gate="_" pin="IO17" pad="41"/>
<connect gate="_" pin="IO18" pad="40"/>
<connect gate="_" pin="IO19" pad="39"/>
<connect gate="_" pin="IO2" pad="5"/>
<connect gate="_" pin="IO20/TCK" pad="32"/>
<connect gate="_" pin="IO21" pad="37"/>
<connect gate="_" pin="IO22" pad="36"/>
<connect gate="_" pin="IO23" pad="34"/>
<connect gate="_" pin="IO24" pad="33"/>
<connect gate="_" pin="IO25/TDO" pad="38"/>
<connect gate="_" pin="IO26" pad="31"/>
<connect gate="_" pin="IO27" pad="29"/>
<connect gate="_" pin="IO28" pad="28"/>
<connect gate="_" pin="IO29" pad="27"/>
<connect gate="_" pin="IO3" pad="6"/>
<connect gate="_" pin="IO30" pad="26"/>
<connect gate="_" pin="IO31" pad="25"/>
<connect gate="_" pin="IO32" pad="24"/>
<connect gate="_" pin="IO4/TDI" pad="7"/>
<connect gate="_" pin="IO5" pad="8"/>
<connect gate="_" pin="IO6" pad="9"/>
<connect gate="_" pin="IO7" pad="11"/>
<connect gate="_" pin="IO8" pad="12"/>
<connect gate="_" pin="IO9/TMS" pad="13"/>
<connect gate="_" pin="OE1" pad="44"/>
<connect gate="_" pin="OE2-GCLK2" pad="2"/>
<connect gate="_" pin="PD/_VCC" pad="3"/>
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
<device name="S44" package="PLCC-S44">
<connects>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="GND@1" pad="22"/>
<connect gate="P" pin="GND@2" pad="30"/>
<connect gate="P" pin="GND@3" pad="42"/>
<connect gate="P" pin="VCC" pad="15"/>
<connect gate="P" pin="VCC@1" pad="23"/>
<connect gate="P" pin="VCC@2" pad="35"/>
<connect gate="_" pin="GCLK1" pad="43"/>
<connect gate="_" pin="GCLR/" pad="1"/>
<connect gate="_" pin="IO1" pad="4"/>
<connect gate="_" pin="IO10" pad="14"/>
<connect gate="_" pin="IO11" pad="16"/>
<connect gate="_" pin="IO12" pad="17"/>
<connect gate="_" pin="IO13" pad="18"/>
<connect gate="_" pin="IO14" pad="19"/>
<connect gate="_" pin="IO15" pad="20"/>
<connect gate="_" pin="IO16" pad="21"/>
<connect gate="_" pin="IO17" pad="41"/>
<connect gate="_" pin="IO18" pad="40"/>
<connect gate="_" pin="IO19" pad="39"/>
<connect gate="_" pin="IO2" pad="5"/>
<connect gate="_" pin="IO20/TCK" pad="32"/>
<connect gate="_" pin="IO21" pad="37"/>
<connect gate="_" pin="IO22" pad="36"/>
<connect gate="_" pin="IO23" pad="34"/>
<connect gate="_" pin="IO24" pad="33"/>
<connect gate="_" pin="IO25/TDO" pad="38"/>
<connect gate="_" pin="IO26" pad="31"/>
<connect gate="_" pin="IO27" pad="29"/>
<connect gate="_" pin="IO28" pad="28"/>
<connect gate="_" pin="IO29" pad="27"/>
<connect gate="_" pin="IO3" pad="6"/>
<connect gate="_" pin="IO30" pad="26"/>
<connect gate="_" pin="IO31" pad="25"/>
<connect gate="_" pin="IO32" pad="24"/>
<connect gate="_" pin="IO4/TDI" pad="7"/>
<connect gate="_" pin="IO5" pad="8"/>
<connect gate="_" pin="IO6" pad="9"/>
<connect gate="_" pin="IO7" pad="11"/>
<connect gate="_" pin="IO8" pad="12"/>
<connect gate="_" pin="IO9/TMS" pad="13"/>
<connect gate="_" pin="OE1" pad="44"/>
<connect gate="_" pin="OE2-GCLK2" pad="2"/>
<connect gate="_" pin="PD/_VCC" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="EPM7032SLC44-6N" constant="no"/>
<attribute name="OC_FARNELL" value="1549447" constant="no"/>
<attribute name="OC_NEWARK" value="51R9532" constant="no"/>
</technology>
</technologies>
</device>
<device name="T44" package="TQFP44">
<connects>
<connect gate="P" pin="GND" pad="4"/>
<connect gate="P" pin="GND@1" pad="16"/>
<connect gate="P" pin="GND@2" pad="24"/>
<connect gate="P" pin="GND@3" pad="36"/>
<connect gate="P" pin="VCC" pad="9"/>
<connect gate="P" pin="VCC@1" pad="17"/>
<connect gate="P" pin="VCC@2" pad="29"/>
<connect gate="_" pin="GCLK1" pad="37"/>
<connect gate="_" pin="GCLR/" pad="39"/>
<connect gate="_" pin="IO1" pad="42"/>
<connect gate="_" pin="IO10" pad="8"/>
<connect gate="_" pin="IO11" pad="10"/>
<connect gate="_" pin="IO12" pad="11"/>
<connect gate="_" pin="IO13" pad="12"/>
<connect gate="_" pin="IO14" pad="13"/>
<connect gate="_" pin="IO15" pad="14"/>
<connect gate="_" pin="IO16" pad="15"/>
<connect gate="_" pin="IO17" pad="35"/>
<connect gate="_" pin="IO18" pad="34"/>
<connect gate="_" pin="IO19" pad="33"/>
<connect gate="_" pin="IO2" pad="43"/>
<connect gate="_" pin="IO20/TCK" pad="26"/>
<connect gate="_" pin="IO21" pad="31"/>
<connect gate="_" pin="IO22" pad="30"/>
<connect gate="_" pin="IO23" pad="28"/>
<connect gate="_" pin="IO24" pad="27"/>
<connect gate="_" pin="IO25/TDO" pad="32"/>
<connect gate="_" pin="IO26" pad="25"/>
<connect gate="_" pin="IO27" pad="23"/>
<connect gate="_" pin="IO28" pad="22"/>
<connect gate="_" pin="IO29" pad="21"/>
<connect gate="_" pin="IO3" pad="44"/>
<connect gate="_" pin="IO30" pad="20"/>
<connect gate="_" pin="IO31" pad="19"/>
<connect gate="_" pin="IO32" pad="18"/>
<connect gate="_" pin="IO4/TDI" pad="1"/>
<connect gate="_" pin="IO5" pad="2"/>
<connect gate="_" pin="IO6" pad="3"/>
<connect gate="_" pin="IO7" pad="5"/>
<connect gate="_" pin="IO8" pad="6"/>
<connect gate="_" pin="IO9/TMS" pad="7"/>
<connect gate="_" pin="OE1" pad="38"/>
<connect gate="_" pin="OE2-GCLK2" pad="40"/>
<connect gate="_" pin="PD/_VCC" pad="41"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="EPM7032SLC44-6N" constant="no"/>
<attribute name="OC_FARNELL" value="1549447" constant="no"/>
<attribute name="OC_NEWARK" value="51R9532" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X22">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-1.27" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-1.27" x2="-22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-27.305" y1="1.27" x2="-26.035" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-26.035" y1="1.27" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-0.635" x2="-26.035" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="1.27" x2="-23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="1.27" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.635" x2="-23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="-1.27" x2="-24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-24.765" y1="-1.27" x2="-25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-27.94" y1="0.635" x2="-27.94" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-27.305" y1="1.27" x2="-27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-27.94" y1="-0.635" x2="-27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-26.035" y1="-1.27" x2="-27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="24.765" y2="1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="25.4" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="24.765" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="24.765" y1="-1.27" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="26.035" y1="1.27" x2="27.305" y2="1.27" width="0.1524" layer="21"/>
<wire x1="27.305" y1="1.27" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="0.635" x2="27.94" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-0.635" x2="27.305" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="26.035" y1="1.27" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-0.635" x2="26.035" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="27.305" y1="-1.27" x2="26.035" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-26.67" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="26.67" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-28.0162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-27.94" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="-21.844" y1="-0.254" x2="-21.336" y2="0.254" layer="51"/>
<rectangle x1="-24.384" y1="-0.254" x2="-23.876" y2="0.254" layer="51"/>
<rectangle x1="-26.924" y1="-0.254" x2="-26.416" y2="0.254" layer="51"/>
<rectangle x1="21.336" y1="-0.254" x2="21.844" y2="0.254" layer="51"/>
<rectangle x1="23.876" y1="-0.254" x2="24.384" y2="0.254" layer="51"/>
<rectangle x1="26.416" y1="-0.254" x2="26.924" y2="0.254" layer="51"/>
</package>
<package name="1X22/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-27.94" y1="-1.905" x2="-25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.635" x2="-27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-27.94" y1="0.635" x2="-27.94" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-26.67" y1="6.985" x2="-26.67" y2="1.27" width="0.762" layer="21"/>
<wire x1="-25.4" y1="-1.905" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="6.985" x2="-24.13" y2="1.27" width="0.762" layer="21"/>
<wire x1="-22.86" y1="-1.905" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="6.985" x2="-21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="6.985" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.985" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="6.985" x2="21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="25.4" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="25.4" y1="0.635" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="24.13" y1="6.985" x2="24.13" y2="1.27" width="0.762" layer="21"/>
<wire x1="25.4" y1="-1.905" x2="27.94" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="27.94" y1="-1.905" x2="27.94" y2="0.635" width="0.1524" layer="21"/>
<wire x1="27.94" y1="0.635" x2="25.4" y2="0.635" width="0.1524" layer="21"/>
<wire x1="26.67" y1="6.985" x2="26.67" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-26.67" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-24.13" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-21.59" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="21.59" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="26.67" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-28.575" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="29.845" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-27.051" y1="0.635" x2="-26.289" y2="1.143" layer="21"/>
<rectangle x1="-24.511" y1="0.635" x2="-23.749" y2="1.143" layer="21"/>
<rectangle x1="-21.971" y1="0.635" x2="-21.209" y2="1.143" layer="21"/>
<rectangle x1="-19.431" y1="0.635" x2="-18.669" y2="1.143" layer="21"/>
<rectangle x1="-16.891" y1="0.635" x2="-16.129" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="21.209" y1="0.635" x2="21.971" y2="1.143" layer="21"/>
<rectangle x1="-27.051" y1="-2.921" x2="-26.289" y2="-1.905" layer="21"/>
<rectangle x1="-24.511" y1="-2.921" x2="-23.749" y2="-1.905" layer="21"/>
<rectangle x1="-21.971" y1="-2.921" x2="-21.209" y2="-1.905" layer="21"/>
<rectangle x1="-19.431" y1="-2.921" x2="-18.669" y2="-1.905" layer="21"/>
<rectangle x1="-16.891" y1="-2.921" x2="-16.129" y2="-1.905" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
<rectangle x1="21.209" y1="-2.921" x2="21.971" y2="-1.905" layer="21"/>
<rectangle x1="23.749" y1="0.635" x2="24.511" y2="1.143" layer="21"/>
<rectangle x1="26.289" y1="0.635" x2="27.051" y2="1.143" layer="21"/>
<rectangle x1="23.749" y1="-2.921" x2="24.511" y2="-1.905" layer="21"/>
<rectangle x1="26.289" y1="-2.921" x2="27.051" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD22">
<wire x1="-6.35" y1="-30.48" x2="1.27" y2="-30.48" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-30.48" x2="1.27" y2="27.94" width="0.4064" layer="94"/>
<wire x1="1.27" y1="27.94" x2="-6.35" y2="27.94" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="27.94" x2="-6.35" y2="-30.48" width="0.4064" layer="94"/>
<text x="-6.35" y="28.575" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-33.02" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="17" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="19" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="20" x="-2.54" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="21" x="-2.54" y="-25.4" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="22" x="-2.54" y="-27.94" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X22" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD22" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X22">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X22/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="19" pad="19"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="20" pad="20"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="22" pad="22"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
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
<part name="IC1" library="altera" deviceset="EPM7032" device="T44"/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X22" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X22" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="IC1" gate="P" x="88.9" y="43.18"/>
<instance part="JP1" gate="A" x="-50.8" y="60.96" rot="MR0"/>
<instance part="JP2" gate="A" x="-50.8" y="-5.08" rot="R180"/>
<instance part="IC1" gate="_" x="58.42" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="48.26" y1="63.5" x2="-17.78" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="63.5" x2="-17.78" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="-17.78" y1="86.36" x2="-48.26" y2="86.36" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO4/TDI"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="48.26" y1="60.96" x2="-15.24" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="60.96" x2="-15.24" y2="83.82" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="-15.24" y1="83.82" x2="-48.26" y2="83.82" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO5"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="48.26" y1="58.42" x2="-12.7" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="58.42" x2="-12.7" y2="81.28" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="-12.7" y1="81.28" x2="-48.26" y2="81.28" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO6"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="P" pin="GND"/>
<wire x1="86.36" y1="35.56" x2="86.36" y2="33.02" width="0.1524" layer="91"/>
<wire x1="86.36" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="GND@3"/>
<wire x1="88.9" y1="33.02" x2="91.44" y2="33.02" width="0.1524" layer="91"/>
<wire x1="91.44" y1="33.02" x2="93.98" y2="33.02" width="0.1524" layer="91"/>
<wire x1="93.98" y1="33.02" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="GND@1"/>
<wire x1="88.9" y1="35.56" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<junction x="88.9" y="33.02"/>
<pinref part="IC1" gate="P" pin="GND@2"/>
<wire x1="91.44" y1="35.56" x2="91.44" y2="33.02" width="0.1524" layer="91"/>
<junction x="91.44" y="33.02"/>
<wire x1="86.36" y1="33.02" x2="78.74" y2="33.02" width="0.1524" layer="91"/>
<wire x1="78.74" y1="33.02" x2="78.74" y2="93.98" width="0.1524" layer="91"/>
<junction x="86.36" y="33.02"/>
<wire x1="78.74" y1="93.98" x2="-10.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="93.98" x2="-10.16" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="-10.16" y1="78.74" x2="-48.26" y2="78.74" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="16"/>
<wire x1="-10.16" y1="78.74" x2="-10.16" y2="48.26" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="48.26" x2="-48.26" y2="48.26" width="0.1524" layer="91"/>
<junction x="-10.16" y="78.74"/>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="-10.16" y1="48.26" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="2.54" x2="-10.16" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="-27.94" x2="-48.26" y2="-27.94" width="0.1524" layer="91"/>
<junction x="-10.16" y="48.26"/>
<pinref part="JP2" gate="A" pin="14"/>
<wire x1="-48.26" y1="2.54" x2="-10.16" y2="2.54" width="0.1524" layer="91"/>
<junction x="-10.16" y="2.54"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="P" pin="VCC"/>
<wire x1="88.9" y1="53.34" x2="88.9" y2="58.42" width="0.1524" layer="91"/>
<wire x1="88.9" y1="58.42" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="VCC@2"/>
<wire x1="91.44" y1="58.42" x2="93.98" y2="58.42" width="0.1524" layer="91"/>
<wire x1="93.98" y1="58.42" x2="93.98" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="P" pin="VCC@1"/>
<wire x1="91.44" y1="53.34" x2="91.44" y2="58.42" width="0.1524" layer="91"/>
<junction x="91.44" y="58.42"/>
<wire x1="91.44" y1="58.42" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<wire x1="91.44" y1="96.52" x2="20.32" y2="96.52" width="0.1524" layer="91"/>
<wire x1="20.32" y1="96.52" x2="20.32" y2="88.9" width="0.1524" layer="91"/>
<wire x1="20.32" y1="88.9" x2="48.26" y2="88.9" width="0.1524" layer="91"/>
<wire x1="20.32" y1="88.9" x2="2.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="2.54" y1="88.9" x2="2.54" y2="66.04" width="0.1524" layer="91"/>
<junction x="20.32" y="88.9"/>
<pinref part="JP1" gate="A" pin="9"/>
<wire x1="2.54" y1="66.04" x2="-48.26" y2="66.04" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="17"/>
<wire x1="2.54" y1="66.04" x2="2.54" y2="45.72" width="0.1524" layer="91"/>
<wire x1="2.54" y1="45.72" x2="-48.26" y2="45.72" width="0.1524" layer="91"/>
<junction x="2.54" y="66.04"/>
<wire x1="2.54" y1="45.72" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
<wire x1="2.54" y1="15.24" x2="2.54" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="2.54" y1="-15.24" x2="-48.26" y2="-15.24" width="0.1524" layer="91"/>
<junction x="2.54" y="45.72"/>
<pinref part="JP2" gate="A" pin="7"/>
<pinref part="JP2" gate="A" pin="19"/>
<wire x1="-48.26" y1="15.24" x2="2.54" y2="15.24" width="0.1524" layer="91"/>
<junction x="2.54" y="15.24"/>
<pinref part="IC1" gate="_" pin="PD/_VCC"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="48.26" y1="55.88" x2="-7.62" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="55.88" x2="-7.62" y2="76.2" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="-7.62" y1="76.2" x2="-48.26" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO7"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<wire x1="48.26" y1="53.34" x2="-5.08" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="53.34" x2="-5.08" y2="73.66" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="-5.08" y1="73.66" x2="-48.26" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO8"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<wire x1="48.26" y1="50.8" x2="-2.54" y2="50.8" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="50.8" x2="-2.54" y2="71.12" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="-2.54" y1="71.12" x2="-48.26" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO9/TMS"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="48.26" y1="48.26" x2="0" y2="48.26" width="0.1524" layer="91"/>
<wire x1="0" y1="48.26" x2="0" y2="68.58" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="0" y1="68.58" x2="-48.26" y2="68.58" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO10"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="48.26" y1="45.72" x2="7.62" y2="45.72" width="0.1524" layer="91"/>
<wire x1="7.62" y1="45.72" x2="7.62" y2="43.18" width="0.1524" layer="91"/>
<wire x1="7.62" y1="43.18" x2="-20.32" y2="43.18" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="43.18" x2="-20.32" y2="63.5" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="-20.32" y1="63.5" x2="-48.26" y2="63.5" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO11"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<wire x1="48.26" y1="43.18" x2="10.16" y2="43.18" width="0.1524" layer="91"/>
<wire x1="10.16" y1="43.18" x2="10.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="10.16" y1="40.64" x2="-17.78" y2="40.64" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="40.64" x2="-17.78" y2="60.96" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="11"/>
<wire x1="-17.78" y1="60.96" x2="-48.26" y2="60.96" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO12"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<wire x1="48.26" y1="40.64" x2="12.7" y2="40.64" width="0.1524" layer="91"/>
<wire x1="12.7" y1="40.64" x2="12.7" y2="38.1" width="0.1524" layer="91"/>
<wire x1="12.7" y1="38.1" x2="-15.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="58.42" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="12"/>
<wire x1="-15.24" y1="58.42" x2="-48.26" y2="58.42" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO13"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<wire x1="48.26" y1="38.1" x2="15.24" y2="38.1" width="0.1524" layer="91"/>
<wire x1="15.24" y1="38.1" x2="15.24" y2="35.56" width="0.1524" layer="91"/>
<wire x1="15.24" y1="35.56" x2="-12.7" y2="35.56" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="35.56" x2="-12.7" y2="55.88" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="13"/>
<wire x1="-12.7" y1="55.88" x2="-48.26" y2="55.88" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO14"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<wire x1="48.26" y1="35.56" x2="17.78" y2="35.56" width="0.1524" layer="91"/>
<wire x1="17.78" y1="35.56" x2="17.78" y2="33.02" width="0.1524" layer="91"/>
<wire x1="17.78" y1="33.02" x2="-7.62" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-7.62" y1="33.02" x2="-7.62" y2="53.34" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="14"/>
<wire x1="-7.62" y1="53.34" x2="-48.26" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO15"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<wire x1="48.26" y1="33.02" x2="20.32" y2="33.02" width="0.1524" layer="91"/>
<wire x1="20.32" y1="33.02" x2="20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="20.32" y1="30.48" x2="-5.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="30.48" x2="-5.08" y2="50.8" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="15"/>
<wire x1="-5.08" y1="50.8" x2="-48.26" y2="50.8" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO16"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<wire x1="48.26" y1="-7.62" x2="20.32" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="20.32" y1="-7.62" x2="20.32" y2="27.94" width="0.1524" layer="91"/>
<wire x1="20.32" y1="27.94" x2="-22.86" y2="27.94" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="27.94" x2="-22.86" y2="43.18" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="18"/>
<wire x1="-22.86" y1="43.18" x2="-48.26" y2="43.18" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO32"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<wire x1="48.26" y1="-5.08" x2="17.78" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="17.78" y1="-5.08" x2="17.78" y2="25.4" width="0.1524" layer="91"/>
<wire x1="17.78" y1="25.4" x2="-25.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="25.4" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="19"/>
<wire x1="-25.4" y1="40.64" x2="-48.26" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO31"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<wire x1="48.26" y1="-2.54" x2="15.24" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="15.24" y1="-2.54" x2="15.24" y2="22.86" width="0.1524" layer="91"/>
<wire x1="15.24" y1="22.86" x2="-27.94" y2="22.86" width="0.1524" layer="91"/>
<wire x1="-27.94" y1="22.86" x2="-27.94" y2="38.1" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="20"/>
<wire x1="-27.94" y1="38.1" x2="-48.26" y2="38.1" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO30"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<wire x1="48.26" y1="0" x2="12.7" y2="0" width="0.1524" layer="91"/>
<wire x1="12.7" y1="0" x2="12.7" y2="20.32" width="0.1524" layer="91"/>
<wire x1="12.7" y1="20.32" x2="-30.48" y2="20.32" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="20.32" x2="-30.48" y2="35.56" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="21"/>
<wire x1="-30.48" y1="35.56" x2="-48.26" y2="35.56" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO29"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<wire x1="48.26" y1="2.54" x2="10.16" y2="2.54" width="0.1524" layer="91"/>
<wire x1="10.16" y1="2.54" x2="10.16" y2="17.78" width="0.1524" layer="91"/>
<wire x1="10.16" y1="17.78" x2="-33.02" y2="17.78" width="0.1524" layer="91"/>
<wire x1="-33.02" y1="17.78" x2="-33.02" y2="33.02" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="22"/>
<wire x1="-33.02" y1="33.02" x2="-48.26" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO28"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<wire x1="48.26" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="91"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="7.62" y1="-30.48" x2="-48.26" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO27"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<wire x1="48.26" y1="7.62" x2="5.08" y2="7.62" width="0.1524" layer="91"/>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="5.08" y1="-25.4" x2="-48.26" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO26"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<wire x1="48.26" y1="22.86" x2="22.86" y2="22.86" width="0.1524" layer="91"/>
<wire x1="22.86" y1="22.86" x2="22.86" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="22.86" y1="-22.86" x2="-48.26" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO20/TCK"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<wire x1="48.26" y1="12.7" x2="25.4" y2="12.7" width="0.1524" layer="91"/>
<wire x1="25.4" y1="12.7" x2="25.4" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="5"/>
<wire x1="25.4" y1="-20.32" x2="-48.26" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO24"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<wire x1="48.26" y1="15.24" x2="27.94" y2="15.24" width="0.1524" layer="91"/>
<wire x1="27.94" y1="15.24" x2="27.94" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="6"/>
<wire x1="27.94" y1="-17.78" x2="-48.26" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO23"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="48.26" y1="17.78" x2="30.48" y2="17.78" width="0.1524" layer="91"/>
<wire x1="30.48" y1="17.78" x2="30.48" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="8"/>
<wire x1="30.48" y1="-12.7" x2="-48.26" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO22"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="48.26" y1="20.32" x2="33.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="33.02" y1="20.32" x2="33.02" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="9"/>
<wire x1="33.02" y1="-10.16" x2="-48.26" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO21"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<wire x1="48.26" y1="10.16" x2="0" y2="10.16" width="0.1524" layer="91"/>
<wire x1="0" y1="10.16" x2="0" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="10"/>
<wire x1="0" y1="-7.62" x2="-48.26" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO25/TDO"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<wire x1="48.26" y1="25.4" x2="25.4" y2="25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="25.4" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<wire x1="25.4" y1="15.24" x2="5.08" y2="15.24" width="0.1524" layer="91"/>
<wire x1="5.08" y1="15.24" x2="5.08" y2="12.7" width="0.1524" layer="91"/>
<wire x1="5.08" y1="12.7" x2="-2.54" y2="12.7" width="0.1524" layer="91"/>
<wire x1="-2.54" y1="12.7" x2="-2.54" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="11"/>
<wire x1="-2.54" y1="-5.08" x2="-48.26" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO19"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<wire x1="48.26" y1="27.94" x2="26.67" y2="27.94" width="0.1524" layer="91"/>
<wire x1="26.67" y1="27.94" x2="26.67" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="26.67" y1="-1.27" x2="-43.18" y2="-1.27" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="-1.27" x2="-43.18" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="12"/>
<wire x1="-43.18" y1="-2.54" x2="-48.26" y2="-2.54" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO18"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<wire x1="48.26" y1="30.48" x2="24.13" y2="30.48" width="0.1524" layer="91"/>
<wire x1="24.13" y1="30.48" x2="24.13" y2="1.27" width="0.1524" layer="91"/>
<wire x1="24.13" y1="1.27" x2="-43.18" y2="1.27" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="1.27" x2="-43.18" y2="0" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="13"/>
<wire x1="-43.18" y1="0" x2="-48.26" y2="0" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO17"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<wire x1="48.26" y1="83.82" x2="3.81" y2="83.82" width="0.1524" layer="91"/>
<wire x1="3.81" y1="83.82" x2="3.81" y2="5.08" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="15"/>
<wire x1="3.81" y1="5.08" x2="-48.26" y2="5.08" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="GCLK1"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<wire x1="48.26" y1="78.74" x2="6.35" y2="78.74" width="0.1524" layer="91"/>
<wire x1="6.35" y1="78.74" x2="6.35" y2="8.89" width="0.1524" layer="91"/>
<wire x1="6.35" y1="8.89" x2="-43.18" y2="8.89" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="8.89" x2="-43.18" y2="7.62" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="16"/>
<wire x1="-43.18" y1="7.62" x2="-48.26" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="OE1"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="48.26" y1="81.28" x2="-8.89" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-8.89" y1="81.28" x2="-8.89" y2="10.16" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="17"/>
<wire x1="-8.89" y1="10.16" x2="-48.26" y2="10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="GCLR/"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<wire x1="48.26" y1="76.2" x2="1.27" y2="76.2" width="0.1524" layer="91"/>
<wire x1="1.27" y1="76.2" x2="1.27" y2="11.43" width="0.1524" layer="91"/>
<wire x1="1.27" y1="11.43" x2="-43.18" y2="11.43" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="11.43" x2="-43.18" y2="12.7" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="18"/>
<wire x1="-43.18" y1="12.7" x2="-48.26" y2="12.7" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="OE2-GCLK2"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="48.26" y1="72.39" x2="13.97" y2="72.39" width="0.1524" layer="91"/>
<wire x1="13.97" y1="72.39" x2="13.97" y2="19.05" width="0.1524" layer="91"/>
<wire x1="13.97" y1="19.05" x2="-43.18" y2="19.05" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="19.05" x2="-43.18" y2="17.78" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="20"/>
<wire x1="-43.18" y1="17.78" x2="-48.26" y2="17.78" width="0.1524" layer="91"/>
<wire x1="48.26" y1="72.39" x2="48.26" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO1"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<wire x1="48.26" y1="68.58" x2="16.51" y2="68.58" width="0.1524" layer="91"/>
<wire x1="16.51" y1="68.58" x2="16.51" y2="21.59" width="0.1524" layer="91"/>
<wire x1="16.51" y1="21.59" x2="-43.18" y2="21.59" width="0.1524" layer="91"/>
<wire x1="-43.18" y1="21.59" x2="-43.18" y2="20.32" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="21"/>
<wire x1="-43.18" y1="20.32" x2="-48.26" y2="20.32" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO2"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<wire x1="48.26" y1="66.04" x2="11.43" y2="66.04" width="0.1524" layer="91"/>
<wire x1="11.43" y1="66.04" x2="11.43" y2="24.13" width="0.1524" layer="91"/>
<wire x1="11.43" y1="24.13" x2="-41.91" y2="24.13" width="0.1524" layer="91"/>
<wire x1="-41.91" y1="24.13" x2="-41.91" y2="22.86" width="0.1524" layer="91"/>
<pinref part="JP2" gate="A" pin="22"/>
<wire x1="-41.91" y1="22.86" x2="-48.26" y2="22.86" width="0.1524" layer="91"/>
<pinref part="IC1" gate="_" pin="IO3"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
