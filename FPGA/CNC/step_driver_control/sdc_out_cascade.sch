<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_187" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="XLXN_398" />
        <signal name="XLXN_195" />
        <signal name="B1" />
        <signal name="XLXN_401" />
        <signal name="XLXN_202" />
        <signal name="XLXN_403" />
        <signal name="XLXN_208" />
        <signal name="XLXN_209" />
        <signal name="B2" />
        <signal name="XLXN_407" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215" />
        <signal name="XLXN_410" />
        <signal name="XLXN_216" />
        <signal name="XLXN_412" />
        <signal name="load" />
        <signal name="clock" />
        <signal name="XLXN_322" />
        <signal name="XLXN_327" />
        <signal name="XLXN_316" />
        <signal name="XLXN_320" />
        <signal name="enbl" />
        <signal name="L_INIT" />
        <signal name="XLXN_312" />
        <signal name="XLXN_336" />
        <signal name="XLXN_378" />
        <signal name="XLXN_424" />
        <signal name="XLXN_380" />
        <signal name="up" />
        <signal name="XLXN_427" />
        <signal name="XLXN_428" />
        <signal name="XLXN_389" />
        <signal name="clear" />
        <signal name="XLXN_391" />
        <signal name="XLXN_432" />
        <signal name="XLXN_394" />
        <signal name="XLXN_315" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B2" />
        <port polarity="Input" name="clock" />
        <port polarity="Input" name="enbl" />
        <port polarity="Input" name="L_INIT" />
        <port polarity="Input" name="up" />
        <port polarity="Input" name="clear" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
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
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <block symbolname="cb4cled" name="XLXI_1">
            <blockpin signalname="clock" name="C" />
            <blockpin signalname="XLXN_322" name="CE" />
            <blockpin signalname="XLXN_389" name="CLR" />
            <blockpin signalname="XLXN_312" name="D0" />
            <blockpin signalname="XLXN_312" name="D1" />
            <blockpin signalname="XLXN_312" name="D2" />
            <blockpin signalname="XLXN_312" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="up" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_216" name="Q0" />
            <blockpin signalname="XLXN_215" name="Q1" />
            <blockpin signalname="XLXN_214" name="Q2" />
            <blockpin signalname="XLXN_394" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="nand2" name="NAND_2_1">
            <blockpin signalname="XLXN_215" name="I0" />
            <blockpin signalname="XLXN_216" name="I1" />
            <blockpin signalname="XLXN_187" name="O" />
        </block>
        <block symbolname="inv" name="INV_3">
            <blockpin signalname="XLXN_214" name="I" />
            <blockpin signalname="XLXN_202" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_92">
            <blockpin signalname="XLXN_202" name="I0" />
            <blockpin signalname="XLXN_187" name="I1" />
            <blockpin signalname="A1" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_93">
            <blockpin signalname="XLXN_214" name="I0" />
            <blockpin signalname="XLXN_187" name="I1" />
            <blockpin signalname="A2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_94">
            <blockpin signalname="XLXN_215" name="I0" />
            <blockpin signalname="XLXN_214" name="I1" />
            <blockpin signalname="XLXN_378" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_97">
            <blockpin signalname="XLXN_195" name="I0" />
            <blockpin signalname="XLXN_202" name="I1" />
            <blockpin signalname="XLXN_380" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_95">
            <blockpin signalname="XLXN_380" name="I0" />
            <blockpin signalname="XLXN_378" name="I1" />
            <blockpin signalname="B1" name="O" />
        </block>
        <block symbolname="nor2" name="NOR_2_1">
            <blockpin signalname="XLXN_216" name="I0" />
            <blockpin signalname="XLXN_215" name="I1" />
            <blockpin signalname="XLXN_195" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_99">
            <blockpin signalname="XLXN_209" name="I0" />
            <blockpin signalname="XLXN_208" name="I1" />
            <blockpin signalname="B2" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_100">
            <blockpin signalname="XLXN_195" name="I0" />
            <blockpin signalname="XLXN_214" name="I1" />
            <blockpin signalname="XLXN_209" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_98">
            <blockpin signalname="XLXN_215" name="I0" />
            <blockpin signalname="XLXN_202" name="I1" />
            <blockpin signalname="XLXN_208" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_131">
            <blockpin signalname="enbl" name="I0" />
            <blockpin signalname="XLXN_320" name="I1" />
            <blockpin signalname="XLXN_322" name="O" />
        </block>
        <block symbolname="and2" name="LOW">
            <blockpin signalname="XLXN_394" name="I0" />
            <blockpin signalname="XLXN_327" name="I1" />
            <blockpin signalname="XLXN_336" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_135">
            <blockpin signalname="up" name="I" />
            <blockpin signalname="XLXN_327" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_128">
            <blockpin signalname="XLXN_336" name="D0" />
            <blockpin signalname="XLXN_315" name="D1" />
            <blockpin signalname="L_INIT" name="S0" />
            <blockpin signalname="XLXN_312" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_123">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_315" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_129">
            <blockpin signalname="XLXN_315" name="D0" />
            <blockpin signalname="XLXN_316" name="D1" />
            <blockpin signalname="L_INIT" name="S0" />
            <blockpin signalname="load" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_132">
            <blockpin signalname="load" name="I" />
            <blockpin signalname="XLXN_320" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_130">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_316" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_169">
            <blockpin signalname="clear" name="I0" />
            <blockpin signalname="XLXN_391" name="I1" />
            <blockpin signalname="XLXN_389" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_170">
            <blockpin signalname="XLXN_394" name="I0" />
            <blockpin signalname="up" name="I1" />
            <blockpin signalname="XLXN_391" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1936" y="1936" name="XLXI_1" orien="R0" />
        <instance x="2544" y="1248" name="NAND_2_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="2544" y="1344" name="INV_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="2944" y="1312" name="XLXI_92" orien="R0" />
        <branch name="XLXN_187">
            <wire x2="2864" y1="1152" y2="1152" x1="2800" />
            <wire x2="2864" y1="1152" y2="1184" x1="2864" />
            <wire x2="2944" y1="1184" y2="1184" x1="2864" />
            <wire x2="2864" y1="1184" y2="1344" x1="2864" />
            <wire x2="2944" y1="1344" y2="1344" x1="2864" />
        </branch>
        <branch name="A1">
            <wire x2="3232" y1="1216" y2="1216" x1="3200" />
        </branch>
        <instance x="2944" y="1472" name="XLXI_93" orien="R0" />
        <branch name="A2">
            <wire x2="3232" y1="1376" y2="1376" x1="3200" />
        </branch>
        <instance x="2464" y="1632" name="XLXI_94" orien="R0" />
        <instance x="2784" y="1792" name="XLXI_97" orien="R0" />
        <instance x="3104" y="1632" name="XLXI_95" orien="R0" />
        <branch name="XLXN_195">
            <wire x2="2432" y1="1824" y2="2048" x1="2432" />
            <wire x2="2544" y1="2048" y2="2048" x1="2432" />
            <wire x2="2768" y1="1824" y2="1824" x1="2432" />
            <wire x2="2768" y1="1712" y2="1712" x1="2688" />
            <wire x2="2768" y1="1712" y2="1728" x1="2768" />
            <wire x2="2784" y1="1728" y2="1728" x1="2768" />
            <wire x2="2768" y1="1728" y2="1824" x1="2768" />
        </branch>
        <instance x="2432" y="1808" name="NOR_2_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="B1">
            <wire x2="3392" y1="1536" y2="1536" x1="3360" />
        </branch>
        <instance x="2864" y="1952" name="XLXI_99" orien="R0" />
        <instance x="2544" y="2112" name="XLXI_100" orien="R0" />
        <instance x="2464" y="1984" name="XLXI_98" orien="R0" />
        <branch name="XLXN_202">
            <wire x2="2384" y1="1600" y2="1856" x1="2384" />
            <wire x2="2464" y1="1856" y2="1856" x1="2384" />
            <wire x2="2720" y1="1600" y2="1600" x1="2384" />
            <wire x2="2720" y1="1600" y2="1664" x1="2720" />
            <wire x2="2784" y1="1664" y2="1664" x1="2720" />
            <wire x2="2832" y1="1600" y2="1600" x1="2720" />
            <wire x2="2832" y1="1312" y2="1312" x1="2768" />
            <wire x2="2832" y1="1312" y2="1600" x1="2832" />
            <wire x2="2832" y1="1248" y2="1312" x1="2832" />
            <wire x2="2944" y1="1248" y2="1248" x1="2832" />
        </branch>
        <branch name="XLXN_208">
            <wire x2="2800" y1="1888" y2="1888" x1="2720" />
            <wire x2="2864" y1="1824" y2="1824" x1="2800" />
            <wire x2="2800" y1="1824" y2="1888" x1="2800" />
        </branch>
        <branch name="XLXN_209">
            <wire x2="2832" y1="2016" y2="2016" x1="2800" />
            <wire x2="2832" y1="1888" y2="2016" x1="2832" />
            <wire x2="2864" y1="1888" y2="1888" x1="2832" />
        </branch>
        <branch name="B2">
            <wire x2="3152" y1="1856" y2="1856" x1="3120" />
        </branch>
        <branch name="XLXN_214">
            <wire x2="2368" y1="1424" y2="1424" x1="2320" />
            <wire x2="2432" y1="1424" y2="1424" x1="2368" />
            <wire x2="2432" y1="1424" y2="1504" x1="2432" />
            <wire x2="2464" y1="1504" y2="1504" x1="2432" />
            <wire x2="2368" y1="1424" y2="1984" x1="2368" />
            <wire x2="2544" y1="1984" y2="1984" x1="2368" />
            <wire x2="2544" y1="1312" y2="1312" x1="2432" />
            <wire x2="2432" y1="1312" y2="1408" x1="2432" />
            <wire x2="2432" y1="1408" y2="1424" x1="2432" />
            <wire x2="2944" y1="1408" y2="1408" x1="2432" />
        </branch>
        <branch name="XLXN_215">
            <wire x2="2416" y1="1360" y2="1360" x1="2320" />
            <wire x2="2416" y1="1360" y2="1568" x1="2416" />
            <wire x2="2464" y1="1568" y2="1568" x1="2416" />
            <wire x2="2416" y1="1568" y2="1680" x1="2416" />
            <wire x2="2432" y1="1680" y2="1680" x1="2416" />
            <wire x2="2416" y1="1680" y2="1920" x1="2416" />
            <wire x2="2464" y1="1920" y2="1920" x1="2416" />
            <wire x2="2416" y1="1184" y2="1360" x1="2416" />
            <wire x2="2544" y1="1184" y2="1184" x1="2416" />
        </branch>
        <branch name="XLXN_216">
            <wire x2="2400" y1="1296" y2="1296" x1="2320" />
            <wire x2="2400" y1="1296" y2="1744" x1="2400" />
            <wire x2="2432" y1="1744" y2="1744" x1="2400" />
            <wire x2="2544" y1="1120" y2="1120" x1="2400" />
            <wire x2="2400" y1="1120" y2="1296" x1="2400" />
        </branch>
        <branch name="load">
            <wire x2="1568" y1="1776" y2="1776" x1="1376" />
            <wire x2="1568" y1="1568" y2="1568" x1="1520" />
            <wire x2="1568" y1="1568" y2="1680" x1="1568" />
            <wire x2="1568" y1="1680" y2="1776" x1="1568" />
            <wire x2="1936" y1="1680" y2="1680" x1="1568" />
        </branch>
        <branch name="clock">
            <wire x2="1936" y1="1808" y2="1808" x1="1904" />
        </branch>
        <instance x="1328" y="2000" name="XLXI_131" orien="R0" />
        <branch name="XLXN_322">
            <wire x2="1600" y1="1904" y2="1904" x1="1584" />
            <wire x2="1600" y1="1744" y2="1904" x1="1600" />
            <wire x2="1936" y1="1744" y2="1744" x1="1600" />
        </branch>
        <instance x="2032" y="896" name="LOW" orien="R180">
            <attrtext style="alignment:RIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-144" type="instance" />
        </instance>
        <instance x="1808" y="1152" name="XLXI_135" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="XLXN_327">
            <wire x2="2048" y1="1024" y2="1024" x1="2032" />
            <wire x2="2048" y1="1024" y2="1120" x1="2048" />
            <wire x2="2048" y1="1120" y2="1120" x1="2032" />
        </branch>
        <instance x="1280" y="1472" name="XLXI_128" orien="R0" />
        <instance x="1008" y="1344" name="XLXI_123" orien="R0">
        </instance>
        <instance x="1200" y="1696" name="XLXI_129" orien="R0" />
        <branch name="XLXN_316">
            <wire x2="1200" y1="1600" y2="1600" x1="1152" />
        </branch>
        <instance x="1376" y="1744" name="XLXI_132" orien="R180">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="XLXN_320">
            <wire x2="1120" y1="1776" y2="1872" x1="1120" />
            <wire x2="1328" y1="1872" y2="1872" x1="1120" />
            <wire x2="1152" y1="1776" y2="1776" x1="1120" />
        </branch>
        <branch name="enbl">
            <wire x2="1328" y1="1936" y2="1936" x1="1104" />
        </branch>
        <instance x="1008" y="1568" name="XLXI_130" orien="R0">
        </instance>
        <branch name="L_INIT">
            <wire x2="1184" y1="1440" y2="1440" x1="1120" />
            <wire x2="1184" y1="1440" y2="1664" x1="1184" />
            <wire x2="1200" y1="1664" y2="1664" x1="1184" />
            <wire x2="1280" y1="1440" y2="1440" x1="1184" />
        </branch>
        <branch name="XLXN_312">
            <wire x2="1664" y1="1344" y2="1344" x1="1600" />
            <wire x2="1664" y1="1296" y2="1344" x1="1664" />
            <wire x2="1888" y1="1296" y2="1296" x1="1664" />
            <wire x2="1936" y1="1296" y2="1296" x1="1888" />
            <wire x2="1888" y1="1296" y2="1360" x1="1888" />
            <wire x2="1936" y1="1360" y2="1360" x1="1888" />
            <wire x2="1888" y1="1360" y2="1424" x1="1888" />
            <wire x2="1936" y1="1424" y2="1424" x1="1888" />
            <wire x2="1888" y1="1424" y2="1488" x1="1888" />
            <wire x2="1936" y1="1488" y2="1488" x1="1888" />
        </branch>
        <branch name="XLXN_336">
            <wire x2="1200" y1="992" y2="1312" x1="1200" />
            <wire x2="1280" y1="1312" y2="1312" x1="1200" />
            <wire x2="1776" y1="992" y2="992" x1="1200" />
        </branch>
        <branch name="XLXN_378">
            <wire x2="2912" y1="1536" y2="1536" x1="2720" />
            <wire x2="2912" y1="1504" y2="1536" x1="2912" />
            <wire x2="3104" y1="1504" y2="1504" x1="2912" />
        </branch>
        <branch name="XLXN_380">
            <wire x2="3056" y1="1696" y2="1696" x1="3040" />
            <wire x2="3104" y1="1568" y2="1568" x1="3056" />
            <wire x2="3056" y1="1568" y2="1696" x1="3056" />
        </branch>
        <branch name="up">
            <wire x2="1136" y1="2000" y2="2064" x1="1136" />
            <wire x2="1152" y1="2064" y2="2064" x1="1136" />
            <wire x2="1728" y1="2000" y2="2000" x1="1136" />
            <wire x2="1824" y1="1616" y2="1616" x1="1696" />
            <wire x2="1824" y1="1616" y2="1760" x1="1824" />
            <wire x2="1936" y1="1616" y2="1616" x1="1824" />
            <wire x2="1808" y1="1120" y2="1120" x1="1728" />
            <wire x2="1728" y1="1120" y2="1216" x1="1728" />
            <wire x2="1824" y1="1216" y2="1216" x1="1728" />
            <wire x2="1824" y1="1216" y2="1616" x1="1824" />
            <wire x2="1728" y1="1760" y2="2000" x1="1728" />
            <wire x2="1824" y1="1760" y2="1760" x1="1728" />
        </branch>
        <instance x="1696" y="2176" name="XLXI_169" orien="R0" />
        <branch name="XLXN_389">
            <wire x2="1936" y1="1904" y2="1984" x1="1936" />
            <wire x2="2016" y1="1984" y2="1984" x1="1936" />
            <wire x2="2016" y1="1984" y2="2080" x1="2016" />
            <wire x2="2016" y1="2080" y2="2080" x1="1952" />
        </branch>
        <branch name="clear">
            <wire x2="1696" y1="2112" y2="2112" x1="1664" />
        </branch>
        <instance x="1152" y="2192" name="XLXI_170" orien="R0" />
        <branch name="XLXN_391">
            <wire x2="1536" y1="2096" y2="2096" x1="1408" />
            <wire x2="1536" y1="2048" y2="2096" x1="1536" />
            <wire x2="1696" y1="2048" y2="2048" x1="1536" />
        </branch>
        <branch name="XLXN_394">
            <wire x2="1152" y1="2128" y2="2128" x1="1072" />
            <wire x2="1072" y1="2128" y2="2224" x1="1072" />
            <wire x2="2352" y1="2224" y2="2224" x1="1072" />
            <wire x2="2352" y1="960" y2="960" x1="2032" />
            <wire x2="2352" y1="960" y2="1488" x1="2352" />
            <wire x2="2352" y1="1488" y2="2224" x1="2352" />
            <wire x2="2352" y1="1488" y2="1488" x1="2320" />
        </branch>
        <branch name="XLXN_315">
            <wire x2="1168" y1="1376" y2="1376" x1="1152" />
            <wire x2="1280" y1="1376" y2="1376" x1="1168" />
            <wire x2="1168" y1="1376" y2="1536" x1="1168" />
            <wire x2="1200" y1="1536" y2="1536" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="3232" y="1216" name="A1" orien="R0" />
        <iomarker fontsize="28" x="3232" y="1376" name="A2" orien="R0" />
        <iomarker fontsize="28" x="3392" y="1536" name="B1" orien="R0" />
        <iomarker fontsize="28" x="3152" y="1856" name="B2" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1808" name="clock" orien="R180" />
        <iomarker fontsize="28" x="1104" y="1936" name="enbl" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1440" name="L_INIT" orien="R180" />
        <iomarker fontsize="28" x="1696" y="1616" name="up" orien="R180" />
        <iomarker fontsize="28" x="1664" y="2112" name="clear" orien="R180" />
    </sheet>
</drawing>