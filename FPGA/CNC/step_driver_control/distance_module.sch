<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_2(15)" />
        <signal name="SET_DATA_E" />
        <signal name="SET_CLK" />
        <signal name="SET_CLR" />
        <signal name="COUNT_CLR" />
        <signal name="XLXN_20" />
        <signal name="DIST_END" />
        <signal name="XLXN_22" />
        <signal name="SET_DATA" />
        <signal name="MAIN_TICK" />
        <signal name="COUNT_EN" />
        <signal name="MAIN_TICK_O" />
        <port polarity="Input" name="SET_DATA_E" />
        <port polarity="Input" name="SET_CLK" />
        <port polarity="Input" name="SET_CLR" />
        <port polarity="Input" name="COUNT_CLR" />
        <port polarity="Output" name="DIST_END" />
        <port polarity="Input" name="SET_DATA" />
        <port polarity="Input" name="MAIN_TICK" />
        <port polarity="Input" name="COUNT_EN" />
        <port polarity="Output" name="MAIN_TICK_O" />
        <blockdef name="sr16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
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
        <blockdef name="comp16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
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
        <blockdef name="cb16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
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
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="sr16ce" name="L_SHIFT">
            <blockpin signalname="SET_CLK" name="C" />
            <blockpin signalname="SET_DATA_E" name="CE" />
            <blockpin signalname="SET_CLR" name="CLR" />
            <blockpin signalname="SET_DATA" name="SLI" />
            <blockpin signalname="XLXN_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="sr8ce" name="H_SHIFT">
            <blockpin signalname="SET_CLK" name="C" />
            <blockpin signalname="SET_DATA_E" name="CE" />
            <blockpin signalname="SET_CLR" name="CLR" />
            <blockpin signalname="XLXN_2(15)" name="SLI" />
            <blockpin signalname="XLXN_1(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="comp16" name="XLXI_6">
            <blockpin signalname="XLXN_2(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="B(15:0)" />
            <blockpin signalname="XLXN_7" name="EQ" />
        </block>
        <block symbolname="comp8" name="XLXI_7">
            <blockpin signalname="XLXN_1(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_10(7:0)" name="B(7:0)" />
            <blockpin signalname="XLXN_6" name="EQ" />
        </block>
        <block symbolname="and2" name="XLXI_12">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="DIST_END" name="O" />
        </block>
        <block symbolname="cb16ce" name="L_CNT">
            <blockpin signalname="MAIN_TICK" name="C" />
            <blockpin signalname="XLXN_22" name="CE" />
            <blockpin signalname="COUNT_CLR" name="CLR" />
            <blockpin signalname="XLXN_8" name="CEO" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cb8ce" name="H_CNT">
            <blockpin signalname="MAIN_TICK" name="C" />
            <blockpin signalname="XLXN_8" name="CE" />
            <blockpin signalname="COUNT_CLR" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_10(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_15">
            <blockpin signalname="COUNT_EN" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="DIST_END" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="MAIN_TICK" name="I0" />
            <blockpin signalname="XLXN_20" name="I1" />
            <blockpin signalname="MAIN_TICK_O" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1360" y="1232" name="L_SHIFT" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="1376" y="736" name="H_SHIFT" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="2064" y="1232" name="XLXI_6" orien="R0" />
        <instance x="2048" y="736" name="XLXI_7" orien="R0" />
        <branch name="XLXN_1(7:0)">
            <wire x2="1904" y1="480" y2="480" x1="1760" />
            <wire x2="1904" y1="416" y2="480" x1="1904" />
            <wire x2="2048" y1="416" y2="416" x1="1904" />
        </branch>
        <branch name="XLXN_2(15:0)">
            <wire x2="1792" y1="976" y2="976" x1="1744" />
            <wire x2="1904" y1="976" y2="976" x1="1792" />
            <wire x2="1904" y1="912" y2="976" x1="1904" />
            <wire x2="2064" y1="912" y2="912" x1="1904" />
        </branch>
        <instance x="2640" y="848" name="XLXI_12" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="2528" y1="512" y2="512" x1="2432" />
            <wire x2="2528" y1="512" y2="720" x1="2528" />
            <wire x2="2640" y1="720" y2="720" x1="2528" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="2544" y1="1008" y2="1008" x1="2448" />
            <wire x2="2544" y1="784" y2="1008" x1="2544" />
            <wire x2="2640" y1="784" y2="784" x1="2544" />
        </branch>
        <instance x="1376" y="1760" name="H_CNT" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <instance x="1376" y="2240" name="L_CNT" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-32" type="instance" />
        </instance>
        <branch name="XLXN_8">
            <wire x2="1376" y1="1568" y2="1568" x1="1312" />
            <wire x2="1312" y1="1568" y2="1808" x1="1312" />
            <wire x2="1824" y1="1808" y2="1808" x1="1312" />
            <wire x2="1824" y1="1808" y2="2048" x1="1824" />
            <wire x2="1824" y1="2048" y2="2048" x1="1760" />
        </branch>
        <branch name="XLXN_10(7:0)">
            <wire x2="1856" y1="1504" y2="1504" x1="1760" />
            <wire x2="1856" y1="608" y2="1504" x1="1856" />
            <wire x2="2048" y1="608" y2="608" x1="1856" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="1904" y1="1984" y2="1984" x1="1760" />
            <wire x2="1904" y1="1104" y2="1984" x1="1904" />
            <wire x2="2064" y1="1104" y2="1104" x1="1904" />
        </branch>
        <bustap x2="1792" y1="976" y2="880" x1="1792" />
        <branch name="XLXN_2(15)">
            <wire x2="1312" y1="288" y2="416" x1="1312" />
            <wire x2="1376" y1="416" y2="416" x1="1312" />
            <wire x2="1792" y1="288" y2="288" x1="1312" />
            <wire x2="1792" y1="288" y2="880" x1="1792" />
        </branch>
        <branch name="SET_DATA_E">
            <wire x2="1024" y1="1040" y2="1040" x1="960" />
            <wire x2="1360" y1="1040" y2="1040" x1="1024" />
            <wire x2="1376" y1="544" y2="544" x1="1024" />
            <wire x2="1024" y1="544" y2="1040" x1="1024" />
        </branch>
        <branch name="SET_CLK">
            <wire x2="1088" y1="1104" y2="1104" x1="960" />
            <wire x2="1360" y1="1104" y2="1104" x1="1088" />
            <wire x2="1376" y1="608" y2="608" x1="1088" />
            <wire x2="1088" y1="608" y2="1104" x1="1088" />
        </branch>
        <branch name="SET_CLR">
            <wire x2="1168" y1="1200" y2="1200" x1="960" />
            <wire x2="1360" y1="1200" y2="1200" x1="1168" />
            <wire x2="1376" y1="704" y2="704" x1="1168" />
            <wire x2="1168" y1="704" y2="1200" x1="1168" />
        </branch>
        <branch name="COUNT_CLR">
            <wire x2="1152" y1="2208" y2="2208" x1="1104" />
            <wire x2="1376" y1="2208" y2="2208" x1="1152" />
            <wire x2="1152" y1="1728" y2="2208" x1="1152" />
            <wire x2="1376" y1="1728" y2="1728" x1="1152" />
        </branch>
        <instance x="800" y="2144" name="XLXI_15" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="784" y1="2016" y2="2016" x1="768" />
            <wire x2="800" y1="2016" y2="2016" x1="784" />
            <wire x2="784" y1="1888" y2="2016" x1="784" />
            <wire x2="1792" y1="1888" y2="1888" x1="784" />
            <wire x2="1792" y1="1888" y2="2144" x1="1792" />
            <wire x2="2416" y1="2144" y2="2144" x1="1792" />
        </branch>
        <instance x="544" y="2048" name="XLXI_16" orien="R0" />
        <branch name="DIST_END">
            <wire x2="544" y1="2016" y2="2016" x1="464" />
            <wire x2="464" y1="2016" y2="2368" x1="464" />
            <wire x2="2976" y1="2368" y2="2368" x1="464" />
            <wire x2="2976" y1="752" y2="752" x1="2896" />
            <wire x2="3088" y1="752" y2="752" x1="2976" />
            <wire x2="2976" y1="752" y2="2368" x1="2976" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="1376" y1="2048" y2="2048" x1="1056" />
        </branch>
        <branch name="SET_DATA">
            <wire x2="1360" y1="912" y2="912" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="912" name="SET_DATA" orien="R180" />
        <iomarker fontsize="28" x="960" y="1040" name="SET_DATA_E" orien="R180" />
        <iomarker fontsize="28" x="960" y="1104" name="SET_CLK" orien="R180" />
        <iomarker fontsize="28" x="960" y="1200" name="SET_CLR" orien="R180" />
        <iomarker fontsize="28" x="3088" y="752" name="DIST_END" orien="R0" />
        <branch name="MAIN_TICK">
            <wire x2="1232" y1="2144" y2="2144" x1="768" />
            <wire x2="1360" y1="2144" y2="2144" x1="1232" />
            <wire x2="1360" y1="2144" y2="2272" x1="1360" />
            <wire x2="1888" y1="2272" y2="2272" x1="1360" />
            <wire x2="1376" y1="1632" y2="1632" x1="1232" />
            <wire x2="1232" y1="1632" y2="2144" x1="1232" />
            <wire x2="1376" y1="2112" y2="2112" x1="1360" />
            <wire x2="1360" y1="2112" y2="2144" x1="1360" />
            <wire x2="1888" y1="2208" y2="2272" x1="1888" />
            <wire x2="2416" y1="2208" y2="2208" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1104" y="2208" name="COUNT_CLR" orien="R180" />
        <branch name="COUNT_EN">
            <wire x2="800" y1="2080" y2="2080" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="2080" name="COUNT_EN" orien="R180" />
        <instance x="2416" y="2272" name="XLXI_18" orien="R0" />
        <iomarker fontsize="28" x="768" y="2144" name="MAIN_TICK" orien="R180" />
        <branch name="MAIN_TICK_O">
            <wire x2="2704" y1="2176" y2="2176" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="2176" name="MAIN_TICK_O" orien="R0" />
    </sheet>
</drawing>