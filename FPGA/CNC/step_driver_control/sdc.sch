<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_312" />
        <signal name="XLXN_187" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="XLXN_195" />
        <signal name="B1" />
        <signal name="XLXN_202" />
        <signal name="XLXN_208" />
        <signal name="XLXN_209" />
        <signal name="B2" />
        <signal name="XLXN_214" />
        <signal name="XLXN_215" />
        <signal name="XLXN_216" />
        <signal name="load" />
        <signal name="MAIN_TICK" />
        <signal name="XLXN_322" />
        <signal name="XLXN_327" />
        <signal name="XLXN_316" />
        <signal name="XLXN_320" />
        <signal name="ENBL" />
        <signal name="L_INIT" />
        <signal name="XLXN_336" />
        <signal name="XLXN_378" />
        <signal name="XLXN_380" />
        <signal name="IS_UP" />
        <signal name="XLXN_389" />
        <signal name="RST" />
        <signal name="XLXN_391" />
        <signal name="XLXN_394" />
        <signal name="XLXN_315" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B2" />
        <port polarity="Input" name="MAIN_TICK" />
        <port polarity="Input" name="ENBL" />
        <port polarity="Input" name="L_INIT" />
        <port polarity="Input" name="IS_UP" />
        <port polarity="Input" name="RST" />
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
            <blockpin signalname="MAIN_TICK" name="C" />
            <blockpin signalname="XLXN_322" name="CE" />
            <blockpin signalname="XLXN_389" name="CLR" />
            <blockpin signalname="XLXN_312" name="D0" />
            <blockpin signalname="XLXN_312" name="D1" />
            <blockpin signalname="XLXN_312" name="D2" />
            <blockpin signalname="XLXN_312" name="D3" />
            <blockpin signalname="load" name="L" />
            <blockpin signalname="IS_UP" name="UP" />
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
            <blockpin signalname="ENBL" name="I0" />
            <blockpin signalname="XLXN_320" name="I1" />
            <blockpin signalname="XLXN_322" name="O" />
        </block>
        <block symbolname="and2" name="LOW">
            <blockpin signalname="XLXN_394" name="I0" />
            <blockpin signalname="XLXN_327" name="I1" />
            <blockpin signalname="XLXN_336" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_135">
            <blockpin signalname="IS_UP" name="I" />
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
            <blockpin signalname="RST" name="I0" />
            <blockpin signalname="XLXN_391" name="I1" />
            <blockpin signalname="XLXN_389" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_170">
            <blockpin signalname="XLXN_394" name="I0" />
            <blockpin signalname="IS_UP" name="I1" />
            <blockpin signalname="XLXN_391" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1856" name="XLXI_1" orien="R0" />
        <instance x="2032" y="1168" name="NAND_2_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="2032" y="1264" name="INV_3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <instance x="2432" y="1232" name="XLXI_92" orien="R0" />
        <branch name="XLXN_187">
            <wire x2="2352" y1="1072" y2="1072" x1="2288" />
            <wire x2="2352" y1="1072" y2="1104" x1="2352" />
            <wire x2="2432" y1="1104" y2="1104" x1="2352" />
            <wire x2="2352" y1="1104" y2="1264" x1="2352" />
            <wire x2="2432" y1="1264" y2="1264" x1="2352" />
        </branch>
        <branch name="A1">
            <wire x2="2720" y1="1136" y2="1136" x1="2688" />
        </branch>
        <instance x="2432" y="1392" name="XLXI_93" orien="R0" />
        <branch name="A2">
            <wire x2="2720" y1="1296" y2="1296" x1="2688" />
        </branch>
        <instance x="1952" y="1552" name="XLXI_94" orien="R0" />
        <instance x="2272" y="1712" name="XLXI_97" orien="R0" />
        <instance x="2592" y="1552" name="XLXI_95" orien="R0" />
        <branch name="XLXN_195">
            <wire x2="1920" y1="1744" y2="1968" x1="1920" />
            <wire x2="2032" y1="1968" y2="1968" x1="1920" />
            <wire x2="2256" y1="1744" y2="1744" x1="1920" />
            <wire x2="2256" y1="1632" y2="1632" x1="2176" />
            <wire x2="2256" y1="1632" y2="1648" x1="2256" />
            <wire x2="2272" y1="1648" y2="1648" x1="2256" />
            <wire x2="2256" y1="1648" y2="1744" x1="2256" />
        </branch>
        <instance x="1920" y="1728" name="NOR_2_1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="B1">
            <wire x2="2880" y1="1456" y2="1456" x1="2848" />
        </branch>
        <instance x="2352" y="1872" name="XLXI_99" orien="R0" />
        <instance x="2032" y="2032" name="XLXI_100" orien="R0" />
        <instance x="1952" y="1904" name="XLXI_98" orien="R0" />
        <branch name="XLXN_202">
            <wire x2="1872" y1="1520" y2="1776" x1="1872" />
            <wire x2="1952" y1="1776" y2="1776" x1="1872" />
            <wire x2="2208" y1="1520" y2="1520" x1="1872" />
            <wire x2="2208" y1="1520" y2="1584" x1="2208" />
            <wire x2="2272" y1="1584" y2="1584" x1="2208" />
            <wire x2="2320" y1="1520" y2="1520" x1="2208" />
            <wire x2="2320" y1="1232" y2="1232" x1="2256" />
            <wire x2="2320" y1="1232" y2="1520" x1="2320" />
            <wire x2="2320" y1="1168" y2="1232" x1="2320" />
            <wire x2="2432" y1="1168" y2="1168" x1="2320" />
        </branch>
        <branch name="XLXN_208">
            <wire x2="2288" y1="1808" y2="1808" x1="2208" />
            <wire x2="2352" y1="1744" y2="1744" x1="2288" />
            <wire x2="2288" y1="1744" y2="1808" x1="2288" />
        </branch>
        <branch name="XLXN_209">
            <wire x2="2320" y1="1936" y2="1936" x1="2288" />
            <wire x2="2320" y1="1808" y2="1936" x1="2320" />
            <wire x2="2352" y1="1808" y2="1808" x1="2320" />
        </branch>
        <branch name="B2">
            <wire x2="2640" y1="1776" y2="1776" x1="2608" />
        </branch>
        <branch name="XLXN_214">
            <wire x2="1856" y1="1344" y2="1344" x1="1808" />
            <wire x2="1920" y1="1344" y2="1344" x1="1856" />
            <wire x2="1920" y1="1344" y2="1424" x1="1920" />
            <wire x2="1952" y1="1424" y2="1424" x1="1920" />
            <wire x2="1856" y1="1344" y2="1904" x1="1856" />
            <wire x2="2032" y1="1904" y2="1904" x1="1856" />
            <wire x2="2032" y1="1232" y2="1232" x1="1920" />
            <wire x2="1920" y1="1232" y2="1328" x1="1920" />
            <wire x2="1920" y1="1328" y2="1344" x1="1920" />
            <wire x2="2432" y1="1328" y2="1328" x1="1920" />
        </branch>
        <branch name="XLXN_215">
            <wire x2="1904" y1="1280" y2="1280" x1="1808" />
            <wire x2="1904" y1="1280" y2="1488" x1="1904" />
            <wire x2="1952" y1="1488" y2="1488" x1="1904" />
            <wire x2="1904" y1="1488" y2="1600" x1="1904" />
            <wire x2="1920" y1="1600" y2="1600" x1="1904" />
            <wire x2="1904" y1="1600" y2="1840" x1="1904" />
            <wire x2="1952" y1="1840" y2="1840" x1="1904" />
            <wire x2="1904" y1="1104" y2="1280" x1="1904" />
            <wire x2="2032" y1="1104" y2="1104" x1="1904" />
        </branch>
        <branch name="XLXN_216">
            <wire x2="1888" y1="1216" y2="1216" x1="1808" />
            <wire x2="1888" y1="1216" y2="1664" x1="1888" />
            <wire x2="1920" y1="1664" y2="1664" x1="1888" />
            <wire x2="2032" y1="1040" y2="1040" x1="1888" />
            <wire x2="1888" y1="1040" y2="1216" x1="1888" />
        </branch>
        <branch name="load">
            <wire x2="1056" y1="1696" y2="1696" x1="864" />
            <wire x2="1056" y1="1488" y2="1488" x1="1008" />
            <wire x2="1056" y1="1488" y2="1600" x1="1056" />
            <wire x2="1056" y1="1600" y2="1696" x1="1056" />
            <wire x2="1424" y1="1600" y2="1600" x1="1056" />
        </branch>
        <branch name="MAIN_TICK">
            <wire x2="1424" y1="1728" y2="1728" x1="1392" />
        </branch>
        <instance x="816" y="1920" name="XLXI_131" orien="R0" />
        <branch name="XLXN_322">
            <wire x2="1088" y1="1824" y2="1824" x1="1072" />
            <wire x2="1088" y1="1664" y2="1824" x1="1088" />
            <wire x2="1424" y1="1664" y2="1664" x1="1088" />
        </branch>
        <instance x="1520" y="816" name="LOW" orien="R180">
            <attrtext style="alignment:RIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-144" type="instance" />
        </instance>
        <instance x="1296" y="1072" name="XLXI_135" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="XLXN_327">
            <wire x2="1536" y1="944" y2="944" x1="1520" />
            <wire x2="1536" y1="944" y2="1040" x1="1536" />
            <wire x2="1536" y1="1040" y2="1040" x1="1520" />
        </branch>
        <instance x="768" y="1392" name="XLXI_128" orien="R0" />
        <instance x="496" y="1264" name="XLXI_123" orien="R0">
        </instance>
        <instance x="688" y="1616" name="XLXI_129" orien="R0" />
        <branch name="XLXN_316">
            <wire x2="688" y1="1520" y2="1520" x1="640" />
        </branch>
        <instance x="864" y="1664" name="XLXI_132" orien="R180">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="24" type="instance" />
        </instance>
        <branch name="XLXN_320">
            <wire x2="608" y1="1696" y2="1792" x1="608" />
            <wire x2="816" y1="1792" y2="1792" x1="608" />
            <wire x2="640" y1="1696" y2="1696" x1="608" />
        </branch>
        <branch name="ENBL">
            <wire x2="816" y1="1856" y2="1856" x1="592" />
        </branch>
        <instance x="496" y="1488" name="XLXI_130" orien="R0">
        </instance>
        <branch name="L_INIT">
            <wire x2="672" y1="1360" y2="1360" x1="608" />
            <wire x2="672" y1="1360" y2="1584" x1="672" />
            <wire x2="688" y1="1584" y2="1584" x1="672" />
            <wire x2="768" y1="1360" y2="1360" x1="672" />
        </branch>
        <branch name="XLXN_312">
            <wire x2="1152" y1="1264" y2="1264" x1="1088" />
            <wire x2="1152" y1="1216" y2="1264" x1="1152" />
            <wire x2="1376" y1="1216" y2="1216" x1="1152" />
            <wire x2="1424" y1="1216" y2="1216" x1="1376" />
            <wire x2="1376" y1="1216" y2="1280" x1="1376" />
            <wire x2="1424" y1="1280" y2="1280" x1="1376" />
            <wire x2="1376" y1="1280" y2="1344" x1="1376" />
            <wire x2="1424" y1="1344" y2="1344" x1="1376" />
            <wire x2="1376" y1="1344" y2="1408" x1="1376" />
            <wire x2="1424" y1="1408" y2="1408" x1="1376" />
        </branch>
        <branch name="XLXN_336">
            <wire x2="688" y1="912" y2="1232" x1="688" />
            <wire x2="768" y1="1232" y2="1232" x1="688" />
            <wire x2="1264" y1="912" y2="912" x1="688" />
        </branch>
        <iomarker fontsize="28" x="2720" y="1136" name="A1" orien="R0" />
        <iomarker fontsize="28" x="2720" y="1296" name="A2" orien="R0" />
        <iomarker fontsize="28" x="2880" y="1456" name="B1" orien="R0" />
        <iomarker fontsize="28" x="2640" y="1776" name="B2" orien="R0" />
        <iomarker fontsize="28" x="1392" y="1728" name="MAIN_TICK" orien="R180" />
        <iomarker fontsize="28" x="592" y="1856" name="ENBL" orien="R180" />
        <iomarker fontsize="28" x="608" y="1360" name="L_INIT" orien="R180" />
        <iomarker fontsize="28" x="1184" y="1536" name="IS_UP" orien="R180" />
        <branch name="XLXN_378">
            <wire x2="2400" y1="1456" y2="1456" x1="2208" />
            <wire x2="2400" y1="1424" y2="1456" x1="2400" />
            <wire x2="2592" y1="1424" y2="1424" x1="2400" />
        </branch>
        <branch name="XLXN_380">
            <wire x2="2544" y1="1616" y2="1616" x1="2528" />
            <wire x2="2592" y1="1488" y2="1488" x1="2544" />
            <wire x2="2544" y1="1488" y2="1616" x1="2544" />
        </branch>
        <branch name="IS_UP">
            <wire x2="624" y1="1920" y2="1984" x1="624" />
            <wire x2="640" y1="1984" y2="1984" x1="624" />
            <wire x2="1216" y1="1920" y2="1920" x1="624" />
            <wire x2="1312" y1="1536" y2="1536" x1="1184" />
            <wire x2="1312" y1="1536" y2="1680" x1="1312" />
            <wire x2="1424" y1="1536" y2="1536" x1="1312" />
            <wire x2="1296" y1="1040" y2="1040" x1="1216" />
            <wire x2="1216" y1="1040" y2="1136" x1="1216" />
            <wire x2="1312" y1="1136" y2="1136" x1="1216" />
            <wire x2="1312" y1="1136" y2="1536" x1="1312" />
            <wire x2="1216" y1="1680" y2="1920" x1="1216" />
            <wire x2="1312" y1="1680" y2="1680" x1="1216" />
        </branch>
        <instance x="1184" y="2096" name="XLXI_169" orien="R0" />
        <branch name="XLXN_389">
            <wire x2="1424" y1="1824" y2="1904" x1="1424" />
            <wire x2="1504" y1="1904" y2="1904" x1="1424" />
            <wire x2="1504" y1="1904" y2="2000" x1="1504" />
            <wire x2="1504" y1="2000" y2="2000" x1="1440" />
        </branch>
        <branch name="RST">
            <wire x2="1184" y1="2032" y2="2032" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="2032" name="RST" orien="R180" />
        <instance x="640" y="2112" name="XLXI_170" orien="R0" />
        <branch name="XLXN_391">
            <wire x2="1024" y1="2016" y2="2016" x1="896" />
            <wire x2="1024" y1="1968" y2="2016" x1="1024" />
            <wire x2="1184" y1="1968" y2="1968" x1="1024" />
        </branch>
        <branch name="XLXN_394">
            <wire x2="640" y1="2048" y2="2048" x1="560" />
            <wire x2="560" y1="2048" y2="2144" x1="560" />
            <wire x2="1840" y1="2144" y2="2144" x1="560" />
            <wire x2="1840" y1="880" y2="880" x1="1520" />
            <wire x2="1840" y1="880" y2="1408" x1="1840" />
            <wire x2="1840" y1="1408" y2="2144" x1="1840" />
            <wire x2="1840" y1="1408" y2="1408" x1="1808" />
        </branch>
        <branch name="XLXN_315">
            <wire x2="656" y1="1296" y2="1296" x1="640" />
            <wire x2="768" y1="1296" y2="1296" x1="656" />
            <wire x2="656" y1="1296" y2="1456" x1="656" />
            <wire x2="688" y1="1456" y2="1456" x1="656" />
        </branch>
    </sheet>
</drawing>