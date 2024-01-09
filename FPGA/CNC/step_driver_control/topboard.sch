<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="RESET" />
        <signal name="WORK_ENABLE" />
        <signal name="SET_ENABLE" />
        <signal name="SET_DIV_DATA" />
        <signal name="SET_DIV_CLK" />
        <signal name="A1" />
        <signal name="A2" />
        <signal name="B1" />
        <signal name="B2" />
        <signal name="SYS_CLOCK" />
        <signal name="SET_DIST_CLK" />
        <signal name="SET_DIST_DATA" />
        <signal name="DIST_FINISH" />
        <signal name="DIR_IS_UP" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="WORK_ENABLE" />
        <port polarity="Input" name="SET_ENABLE" />
        <port polarity="Input" name="SET_DIV_DATA" />
        <port polarity="Input" name="SET_DIV_CLK" />
        <port polarity="Output" name="A1" />
        <port polarity="Output" name="A2" />
        <port polarity="Output" name="B1" />
        <port polarity="Output" name="B2" />
        <port polarity="Input" name="SYS_CLOCK" />
        <port polarity="Input" name="SET_DIST_CLK" />
        <port polarity="Input" name="SET_DIST_DATA" />
        <port polarity="Output" name="DIST_FINISH" />
        <port polarity="Input" name="DIR_IS_UP" />
        <blockdef name="distance_module">
            <timestamp>2018-7-19T17:6:49</timestamp>
            <rect width="320" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <blockdef name="sdc">
            <timestamp>2018-7-19T17:6:56</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
            <rect width="256" x="64" y="-320" height="512" />
        </blockdef>
        <blockdef name="sdc_divider">
            <timestamp>2018-7-19T17:6:59</timestamp>
            <rect width="352" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
        </blockdef>
        <blockdef name="indic_4reg_decoder">
            <timestamp>2018-7-24T0:4:28</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="sdc" name="XLXI_2">
            <blockpin signalname="WORK_ENABLE" name="ENBL" />
            <blockpin signalname="SET_ENABLE" name="L_INIT" />
            <blockpin signalname="A1" name="A1" />
            <blockpin signalname="A2" name="A2" />
            <blockpin signalname="B1" name="B1" />
            <blockpin signalname="B2" name="B2" />
            <blockpin signalname="XLXN_1" name="MAIN_TICK" />
            <blockpin signalname="DIR_IS_UP" name="IS_UP" />
            <blockpin signalname="RESET" name="RST" />
        </block>
        <block symbolname="distance_module" name="XLXI_1">
            <blockpin signalname="SET_ENABLE" name="SET_DATA_E" />
            <blockpin signalname="SET_DIST_CLK" name="SET_CLK" />
            <blockpin signalname="RESET" name="SET_CLR" />
            <blockpin signalname="RESET" name="COUNT_CLR" />
            <blockpin signalname="SET_DIST_DATA" name="SET_DATA" />
            <blockpin signalname="XLXN_2" name="MAIN_TICK" />
            <blockpin signalname="WORK_ENABLE" name="COUNT_EN" />
            <blockpin signalname="DIST_FINISH" name="DIST_END" />
            <blockpin signalname="XLXN_1" name="MAIN_TICK_O" />
        </block>
        <block symbolname="sdc_divider" name="XLXI_3">
            <blockpin signalname="SYS_CLOCK" name="SYS_CLK" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="WORK_ENABLE" name="DIV_EN" />
            <blockpin signalname="SET_DIV_DATA" name="SET_DIV_DATA_div2" />
            <blockpin signalname="SET_ENABLE" name="SET_DIV_EN" />
            <blockpin signalname="SET_DIV_CLK" name="SET_DIV_CLK" />
            <blockpin signalname="XLXN_2" name="MAIN_TICK" />
        </block>
        <block symbolname="indic_4reg_decoder" name="XLXI_4">
            <blockpin name="DIRECTION" />
            <blockpin name="COUNT" />
            <blockpin name="RESET" />
            <blockpin name="COUNT_EN" />
            <blockpin name="SEG_SWITCH" />
            <blockpin name="SEG_A" />
            <blockpin name="SEG_B" />
            <blockpin name="SEG_C" />
            <blockpin name="SEG_D" />
            <blockpin name="SEG_E" />
            <blockpin name="SEG_F" />
            <blockpin name="SEG_G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2576" y="2032" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2576" y1="2064" y2="2064" x1="2288" />
        </branch>
        <instance x="1840" y="2096" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1008" y="2048" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1664" y1="1696" y2="1696" x1="1488" />
            <wire x2="1664" y1="1696" y2="2000" x1="1664" />
            <wire x2="1840" y1="2000" y2="2000" x1="1664" />
        </branch>
        <branch name="RESET">
            <wire x2="864" y1="1760" y2="1760" x1="752" />
            <wire x2="1008" y1="1760" y2="1760" x1="864" />
            <wire x2="864" y1="1760" y2="2288" x1="864" />
            <wire x2="1552" y1="2288" y2="2288" x1="864" />
            <wire x2="1840" y1="1808" y2="1808" x1="1552" />
            <wire x2="1552" y1="1808" y2="1872" x1="1552" />
            <wire x2="1840" y1="1872" y2="1872" x1="1552" />
            <wire x2="1552" y1="1872" y2="2192" x1="1552" />
            <wire x2="1552" y1="2192" y2="2288" x1="1552" />
            <wire x2="2576" y1="2192" y2="2192" x1="1552" />
        </branch>
        <branch name="WORK_ENABLE">
            <wire x2="928" y1="1824" y2="1824" x1="752" />
            <wire x2="1008" y1="1824" y2="1824" x1="928" />
            <wire x2="928" y1="1824" y2="2336" x1="928" />
            <wire x2="1760" y1="2336" y2="2336" x1="928" />
            <wire x2="2352" y1="2336" y2="2336" x1="1760" />
            <wire x2="1840" y1="2064" y2="2064" x1="1760" />
            <wire x2="1760" y1="2064" y2="2336" x1="1760" />
            <wire x2="2352" y1="1808" y2="2336" x1="2352" />
            <wire x2="2576" y1="1808" y2="1808" x1="2352" />
        </branch>
        <branch name="SET_ENABLE">
            <wire x2="944" y1="1584" y2="1584" x1="752" />
            <wire x2="944" y1="1584" y2="1952" x1="944" />
            <wire x2="1008" y1="1952" y2="1952" x1="944" />
            <wire x2="1552" y1="1584" y2="1584" x1="944" />
            <wire x2="1552" y1="1584" y2="1680" x1="1552" />
            <wire x2="1840" y1="1680" y2="1680" x1="1552" />
            <wire x2="2480" y1="1584" y2="1584" x1="1552" />
            <wire x2="2480" y1="1584" y2="1872" x1="2480" />
            <wire x2="2576" y1="1872" y2="1872" x1="2480" />
        </branch>
        <branch name="SET_DIV_DATA">
            <wire x2="1008" y1="1888" y2="1888" x1="752" />
        </branch>
        <branch name="SET_DIV_CLK">
            <wire x2="1008" y1="2016" y2="2016" x1="768" />
        </branch>
        <branch name="A1">
            <wire x2="2992" y1="1744" y2="1744" x1="2960" />
        </branch>
        <branch name="A2">
            <wire x2="2992" y1="1824" y2="1824" x1="2960" />
        </branch>
        <branch name="B1">
            <wire x2="2992" y1="1904" y2="1904" x1="2960" />
        </branch>
        <branch name="B2">
            <wire x2="2992" y1="1984" y2="1984" x1="2960" />
        </branch>
        <branch name="SYS_CLOCK">
            <wire x2="1008" y1="1696" y2="1696" x1="768" />
        </branch>
        <branch name="SET_DIST_CLK">
            <wire x2="1824" y1="1488" y2="1744" x1="1824" />
            <wire x2="1840" y1="1744" y2="1744" x1="1824" />
        </branch>
        <branch name="SET_DIST_DATA">
            <wire x2="1744" y1="1488" y2="1936" x1="1744" />
            <wire x2="1840" y1="1936" y2="1936" x1="1744" />
        </branch>
        <branch name="DIST_FINISH">
            <wire x2="2304" y1="1680" y2="1680" x1="2288" />
            <wire x2="2304" y1="1472" y2="1680" x1="2304" />
        </branch>
        <branch name="DIR_IS_UP">
            <wire x2="2576" y1="2128" y2="2128" x1="2560" />
            <wire x2="2560" y1="2128" y2="2288" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1744" name="A1" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1824" name="A2" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1904" name="B1" orien="R0" />
        <iomarker fontsize="28" x="2992" y="1984" name="B2" orien="R0" />
        <iomarker fontsize="28" x="752" y="1760" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="752" y="1824" name="WORK_ENABLE" orien="R180" />
        <iomarker fontsize="28" x="752" y="1888" name="SET_DIV_DATA" orien="R180" />
        <iomarker fontsize="28" x="768" y="2016" name="SET_DIV_CLK" orien="R180" />
        <iomarker fontsize="28" x="768" y="1696" name="SYS_CLOCK" orien="R180" />
        <iomarker fontsize="28" x="752" y="1584" name="SET_ENABLE" orien="R180" />
        <iomarker fontsize="28" x="1744" y="1488" name="SET_DIST_DATA" orien="R270" />
        <iomarker fontsize="28" x="1824" y="1488" name="SET_DIST_CLK" orien="R270" />
        <iomarker fontsize="28" x="2304" y="1472" name="DIST_FINISH" orien="R270" />
        <iomarker fontsize="28" x="2560" y="2288" name="DIR_IS_UP" orien="R90" />
        <instance x="1488" y="1056" name="XLXI_4" orien="R0">
        </instance>
    </sheet>
</drawing>