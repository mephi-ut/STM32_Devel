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
        <signal name="XLXN_9" />
        <signal name="XLXN_10(7:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_2(15)" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
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
        <block symbolname="sr16ce" name="L_SHIFT">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="XLXN_18" name="CLR" />
            <blockpin name="SLI" />
            <blockpin signalname="XLXN_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="sr8ce" name="H_SHIFT">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_14" name="CE" />
            <blockpin signalname="XLXN_18" name="CLR" />
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
            <blockpin name="O" />
        </block>
        <block symbolname="cb16ce" name="L_CNT">
            <blockpin name="C" />
            <blockpin name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin signalname="XLXN_8" name="CEO" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
            <blockpin signalname="XLXN_9" name="TC" />
        </block>
        <block symbolname="cb8ce" name="H_CNT">
            <blockpin signalname="XLXN_9" name="C" />
            <blockpin signalname="XLXN_8" name="CE" />
            <blockpin signalname="XLXN_19" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_10(7:0)" name="Q(7:0)" />
            <blockpin name="TC" />
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
        <branch name="XLXN_9">
            <wire x2="1376" y1="1632" y2="1632" x1="1328" />
            <wire x2="1328" y1="1632" y2="1792" x1="1328" />
            <wire x2="1840" y1="1792" y2="1792" x1="1328" />
            <wire x2="1840" y1="1792" y2="2112" x1="1840" />
            <wire x2="1840" y1="2112" y2="2112" x1="1760" />
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
        <branch name="XLXN_14">
            <wire x2="1376" y1="544" y2="544" x1="1024" />
            <wire x2="1024" y1="544" y2="1040" x1="1024" />
            <wire x2="1360" y1="1040" y2="1040" x1="1024" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1376" y1="608" y2="608" x1="1088" />
            <wire x2="1088" y1="608" y2="1104" x1="1088" />
            <wire x2="1360" y1="1104" y2="1104" x1="1088" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1376" y1="704" y2="704" x1="1168" />
            <wire x2="1168" y1="704" y2="1200" x1="1168" />
            <wire x2="1360" y1="1200" y2="1200" x1="1168" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1152" y1="1728" y2="2208" x1="1152" />
            <wire x2="1376" y1="2208" y2="2208" x1="1152" />
            <wire x2="1376" y1="1728" y2="1728" x1="1152" />
        </branch>
    </sheet>
</drawing>