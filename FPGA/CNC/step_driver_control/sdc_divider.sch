<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_12" />
        <signal name="SYS_CLK" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="RST" />
        <signal name="DIV_EN" />
        <signal name="MAIN_TICK" />
        <signal name="SET_DIV_DATA_div2" />
        <signal name="SET_DIV_EN" />
        <signal name="SET_DIV_CLK" />
        <port polarity="Input" name="SYS_CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="DIV_EN" />
        <port polarity="Output" name="MAIN_TICK" />
        <port polarity="Input" name="SET_DIV_DATA_div2" />
        <port polarity="Input" name="SET_DIV_EN" />
        <port polarity="Input" name="SET_DIV_CLK" />
        <blockdef name="cb8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="sr8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="sr8ce" name="SET_SHIFT">
            <blockpin signalname="SET_DIV_CLK" name="C" />
            <blockpin signalname="SET_DIV_EN" name="CE" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="SET_DIV_DATA_div2" name="SLI" />
            <blockpin signalname="XLXN_1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="comp8" name="COMPARATOR">
            <blockpin signalname="XLXN_1(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_23" name="EQ" />
        </block>
        <block symbolname="ftc" name="XLXI_7">
            <blockpin signalname="XLXN_23" name="C" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_25" name="T" />
            <blockpin signalname="MAIN_TICK" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_16">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="RST" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="cb8ce" name="DIV_COUNTER">
            <blockpin signalname="SYS_CLK" name="C" />
            <blockpin signalname="DIV_EN" name="CE" />
            <blockpin signalname="XLXN_8" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_2(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="SYS_CLK" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_24">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_25" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(7:0)">
            <wire x2="1488" y1="1152" y2="1152" x1="1392" />
            <wire x2="1488" y1="1152" y2="1248" x1="1488" />
            <wire x2="1584" y1="1248" y2="1248" x1="1488" />
        </branch>
        <branch name="XLXN_2(7:0)">
            <wire x2="1488" y1="1648" y2="1648" x1="1408" />
            <wire x2="1488" y1="1440" y2="1648" x1="1488" />
            <wire x2="1584" y1="1440" y2="1440" x1="1488" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1024" y1="1872" y2="1872" x1="992" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="736" y1="1904" y2="1904" x1="672" />
        </branch>
        <instance x="1008" y="1408" name="SET_SHIFT" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="1584" y="1568" name="COMPARATOR" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-64" type="instance" />
        </instance>
        <instance x="2240" y="1600" name="XLXI_7" orien="R0" />
        <instance x="736" y="1968" name="XLXI_16" orien="R0" />
        <instance x="1024" y="1904" name="DIV_COUNTER" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="416" y="2000" name="XLXI_17" orien="R0" />
        <branch name="SYS_CLK">
            <wire x2="400" y1="1776" y2="1776" x1="336" />
            <wire x2="1024" y1="1776" y2="1776" x1="400" />
            <wire x2="400" y1="1776" y2="1872" x1="400" />
            <wire x2="416" y1="1872" y2="1872" x1="400" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="416" y1="1936" y2="1936" x1="352" />
            <wire x2="352" y1="1936" y2="2032" x1="352" />
            <wire x2="2128" y1="2032" y2="2032" x1="352" />
            <wire x2="2096" y1="1344" y2="1344" x1="1968" />
            <wire x2="2096" y1="1344" y2="1472" x1="2096" />
            <wire x2="2128" y1="1472" y2="1472" x1="2096" />
            <wire x2="2240" y1="1472" y2="1472" x1="2128" />
            <wire x2="2128" y1="1472" y2="2032" x1="2128" />
        </branch>
        <instance x="2016" y="1184" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_25">
            <wire x2="2192" y1="1216" y2="1216" x1="2160" />
            <wire x2="2192" y1="1216" y2="1344" x1="2192" />
            <wire x2="2240" y1="1344" y2="1344" x1="2192" />
        </branch>
        <branch name="RST">
            <wire x2="624" y1="1712" y2="1712" x1="464" />
            <wire x2="624" y1="1712" y2="1840" x1="624" />
            <wire x2="672" y1="1840" y2="1840" x1="624" />
            <wire x2="736" y1="1840" y2="1840" x1="672" />
            <wire x2="672" y1="1840" y2="2064" x1="672" />
            <wire x2="2240" y1="2064" y2="2064" x1="672" />
            <wire x2="976" y1="1376" y2="1376" x1="624" />
            <wire x2="1008" y1="1376" y2="1376" x1="976" />
            <wire x2="624" y1="1376" y2="1712" x1="624" />
            <wire x2="2240" y1="1568" y2="2064" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="464" y="1712" name="RST" orien="R180" />
        <branch name="DIV_EN">
            <wire x2="1024" y1="1712" y2="1712" x1="992" />
        </branch>
        <iomarker fontsize="28" x="992" y="1712" name="DIV_EN" orien="R180" />
        <branch name="MAIN_TICK">
            <wire x2="2656" y1="1344" y2="1344" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2656" y="1344" name="MAIN_TICK" orien="R0" />
        <branch name="SET_DIV_DATA_div2">
            <wire x2="1008" y1="1088" y2="1088" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1088" name="SET_DIV_DATA_div2" orien="R180" />
        <branch name="SET_DIV_EN">
            <wire x2="1008" y1="1216" y2="1216" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1216" name="SET_DIV_EN" orien="R180" />
        <branch name="SET_DIV_CLK">
            <wire x2="1008" y1="1280" y2="1280" x1="976" />
        </branch>
        <iomarker fontsize="28" x="976" y="1280" name="SET_DIV_CLK" orien="R180" />
        <iomarker fontsize="28" x="336" y="1776" name="SYS_CLK" orien="R180" />
    </sheet>
</drawing>