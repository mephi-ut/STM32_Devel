<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="iclk" />
        <signal name="XLXN_7" />
        <signal name="ogt" />
        <signal name="olt" />
        <signal name="XLXN_18(7:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21(7:0)" />
        <signal name="XLXN_26" />
        <signal name="XLXN_30(7:0)" />
        <signal name="INCr" />
        <signal name="DECr" />
        <signal name="INCf" />
        <signal name="DECf" />
        <port polarity="Input" name="iclk" />
        <port polarity="Output" name="ogt" />
        <port polarity="Output" name="olt" />
        <port polarity="Input" name="INCr" />
        <port polarity="Input" name="DECr" />
        <port polarity="Input" name="INCf" />
        <port polarity="Input" name="DECf" />
        <blockdef name="compm8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
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
        <blockdef name="C8_BD_C">
            <timestamp>2018-2-13T17:4:41</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="cb8ce" name="XLXI_2">
            <blockpin signalname="iclk" name="C" />
            <blockpin signalname="XLXN_7" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_18(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="constant" name="XLXI_3">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="comp8" name="XLXI_5">
            <blockpin signalname="XLXN_18(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_30(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_19" name="EQ" />
        </block>
        <block symbolname="compm8" name="XLXI_1">
            <blockpin signalname="XLXN_18(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_21(7:0)" name="B(7:0)" />
            <blockpin signalname="ogt" name="GT" />
            <blockpin signalname="olt" name="LT" />
        </block>
        <block symbolname="C8_BD_C" name="XLXI_8">
            <blockpin signalname="INCr" name="incr" />
            <blockpin signalname="DECr" name="decr" />
            <blockpin signalname="XLXN_26" name="clr" />
            <blockpin signalname="XLXN_21(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="comp8" name="XLXI_9">
            <blockpin signalname="XLXN_21(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_30(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_26" name="EQ" />
        </block>
        <block symbolname="C8_BD_C" name="XLXI_12">
            <blockpin signalname="INCf" name="incr" />
            <blockpin signalname="DECf" name="decr" />
            <blockpin name="clr" />
            <blockpin signalname="XLXN_30(7:0)" name="Q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1680" y="1840" name="XLXI_2" orien="R0" />
        <branch name="iclk">
            <wire x2="1680" y1="1712" y2="1712" x1="1648" />
        </branch>
        <iomarker fontsize="28" x="1648" y="1712" name="iclk" orien="R180" />
        <branch name="XLXN_7">
            <wire x2="1680" y1="1648" y2="1648" x1="1648" />
        </branch>
        <instance x="1504" y="1616" name="XLXI_3" orien="R0">
        </instance>
        <branch name="ogt">
            <wire x2="3680" y1="1648" y2="1648" x1="3648" />
            <wire x2="3696" y1="1616" y2="1616" x1="3680" />
            <wire x2="3680" y1="1616" y2="1648" x1="3680" />
        </branch>
        <branch name="olt">
            <wire x2="3760" y1="1712" y2="1712" x1="3648" />
            <wire x2="3760" y1="1712" y2="1728" x1="3760" />
            <wire x2="3776" y1="1728" y2="1728" x1="3760" />
        </branch>
        <instance x="3264" y="1904" name="XLXI_1" orien="R0" />
        <iomarker fontsize="28" x="3696" y="1616" name="ogt" orien="R0" />
        <iomarker fontsize="28" x="3776" y="1728" name="olt" orien="R0" />
        <instance x="2560" y="1776" name="XLXI_5" orien="R0" />
        <branch name="XLXN_18(7:0)">
            <wire x2="2304" y1="1584" y2="1584" x1="2064" />
            <wire x2="3168" y1="1296" y2="1296" x1="2304" />
            <wire x2="3168" y1="1296" y2="1584" x1="3168" />
            <wire x2="3264" y1="1584" y2="1584" x1="3168" />
            <wire x2="2304" y1="1296" y2="1456" x1="2304" />
            <wire x2="2304" y1="1456" y2="1584" x1="2304" />
            <wire x2="2560" y1="1456" y2="1456" x1="2304" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1680" y1="1808" y2="1856" x1="1680" />
            <wire x2="2992" y1="1856" y2="1856" x1="1680" />
            <wire x2="2992" y1="1552" y2="1552" x1="2944" />
            <wire x2="2992" y1="1552" y2="1856" x1="2992" />
        </branch>
        <instance x="2320" y="2512" name="XLXI_9" orien="R0" />
        <branch name="XLXN_21(7:0)">
            <wire x2="2144" y1="2144" y2="2144" x1="2112" />
            <wire x2="2144" y1="2048" y2="2144" x1="2144" />
            <wire x2="2192" y1="2048" y2="2048" x1="2144" />
            <wire x2="2192" y1="2048" y2="2192" x1="2192" />
            <wire x2="2320" y1="2192" y2="2192" x1="2192" />
            <wire x2="2192" y1="1936" y2="2048" x1="2192" />
            <wire x2="3088" y1="1936" y2="1936" x1="2192" />
            <wire x2="3088" y1="1776" y2="1936" x1="3088" />
            <wire x2="3264" y1="1776" y2="1776" x1="3088" />
        </branch>
        <instance x="1728" y="2304" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_26">
            <wire x2="1728" y1="2272" y2="2272" x1="1648" />
            <wire x2="1648" y1="2272" y2="2512" x1="1648" />
            <wire x2="2720" y1="2512" y2="2512" x1="1648" />
            <wire x2="2720" y1="2288" y2="2288" x1="2704" />
            <wire x2="2720" y1="2288" y2="2512" x1="2720" />
        </branch>
        <branch name="XLXN_30(7:0)">
            <wire x2="1488" y1="1952" y2="1952" x1="1328" />
            <wire x2="2144" y1="1952" y2="1952" x1="1488" />
            <wire x2="1488" y1="1952" y2="2384" x1="1488" />
            <wire x2="2320" y1="2384" y2="2384" x1="1488" />
            <wire x2="2560" y1="1648" y2="1648" x1="2144" />
            <wire x2="2144" y1="1648" y2="1952" x1="2144" />
        </branch>
        <branch name="INCr">
            <wire x2="1728" y1="2144" y2="2144" x1="1696" />
        </branch>
        <branch name="DECr">
            <wire x2="1728" y1="2208" y2="2208" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1696" y="2144" name="INCr" orien="R180" />
        <iomarker fontsize="28" x="1696" y="2208" name="DECr" orien="R180" />
        <instance x="944" y="2112" name="XLXI_12" orien="R0">
        </instance>
        <branch name="INCf">
            <wire x2="928" y1="1952" y2="1952" x1="912" />
            <wire x2="944" y1="1952" y2="1952" x1="928" />
        </branch>
        <branch name="DECf">
            <wire x2="928" y1="2016" y2="2016" x1="912" />
            <wire x2="944" y1="2016" y2="2016" x1="928" />
        </branch>
        <iomarker fontsize="28" x="912" y="1952" name="INCf" orien="R180" />
        <iomarker fontsize="28" x="912" y="2016" name="DECf" orien="R180" />
    </sheet>
</drawing>