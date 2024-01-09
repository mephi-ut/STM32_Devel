<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="up" />
        <signal name="load" />
        <signal name="enable" />
        <signal name="clk" />
        <signal name="clr" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="up" />
        <port polarity="Input" name="load" />
        <port polarity="Input" name="enable" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="XLXN_10" />
        <port polarity="Output" name="XLXN_11" />
        <port polarity="Output" name="XLXN_12" />
        <blockdef name="cb4cled">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-704" height="640" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-512" y2="-512" x1="384" />
            <line x2="320" y1="-576" y2="-576" x1="384" />
            <line x2="320" y1="-640" y2="-640" x1="384" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-640" y2="-640" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="pulldown">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-160" y2="-128" x1="64" />
            <line x2="60" y1="0" y2="0" x1="68" />
            <line x2="52" y1="-16" y2="-16" x1="76" />
            <line x2="40" y1="-32" y2="-32" x1="88" />
            <line x2="64" y1="-108" y2="-128" x1="64" />
            <line x2="64" y1="-104" y2="-108" x1="80" />
            <line x2="80" y1="-88" y2="-104" x1="48" />
            <line x2="48" y1="-72" y2="-88" x1="80" />
            <line x2="80" y1="-56" y2="-72" x1="48" />
            <line x2="48" y1="-48" y2="-56" x1="64" />
            <line x2="64" y1="-32" y2="-48" x1="64" />
        </blockdef>
        <block symbolname="cb4cled" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="enable" name="CE" />
            <blockpin signalname="clr" name="CLR" />
            <blockpin signalname="XLXN_2" name="D0" />
            <blockpin signalname="XLXN_2" name="D1" />
            <blockpin signalname="XLXN_2" name="D2" />
            <blockpin signalname="XLXN_2" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="up" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_10" name="Q0" />
            <blockpin signalname="XLXN_11" name="Q1" />
            <blockpin signalname="XLXN_12" name="Q2" />
            <blockpin signalname="clr" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="pulldown" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="928" y="1344" name="XLXI_1" orien="R0" />
        <instance x="576" y="1040" name="XLXI_2" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="640" y1="704" y2="880" x1="640" />
            <wire x2="848" y1="704" y2="704" x1="640" />
            <wire x2="928" y1="704" y2="704" x1="848" />
            <wire x2="848" y1="704" y2="768" x1="848" />
            <wire x2="928" y1="768" y2="768" x1="848" />
            <wire x2="848" y1="768" y2="832" x1="848" />
            <wire x2="928" y1="832" y2="832" x1="848" />
            <wire x2="848" y1="832" y2="896" x1="848" />
            <wire x2="928" y1="896" y2="896" x1="848" />
        </branch>
        <branch name="up">
            <wire x2="928" y1="1024" y2="1024" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1024" name="up" orien="R180" />
        <branch name="load">
            <wire x2="928" y1="1088" y2="1088" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1088" name="load" orien="R180" />
        <branch name="enable">
            <wire x2="928" y1="1152" y2="1152" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1152" name="enable" orien="R180" />
        <branch name="clk">
            <wire x2="928" y1="1216" y2="1216" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="1216" name="clk" orien="R180" />
        <branch name="clr">
            <wire x2="928" y1="1312" y2="1312" x1="896" />
            <wire x2="896" y1="1312" y2="1344" x1="896" />
            <wire x2="1504" y1="1344" y2="1344" x1="896" />
            <wire x2="1344" y1="896" y2="896" x1="1312" />
            <wire x2="1504" y1="896" y2="896" x1="1344" />
            <wire x2="1504" y1="896" y2="1344" x1="1504" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1344" y1="704" y2="704" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="704" name="XLXN_10" orien="R0" />
        <branch name="XLXN_11">
            <wire x2="1344" y1="768" y2="768" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="768" name="XLXN_11" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="1344" y1="832" y2="832" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="832" name="XLXN_12" orien="R0" />
    </sheet>
</drawing>