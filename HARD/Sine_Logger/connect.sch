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
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
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
<library name="con-phoenix-3.81">
<description>&lt;b&gt;Phoenix Connectors&lt;/b&gt; Grid 3.81 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1705566">
<description>&lt;b&gt;MKDSD 1,5/ 4-3,81&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 8 A&lt;br&gt;
Bemessungsspannung: 200 V&lt;br&gt;
Raster: 3,81 mm&lt;br&gt;
Polzahl: 4&lt;br&gt;
Montageart: Löten&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Anschlussrichtung vom Leiter zur Platine: 0°&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1705566.pdf</description>
<wire x1="-8.175" y1="-4.65" x2="-8.175" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="8.175" y1="4.65" x2="-8.175" y2="4.65" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="-4.15" x2="8.175" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="-4.15" x2="-8.175" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="2.7596" x2="-8.175" y2="4.65" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-3.25" x2="-8.175" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-3.05" x2="-8.175" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="8.175" y1="2.2824" x2="-8.175" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="8.175" y1="2.7596" x2="-8.175" y2="2.7596" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="-4.05" x2="-8.175" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="-3.25" x2="-8.175" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="-3.05" x2="-8.175" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="-8.175" y1="2.2824" x2="-8.175" y2="2.7596" width="0.1016" layer="21"/>
<wire x1="-5.004" y1="1.856" x2="-6.921" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-6.426" y1="-0.556" x2="-4.509" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-5.715" y1="-0.75" x2="-5.715" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-5.715" y1="-0.8" x2="-5.715" y2="-1.8" width="0.1016" layer="21"/>
<wire x1="-5.715" y1="-0.8" x2="-5.715" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-4.05" x2="-8.175" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-4.05" x2="8.175" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-3.25" x2="8.175" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-4.65" x2="-8.175" y2="-4.65" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-4.65" x2="8.175" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="8.175" y1="-4.15" x2="8.175" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="8.175" y1="2.2824" x2="8.175" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="8.175" y1="2.7596" x2="8.175" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="8.175" y1="2.7596" x2="8.175" y2="4.65" width="0.1016" layer="21"/>
<wire x1="-1.194" y1="1.856" x2="-3.111" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-2.616" y1="-0.556" x2="-0.699" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-1.905" y1="-0.75" x2="-1.905" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-1.905" y1="-0.8" x2="-1.905" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="2.616" y1="1.856" x2="0.699" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="1.194" y1="-0.556" x2="3.111" y2="1.361" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.75" x2="1.905" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.8" x2="1.905" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="6.426" y1="1.856" x2="4.509" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="5.004" y1="-0.556" x2="6.921" y2="1.361" width="0.1016" layer="21"/>
<wire x1="5.715" y1="-0.75" x2="5.715" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="5.715" y1="-0.8" x2="5.715" y2="-0.75" width="0.1016" layer="21"/>
<circle x="-5.715" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="-1.905" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="1.905" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="5.715" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<pad name="1.1" x="-5.715" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="1.2" x="-5.715" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="2.1" x="-1.905" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="2.2" x="-1.905" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="3.1" x="1.905" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="3.2" x="1.905" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="4.1" x="5.715" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="4.2" x="5.715" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<text x="-8.89" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-6.985" y="5.08" size="1.27" layer="27">&gt;VALUE</text>
<polygon width="0.1016" layer="21">
<vertex x="-6.985" y="-1.27"/>
<vertex x="-6.35" y="-2.54"/>
<vertex x="-7.62" y="-2.54"/>
</polygon>
</package>
<package name="1705605">
<description>&lt;b&gt;MKDSD 1,5/ 8-3,81&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 8 A&lt;br&gt;
Bemessungsspannung: 200 V&lt;br&gt;
Raster: 3,81 mm&lt;br&gt;
Polzahl: 8&lt;br&gt;
Montageart: Löten&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Anschlussrichtung vom Leiter zur Platine: 0°&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1705605.pdf</description>
<wire x1="-15.795" y1="-4.65" x2="-15.795" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="15.795" y1="4.65" x2="-15.795" y2="4.65" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="-4.15" x2="15.795" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="-4.15" x2="-15.795" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="2.7596" x2="-15.795" y2="4.65" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-3.25" x2="-15.795" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-3.05" x2="-15.795" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="15.795" y1="2.2824" x2="-15.795" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="15.795" y1="2.7596" x2="-15.795" y2="2.7596" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="-4.05" x2="-15.795" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="-3.25" x2="-15.795" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="-3.05" x2="-15.795" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="-15.795" y1="2.2824" x2="-15.795" y2="2.7596" width="0.1016" layer="21"/>
<wire x1="-12.624" y1="1.856" x2="-14.541" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-14.046" y1="-0.556" x2="-12.129" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-13.335" y1="-0.75" x2="-13.335" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-13.335" y1="-0.8" x2="-13.335" y2="-1.8" width="0.1016" layer="21"/>
<wire x1="-13.335" y1="-0.8" x2="-13.335" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-4.05" x2="-15.795" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-4.05" x2="15.795" y2="-3.25" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-3.25" x2="15.795" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-4.65" x2="-15.795" y2="-4.65" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-4.65" x2="15.795" y2="-4.15" width="0.1016" layer="21"/>
<wire x1="15.795" y1="-4.15" x2="15.795" y2="-4.05" width="0.1016" layer="21"/>
<wire x1="15.795" y1="2.2824" x2="15.795" y2="-3.05" width="0.1016" layer="21"/>
<wire x1="15.795" y1="2.7596" x2="15.795" y2="2.2824" width="0.1016" layer="21"/>
<wire x1="15.795" y1="2.7596" x2="15.795" y2="4.65" width="0.1016" layer="21"/>
<wire x1="-8.814" y1="1.856" x2="-10.731" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-10.236" y1="-0.556" x2="-8.319" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-9.525" y1="-0.75" x2="-9.525" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-9.525" y1="-0.8" x2="-9.525" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="-5.004" y1="1.856" x2="-6.921" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-6.426" y1="-0.556" x2="-4.509" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-5.715" y1="-0.75" x2="-5.715" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-5.715" y1="-0.8" x2="-5.715" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="-1.194" y1="1.856" x2="-3.111" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="-2.616" y1="-0.556" x2="-0.699" y2="1.361" width="0.1016" layer="21"/>
<wire x1="-1.905" y1="-0.75" x2="-1.905" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="-1.905" y1="-0.8" x2="-1.905" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="2.616" y1="1.856" x2="0.699" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="1.194" y1="-0.556" x2="3.111" y2="1.361" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.75" x2="1.905" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="1.905" y1="-0.8" x2="1.905" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="6.426" y1="1.856" x2="4.509" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="5.004" y1="-0.556" x2="6.921" y2="1.361" width="0.1016" layer="21"/>
<wire x1="5.715" y1="-0.75" x2="5.715" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="5.715" y1="-0.8" x2="5.715" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="10.236" y1="1.856" x2="8.319" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="8.814" y1="-0.556" x2="10.731" y2="1.361" width="0.1016" layer="21"/>
<wire x1="9.525" y1="-0.75" x2="9.525" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="9.525" y1="-0.8" x2="9.525" y2="-0.75" width="0.1016" layer="21"/>
<wire x1="14.046" y1="1.856" x2="12.129" y2="-0.061" width="0.1016" layer="21"/>
<wire x1="12.624" y1="-0.556" x2="14.541" y2="1.361" width="0.1016" layer="21"/>
<wire x1="13.335" y1="-0.75" x2="13.335" y2="-0.7" width="0.1016" layer="21"/>
<wire x1="13.335" y1="-0.8" x2="13.335" y2="-0.75" width="0.1016" layer="21"/>
<circle x="-13.335" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="-9.525" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="-5.715" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="-1.905" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="1.905" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="5.715" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="9.525" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<circle x="13.335" y="0.65" radius="1.4065" width="0.1016" layer="21"/>
<pad name="1.1" x="-13.335" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="1.2" x="-13.335" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="2.1" x="-9.525" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="2.2" x="-9.525" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="3.1" x="-5.715" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="3.2" x="-5.715" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="4.1" x="-1.905" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="4.2" x="-1.905" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="5.1" x="1.905" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="5.2" x="1.905" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="6.1" x="5.715" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="6.2" x="5.715" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="7.1" x="9.525" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="7.2" x="9.525" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="8.1" x="13.335" y="-1.25" drill="0.5" diameter="0.9" rot="R90"/>
<pad name="8.2" x="13.335" y="3.83" drill="0.5" diameter="0.9" rot="R90"/>
<text x="-16.51" y="-3.81" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-14.605" y="5.08" size="1.27" layer="27">&gt;VALUE</text>
<polygon width="0.1016" layer="21">
<vertex x="-14.605" y="-1.27"/>
<vertex x="-13.97" y="-2.54"/>
<vertex x="-15.24" y="-2.54"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="SCHRAUBKLEMME_2">
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-12.7" y1="1.27" x2="0" y2="1.27" width="0.254" layer="94"/>
<wire x1="-12.7" y1="1.27" x2="-12.7" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-12.7" y2="-1.27" width="0.254" layer="94"/>
<circle x="-11.43" y="0" radius="0.6839" width="0.254" layer="94"/>
<text x="-10.16" y="-0.889" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1A" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="1705566" prefix="X">
<description>&lt;b&gt;MKDSD 1,5/ 4-3,81&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 8 A&lt;br&gt;
Bemessungsspannung: 200 V&lt;br&gt;
Raster: 3,81 mm&lt;br&gt;
Polzahl: 4&lt;br&gt;
Montageart: Löten&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Anschlussrichtung vom Leiter zur Platine: 0°&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1705566.pdf</description>
<gates>
<gate name="-1" symbol="SCHRAUBKLEMME_2" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="SCHRAUBKLEMME_2" x="0" y="-7.62" addlevel="always"/>
<gate name="-3" symbol="SCHRAUBKLEMME_2" x="0" y="-15.24" addlevel="always"/>
<gate name="-4" symbol="SCHRAUBKLEMME_2" x="0" y="-22.86" addlevel="always"/>
</gates>
<devices>
<device name="" package="1705566">
<connects>
<connect gate="-1" pin="1A" pad="1.1 1.2" route="any"/>
<connect gate="-2" pin="1A" pad="2.1 2.2" route="any"/>
<connect gate="-3" pin="1A" pad="3.1 3.2" route="any"/>
<connect gate="-4" pin="1A" pad="4.1 4.2" route="any"/>
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
<deviceset name="1705605" prefix="X">
<description>&lt;b&gt;MKDSD 1,5/10-3,81&lt;/b&gt; Printklemme&lt;p&gt;
Nennstrom: 8 A&lt;br&gt;
Bemessungsspannung: 200 V&lt;br&gt;
Raster: 3,81 mm&lt;br&gt;
Polzahl: 12&lt;br&gt;
Montageart: Löten&lt;br&gt;
Anschlussart: Schraubanschluss&lt;br&gt;
Anschlussrichtung vom Leiter zur Platine: 0°&lt;br&gt;
Source: http://eshop.phoenixcontact.com .. 1705605.pdf</description>
<gates>
<gate name="-1" symbol="SCHRAUBKLEMME_2" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="SCHRAUBKLEMME_2" x="0" y="-7.62" addlevel="always"/>
<gate name="-3" symbol="SCHRAUBKLEMME_2" x="0" y="-15.24" addlevel="always"/>
<gate name="-4" symbol="SCHRAUBKLEMME_2" x="0" y="-22.86" addlevel="always"/>
<gate name="-5" symbol="SCHRAUBKLEMME_2" x="0" y="-30.48" addlevel="always"/>
<gate name="-6" symbol="SCHRAUBKLEMME_2" x="0" y="-38.1" addlevel="always"/>
<gate name="-7" symbol="SCHRAUBKLEMME_2" x="0" y="-45.72" addlevel="always"/>
<gate name="-8" symbol="SCHRAUBKLEMME_2" x="0" y="-53.34" addlevel="always"/>
</gates>
<devices>
<device name="" package="1705605">
<connects>
<connect gate="-1" pin="1A" pad="1.1 1.2" route="any"/>
<connect gate="-2" pin="1A" pad="2.1 2.2" route="any"/>
<connect gate="-3" pin="1A" pad="3.1 3.2" route="any"/>
<connect gate="-4" pin="1A" pad="4.1 4.2" route="any"/>
<connect gate="-5" pin="1A" pad="5.1 5.2" route="any"/>
<connect gate="-6" pin="1A" pad="6.1 6.2" route="any"/>
<connect gate="-7" pin="1A" pad="7.1 7.2" route="any"/>
<connect gate="-8" pin="1A" pad="8.1 8.2" route="any"/>
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
<library name="inductors">
<description>&lt;b&gt;Inductors and Filters&lt;/b&gt;&lt;p&gt;
Based on the previous library ind-a.lbr&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="P0762NL">
<description>&lt;b&gt;Unshielded Drum Core - P0762NL Series&lt;/b&gt;&lt;p&gt;
Source: http://ww2.pulseeng.com/products/datasheets/SPM2007.pdf</description>
<wire x1="-2.8448" y1="-4.572" x2="2.8448" y2="-4.572" width="0.2032" layer="51"/>
<wire x1="4.572" y1="-1.524" x2="4.572" y2="1.524" width="0.2032" layer="21"/>
<wire x1="2.8448" y1="4.572" x2="-2.8448" y2="4.572" width="0.2032" layer="51"/>
<wire x1="-4.572" y1="1.524" x2="-4.572" y2="-1.524" width="0.2032" layer="21"/>
<wire x1="1.3208" y1="6.4008" x2="1.3208" y2="4.6736" width="0.2032" layer="51"/>
<wire x1="-1.3208" y1="6.4008" x2="1.3208" y2="6.4008" width="0.2032" layer="51"/>
<wire x1="-1.3208" y1="6.4008" x2="-1.3208" y2="4.6736" width="0.2032" layer="51"/>
<wire x1="-1.3208" y1="-6.4008" x2="-1.3208" y2="-4.6736" width="0.2032" layer="51"/>
<wire x1="1.3208" y1="-6.4008" x2="-1.3208" y2="-6.4008" width="0.2032" layer="51"/>
<wire x1="1.3208" y1="-6.4008" x2="1.3208" y2="-4.6736" width="0.2032" layer="51"/>
<wire x1="-4.572" y1="1.524" x2="-2.8448" y2="4.572" width="0.2032" layer="21"/>
<wire x1="4.572" y1="-1.524" x2="2.8448" y2="-4.572" width="0.2032" layer="21"/>
<wire x1="4.572" y1="1.524" x2="2.8448" y2="4.572" width="0.2032" layer="21"/>
<wire x1="-4.572" y1="-1.524" x2="-2.8448" y2="-4.572" width="0.2032" layer="21"/>
<circle x="0" y="0" radius="4.1656" width="0.2032" layer="51"/>
<smd name="1" x="0" y="5.1562" dx="2.794" dy="2.921" layer="1"/>
<smd name="2" x="0" y="-5.1562" dx="2.794" dy="2.921" layer="1" rot="R180"/>
<text x="-5.08" y="-2.54" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-3.175" y="-0.635" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L-PULSE+">
<wire x1="2.54" y1="1.397" x2="-2.54" y2="1.397" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94" curve="-191.421186"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.1524" layer="94" curve="-191.421186"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94" curve="-191.421186"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.1524" layer="94" curve="-191.421186"/>
<wire x1="2.54" y1="2.032" x2="-2.54" y2="2.032" width="0.254" layer="94"/>
<circle x="-1.905" y="0" radius="0.1796" width="0" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="P0762.*NL" prefix="L">
<description>&lt;b&gt;Unshielded Drum Core&lt;/b&gt; P0762NL Series&lt;p&gt;
Source&gt; http://ww2.pulseeng.com/products/datasheets/SPM2007.pdf</description>
<gates>
<gate name="G$1" symbol="L-PULSE+" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P0762NL">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="103"/>
<technology name="104"/>
<technology name="105"/>
<technology name="153"/>
<technology name="154"/>
<technology name="223"/>
<technology name="224"/>
<technology name="333"/>
<technology name="334"/>
<technology name="473"/>
<technology name="474"/>
<technology name="683"/>
<technology name="684"/>
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
<part name="X1" library="con-phoenix-3.81" deviceset="1705566" device=""/>
<part name="X2" library="con-phoenix-3.81" deviceset="1705566" device=""/>
<part name="X3" library="con-phoenix-3.81" deviceset="1705605" device=""/>
<part name="T1" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="T2" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="T3" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="T4" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="T5" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="T6" library="inductors" deviceset="P0762.*NL" device="" technology="103"/>
<part name="X4" library="con-phoenix-3.81" deviceset="1705605" device=""/>
<part name="X5" library="con-phoenix-3.81" deviceset="1705566" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="-5.08" y1="81.28" x2="15.24" y2="81.28" width="0.1524" layer="90"/>
<wire x1="15.24" y1="81.28" x2="15.24" y2="45.72" width="0.1524" layer="90"/>
<wire x1="15.24" y1="45.72" x2="-5.08" y2="45.72" width="0.1524" layer="90"/>
<wire x1="-5.08" y1="45.72" x2="-5.08" y2="81.28" width="0.1524" layer="90"/>
<wire x1="-5.08" y1="33.02" x2="15.24" y2="33.02" width="0.1524" layer="90"/>
<wire x1="15.24" y1="33.02" x2="15.24" y2="0" width="0.1524" layer="90"/>
<wire x1="15.24" y1="0" x2="-5.08" y2="0" width="0.1524" layer="90"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="33.02" width="0.1524" layer="90"/>
<wire x1="134.62" y1="71.12" x2="152.4" y2="71.12" width="0.1524" layer="90"/>
<wire x1="152.4" y1="71.12" x2="152.4" y2="12.7" width="0.1524" layer="90"/>
<wire x1="152.4" y1="12.7" x2="134.62" y2="12.7" width="0.1524" layer="90"/>
<wire x1="134.62" y1="12.7" x2="134.62" y2="71.12" width="0.1524" layer="90"/>
<text x="134.62" y="76.2" size="3.81" layer="90" ratio="10">Логгер</text>
<text x="-5.08" y="83.82" size="3.81" layer="90" ratio="10">Шкаф 1
Счётчик</text>
<text x="-5.08" y="33.02" size="3.81" layer="90" ratio="10">Шкаф 2
Счётчик</text>
<text x="154.94" y="68.58" size="1.778" layer="90">канал 1</text>
<text x="154.94" y="60.96" size="1.778" layer="90">канал 2</text>
<text x="154.94" y="53.34" size="1.778" layer="90">канал 3</text>
<text x="154.94" y="45.72" size="1.778" layer="90">канал 4</text>
<text x="154.94" y="38.1" size="1.778" layer="90">канал 5</text>
<text x="154.94" y="30.48" size="1.778" layer="90">канал 6</text>
<text x="154.94" y="22.86" size="1.778" layer="90">нейтраль</text>
<text x="-7.62" y="76.2" size="1.778" layer="90">v1</text>
<text x="-7.62" y="68.58" size="1.778" layer="90">v2</text>
<text x="-7.62" y="60.96" size="1.778" layer="90">v3</text>
<text x="-7.62" y="53.34" size="1.778" layer="90">n</text>
<text x="-10.16" y="27.94" size="1.778" layer="90">v1</text>
<text x="-10.16" y="20.32" size="1.778" layer="90">v2</text>
<text x="-10.16" y="12.7" size="1.778" layer="90">v3</text>
<text x="-10.16" y="5.08" size="1.778" layer="90">n</text>
<wire x1="-10.16" y1="-7.62" x2="5.08" y2="-7.62" width="0.1524" layer="90"/>
<wire x1="5.08" y1="-7.62" x2="5.08" y2="-55.88" width="0.1524" layer="90"/>
<wire x1="5.08" y1="-55.88" x2="-10.16" y2="-55.88" width="0.1524" layer="90"/>
<wire x1="-10.16" y1="-55.88" x2="-10.16" y2="-7.62" width="0.1524" layer="90"/>
<wire x1="-10.16" y1="-58.42" x2="5.08" y2="-58.42" width="0.1524" layer="90"/>
<wire x1="5.08" y1="-58.42" x2="5.08" y2="-109.22" width="0.1524" layer="90"/>
<wire x1="5.08" y1="-109.22" x2="-10.16" y2="-109.22" width="0.1524" layer="90"/>
<wire x1="-10.16" y1="-109.22" x2="-10.16" y2="-58.42" width="0.1524" layer="90"/>
<text x="-33.02" y="-33.02" size="1.778" layer="90">Шкаф 1
Трансформаторы</text>
<text x="-33.02" y="-83.82" size="1.778" layer="90">Шкаф 2
Трансформаторы</text>
<wire x1="134.62" y1="-22.86" x2="152.4" y2="-22.86" width="0.1524" layer="90"/>
<wire x1="152.4" y1="-22.86" x2="152.4" y2="-116.84" width="0.1524" layer="90"/>
<wire x1="152.4" y1="-116.84" x2="134.62" y2="-116.84" width="0.1524" layer="90"/>
<wire x1="134.62" y1="-116.84" x2="134.62" y2="-22.86" width="0.1524" layer="90"/>
<text x="134.62" y="-17.78" size="3.81" layer="90" ratio="10">Логгер</text>
</plain>
<instances>
<instance part="X1" gate="-1" x="10.16" y="76.2"/>
<instance part="X1" gate="-2" x="10.16" y="68.58"/>
<instance part="X1" gate="-3" x="10.16" y="60.96"/>
<instance part="X1" gate="-4" x="10.16" y="53.34"/>
<instance part="X2" gate="-1" x="10.16" y="27.94"/>
<instance part="X2" gate="-2" x="10.16" y="20.32"/>
<instance part="X2" gate="-3" x="10.16" y="12.7"/>
<instance part="X2" gate="-4" x="10.16" y="5.08"/>
<instance part="X3" gate="-1" x="137.16" y="15.24" rot="R180"/>
<instance part="X3" gate="-2" x="137.16" y="22.86" rot="R180"/>
<instance part="X3" gate="-3" x="137.16" y="30.48" rot="R180"/>
<instance part="X3" gate="-4" x="137.16" y="38.1" rot="R180"/>
<instance part="X3" gate="-5" x="137.16" y="45.72" rot="R180"/>
<instance part="X3" gate="-6" x="137.16" y="53.34" rot="R180"/>
<instance part="X3" gate="-7" x="137.16" y="60.96" rot="R180"/>
<instance part="X3" gate="-8" x="137.16" y="68.58" rot="R180"/>
<instance part="T1" gate="G$1" x="-2.54" y="-15.24" rot="R90"/>
<instance part="T2" gate="G$1" x="-2.54" y="-33.02" rot="R90"/>
<instance part="T3" gate="G$1" x="-2.54" y="-48.26" rot="R90"/>
<instance part="T4" gate="G$1" x="-2.54" y="-66.04" rot="R90"/>
<instance part="T5" gate="G$1" x="-2.54" y="-83.82" rot="R90"/>
<instance part="T6" gate="G$1" x="-2.54" y="-101.6" rot="R90"/>
<instance part="X4" gate="-1" x="137.16" y="-81.28" rot="R180"/>
<instance part="X4" gate="-2" x="137.16" y="-73.66" rot="R180"/>
<instance part="X4" gate="-3" x="137.16" y="-66.04" rot="R180"/>
<instance part="X4" gate="-4" x="137.16" y="-58.42" rot="R180"/>
<instance part="X4" gate="-5" x="137.16" y="-50.8" rot="R180"/>
<instance part="X4" gate="-6" x="137.16" y="-43.18" rot="R180"/>
<instance part="X4" gate="-7" x="137.16" y="-35.56" rot="R180"/>
<instance part="X4" gate="-8" x="137.16" y="-27.94" rot="R180"/>
<instance part="X5" gate="-1" x="137.16" y="-111.76" rot="R180"/>
<instance part="X5" gate="-2" x="137.16" y="-104.14" rot="R180"/>
<instance part="X5" gate="-3" x="137.16" y="-96.52" rot="R180"/>
<instance part="X5" gate="-4" x="137.16" y="-88.9" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="X1" gate="-1" pin="1A"/>
<wire x1="12.7" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="35.56" y1="76.2" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<pinref part="X3" gate="-8" pin="1A"/>
<wire x1="35.56" y1="68.58" x2="134.62" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="X1" gate="-2" pin="1A"/>
<wire x1="12.7" y1="68.58" x2="33.02" y2="68.58" width="0.1524" layer="91"/>
<wire x1="33.02" y1="68.58" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
<pinref part="X3" gate="-7" pin="1A"/>
<wire x1="33.02" y1="60.96" x2="134.62" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="X1" gate="-3" pin="1A"/>
<wire x1="12.7" y1="60.96" x2="30.48" y2="60.96" width="0.1524" layer="91"/>
<wire x1="30.48" y1="60.96" x2="30.48" y2="53.34" width="0.1524" layer="91"/>
<pinref part="X3" gate="-6" pin="1A"/>
<wire x1="30.48" y1="53.34" x2="134.62" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="X2" gate="-3" pin="1A"/>
<wire x1="12.7" y1="12.7" x2="35.56" y2="12.7" width="0.1524" layer="91"/>
<wire x1="35.56" y1="12.7" x2="35.56" y2="30.48" width="0.1524" layer="91"/>
<pinref part="X3" gate="-3" pin="1A"/>
<wire x1="35.56" y1="30.48" x2="134.62" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="X2" gate="-2" pin="1A"/>
<wire x1="12.7" y1="20.32" x2="33.02" y2="20.32" width="0.1524" layer="91"/>
<wire x1="33.02" y1="20.32" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<pinref part="X3" gate="-4" pin="1A"/>
<wire x1="33.02" y1="38.1" x2="134.62" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="X2" gate="-1" pin="1A"/>
<wire x1="12.7" y1="27.94" x2="30.48" y2="27.94" width="0.1524" layer="91"/>
<wire x1="30.48" y1="27.94" x2="30.48" y2="45.72" width="0.1524" layer="91"/>
<pinref part="X3" gate="-5" pin="1A"/>
<wire x1="30.48" y1="45.72" x2="134.62" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="X1" gate="-4" pin="1A"/>
<wire x1="12.7" y1="53.34" x2="25.4" y2="53.34" width="0.1524" layer="91"/>
<wire x1="25.4" y1="53.34" x2="25.4" y2="50.8" width="0.1524" layer="91"/>
<wire x1="25.4" y1="50.8" x2="132.08" y2="50.8" width="0.1524" layer="91"/>
<wire x1="132.08" y1="50.8" x2="132.08" y2="25.4" width="0.1524" layer="91"/>
<pinref part="X3" gate="-2" pin="1A"/>
<wire x1="132.08" y1="25.4" x2="132.08" y2="22.86" width="0.1524" layer="91"/>
<wire x1="132.08" y1="22.86" x2="134.62" y2="22.86" width="0.1524" layer="91"/>
<pinref part="X2" gate="-4" pin="1A"/>
<wire x1="12.7" y1="5.08" x2="38.1" y2="5.08" width="0.1524" layer="91"/>
<wire x1="38.1" y1="5.08" x2="38.1" y2="25.4" width="0.1524" layer="91"/>
<wire x1="38.1" y1="25.4" x2="132.08" y2="25.4" width="0.1524" layer="91"/>
<junction x="132.08" y="25.4"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-10.16" x2="129.54" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="129.54" y1="-10.16" x2="129.54" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="X4" gate="-8" pin="1A"/>
<wire x1="129.54" y1="-27.94" x2="134.62" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="T1" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-20.32" x2="127" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="127" y1="-20.32" x2="127" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="X4" gate="-7" pin="1A"/>
<wire x1="127" y1="-35.56" x2="134.62" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-27.94" x2="124.46" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="124.46" y1="-27.94" x2="124.46" y2="-43.18" width="0.1524" layer="91"/>
<pinref part="X4" gate="-6" pin="1A"/>
<wire x1="124.46" y1="-43.18" x2="134.62" y2="-43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="T2" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-38.1" x2="121.92" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="121.92" y1="-38.1" x2="121.92" y2="-50.8" width="0.1524" layer="91"/>
<pinref part="X4" gate="-5" pin="1A"/>
<wire x1="121.92" y1="-50.8" x2="134.62" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-43.18" x2="119.38" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="119.38" y1="-43.18" x2="119.38" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="X4" gate="-4" pin="1A"/>
<wire x1="119.38" y1="-58.42" x2="134.62" y2="-58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="T3" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-53.34" x2="116.84" y2="-53.34" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-53.34" x2="116.84" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="X4" gate="-3" pin="1A"/>
<wire x1="116.84" y1="-66.04" x2="134.62" y2="-66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-60.96" x2="114.3" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="114.3" y1="-60.96" x2="114.3" y2="-73.66" width="0.1524" layer="91"/>
<pinref part="X4" gate="-2" pin="1A"/>
<wire x1="114.3" y1="-73.66" x2="134.62" y2="-73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="T4" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-71.12" x2="111.76" y2="-71.12" width="0.1524" layer="91"/>
<wire x1="111.76" y1="-71.12" x2="111.76" y2="-81.28" width="0.1524" layer="91"/>
<pinref part="X4" gate="-1" pin="1A"/>
<wire x1="111.76" y1="-81.28" x2="134.62" y2="-81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="T5" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-78.74" x2="109.22" y2="-78.74" width="0.1524" layer="91"/>
<wire x1="109.22" y1="-78.74" x2="109.22" y2="-88.9" width="0.1524" layer="91"/>
<pinref part="X5" gate="-4" pin="1A"/>
<wire x1="109.22" y1="-88.9" x2="134.62" y2="-88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="T5" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-88.9" x2="106.68" y2="-88.9" width="0.1524" layer="91"/>
<wire x1="106.68" y1="-88.9" x2="106.68" y2="-96.52" width="0.1524" layer="91"/>
<pinref part="X5" gate="-3" pin="1A"/>
<wire x1="106.68" y1="-96.52" x2="134.62" y2="-96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="T6" gate="G$1" pin="2"/>
<wire x1="-2.54" y1="-96.52" x2="104.14" y2="-96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="-96.52" x2="104.14" y2="-104.14" width="0.1524" layer="91"/>
<pinref part="X5" gate="-2" pin="1A"/>
<wire x1="104.14" y1="-104.14" x2="134.62" y2="-104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="T6" gate="G$1" pin="1"/>
<wire x1="-2.54" y1="-106.68" x2="101.6" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="101.6" y1="-106.68" x2="101.6" y2="-111.76" width="0.1524" layer="91"/>
<pinref part="X5" gate="-1" pin="1A"/>
<wire x1="101.6" y1="-111.76" x2="134.62" y2="-111.76" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
