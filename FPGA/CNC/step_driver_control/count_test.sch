<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="TC" />
        <signal name="CEO" />
        <signal name="CLR" />
        <signal name="CE" />
        <signal name="CLK" />
        <signal name="O_0" />
        <signal name="O_1" />
        <signal name="O_2" />
        <signal name="O_3" />
        <port polarity="Output" name="TC" />
        <port polarity="Output" name="CEO" />
        <port polarity="Input" name="CLR" />
        <port polarity="Input" name="CE" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="O_0" />
        <port polarity="Output" name="O_1" />
        <port polarity="Output" name="O_2" />
        <port polarity="Output" name="O_3" />
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <block symbolname="cb2ce" name="XLXI_1">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CEO" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="O_2" name="Q0" />
            <blockpin signalname="O_3" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb2ce" name="XLXI_2">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="CE" name="CE" />
            <blockpin signalname="CLR" name="CLR" />
            <blockpin signalname="CEO" name="CEO" />
            <blockpin signalname="O_0" name="Q0" />
            <blockpin signalname="O_1" name="Q1" />
            <blockpin signalname="TC" name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="1488" name="XLXI_1" orien="R0" />
        <instance x="928" y="1952" name="XLXI_2" orien="R0" />
        <branch name="CEO">
            <wire x2="864" y1="1040" y2="1296" x1="864" />
            <wire x2="912" y1="1296" y2="1296" x1="864" />
            <wire x2="1360" y1="1040" y2="1040" x1="864" />
            <wire x2="1360" y1="1040" y2="1760" x1="1360" />
            <wire x2="1504" y1="1040" y2="1040" x1="1360" />
            <wire x2="1360" y1="1760" y2="1760" x1="1312" />
        </branch>
        <branch name="CLR">
            <wire x2="912" y1="1920" y2="1920" x1="800" />
            <wire x2="928" y1="1920" y2="1920" x1="912" />
            <wire x2="912" y1="1456" y2="1920" x1="912" />
        </branch>
        <branch name="CE">
            <wire x2="928" y1="1760" y2="1760" x1="752" />
        </branch>
        <branch name="CLK">
            <wire x2="880" y1="1824" y2="1824" x1="736" />
            <wire x2="928" y1="1824" y2="1824" x1="880" />
            <wire x2="912" y1="1360" y2="1360" x1="880" />
            <wire x2="880" y1="1360" y2="1824" x1="880" />
        </branch>
        <iomarker fontsize="28" x="1504" y="1040" name="CEO" orien="R0" />
        <branch name="O_0">
            <wire x2="1552" y1="1632" y2="1632" x1="1312" />
        </branch>
        <branch name="O_1">
            <wire x2="1552" y1="1696" y2="1696" x1="1312" />
        </branch>
        <branch name="O_2">
            <wire x2="1568" y1="1168" y2="1168" x1="1296" />
        </branch>
        <branch name="O_3">
            <wire x2="1568" y1="1232" y2="1232" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1568" y="1168" name="O_2" orien="R0" />
        <iomarker fontsize="28" x="1568" y="1232" name="O_3" orien="R0" />
        <iomarker fontsize="28" x="1376" y="992" name="TC" orien="R270" />
        <iomarker fontsize="28" x="1552" y="1632" name="O_0" orien="R0" />
        <iomarker fontsize="28" x="1552" y="1696" name="O_1" orien="R0" />
        <iomarker fontsize="28" x="752" y="1760" name="CE" orien="R180" />
        <iomarker fontsize="28" x="736" y="1824" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="800" y="1920" name="CLR" orien="R180" />
        <branch name="TC">
            <wire x2="1376" y1="1824" y2="1824" x1="1312" />
            <wire x2="1376" y1="992" y2="1824" x1="1376" />
        </branch>
    </sheet>
</drawing>