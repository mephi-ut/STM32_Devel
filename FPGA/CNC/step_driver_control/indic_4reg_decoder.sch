<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="DIRECTION" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="COUNT" />
        <signal name="XLXN_71" />
        <signal name="RESET" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="COUNT_EN" />
        <signal name="SEG_SWITCH" />
        <signal name="SEG_A" />
        <signal name="SEG_B" />
        <signal name="SEG_C" />
        <signal name="SEG_D" />
        <signal name="SEG_E" />
        <signal name="SEG_F" />
        <signal name="SEG_G" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_101" />
        <signal name="XLXN_102" />
        <signal name="XLXN_103" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_106" />
        <signal name="XLXN_107" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <port polarity="Input" name="DIRECTION" />
        <port polarity="Input" name="COUNT" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="COUNT_EN" />
        <port polarity="Input" name="SEG_SWITCH" />
        <port polarity="Output" name="SEG_A" />
        <port polarity="Output" name="SEG_B" />
        <port polarity="Output" name="SEG_C" />
        <port polarity="Output" name="SEG_D" />
        <port polarity="Output" name="SEG_E" />
        <port polarity="Output" name="SEG_F" />
        <port polarity="Output" name="SEG_G" />
        <blockdef name="i7led_decoder">
            <timestamp>2018-7-23T23:9:16</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
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
        <block symbolname="i7led_decoder" name="REG_1">
            <blockpin signalname="COUNT" name="COUNT" />
            <blockpin signalname="DIRECTION" name="DIR" />
            <blockpin signalname="COUNT_EN" name="COUNT_EN" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="XLXN_86" name="SEG_A" />
            <blockpin signalname="XLXN_94" name="SEG_C" />
            <blockpin signalname="XLXN_98" name="SEG_D" />
            <blockpin signalname="XLXN_102" name="SEG_E" />
            <blockpin signalname="XLXN_106" name="SEG_F" />
            <blockpin signalname="XLXN_90" name="SEG_B" />
            <blockpin signalname="XLXN_110" name="SEG_G" />
            <blockpin signalname="XLXN_63" name="CE_O" />
        </block>
        <block symbolname="i7led_decoder" name="REG_2">
            <blockpin signalname="COUNT" name="COUNT" />
            <blockpin signalname="DIRECTION" name="DIR" />
            <blockpin signalname="XLXN_63" name="COUNT_EN" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="XLXN_87" name="SEG_A" />
            <blockpin signalname="XLXN_95" name="SEG_C" />
            <blockpin signalname="XLXN_99" name="SEG_D" />
            <blockpin signalname="XLXN_103" name="SEG_E" />
            <blockpin signalname="XLXN_107" name="SEG_F" />
            <blockpin signalname="XLXN_91" name="SEG_B" />
            <blockpin signalname="XLXN_111" name="SEG_G" />
            <blockpin signalname="XLXN_65" name="CE_O" />
        </block>
        <block symbolname="i7led_decoder" name="REG_3">
            <blockpin signalname="COUNT" name="COUNT" />
            <blockpin signalname="DIRECTION" name="DIR" />
            <blockpin signalname="XLXN_65" name="COUNT_EN" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="XLXN_88" name="SEG_A" />
            <blockpin signalname="XLXN_96" name="SEG_C" />
            <blockpin signalname="XLXN_100" name="SEG_D" />
            <blockpin signalname="XLXN_104" name="SEG_E" />
            <blockpin signalname="XLXN_108" name="SEG_F" />
            <blockpin signalname="XLXN_92" name="SEG_B" />
            <blockpin signalname="XLXN_112" name="SEG_G" />
            <blockpin signalname="XLXN_71" name="CE_O" />
        </block>
        <block symbolname="i7led_decoder" name="REG_4">
            <blockpin signalname="COUNT" name="COUNT" />
            <blockpin signalname="DIRECTION" name="DIR" />
            <blockpin signalname="XLXN_71" name="COUNT_EN" />
            <blockpin signalname="RESET" name="RST" />
            <blockpin signalname="XLXN_89" name="SEG_A" />
            <blockpin signalname="XLXN_97" name="SEG_C" />
            <blockpin signalname="XLXN_101" name="SEG_D" />
            <blockpin signalname="XLXN_105" name="SEG_E" />
            <blockpin signalname="XLXN_109" name="SEG_F" />
            <blockpin signalname="XLXN_93" name="SEG_B" />
            <blockpin signalname="XLXN_113" name="SEG_G" />
            <blockpin name="CE_O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_35">
            <blockpin signalname="XLXN_110" name="D0" />
            <blockpin signalname="XLXN_111" name="D1" />
            <blockpin signalname="XLXN_112" name="D2" />
            <blockpin signalname="XLXN_113" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_G" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_24">
            <blockpin signalname="XLXN_86" name="D0" />
            <blockpin signalname="XLXN_87" name="D1" />
            <blockpin signalname="XLXN_88" name="D2" />
            <blockpin signalname="XLXN_89" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_A" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_31">
            <blockpin signalname="XLXN_90" name="D0" />
            <blockpin signalname="XLXN_91" name="D1" />
            <blockpin signalname="XLXN_92" name="D2" />
            <blockpin signalname="XLXN_93" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_B" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_32">
            <blockpin signalname="XLXN_94" name="D0" />
            <blockpin signalname="XLXN_95" name="D1" />
            <blockpin signalname="XLXN_96" name="D2" />
            <blockpin signalname="XLXN_97" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_C" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_33">
            <blockpin signalname="XLXN_98" name="D0" />
            <blockpin signalname="XLXN_99" name="D1" />
            <blockpin signalname="XLXN_100" name="D2" />
            <blockpin signalname="XLXN_101" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_D" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_34">
            <blockpin signalname="XLXN_102" name="D0" />
            <blockpin signalname="XLXN_103" name="D1" />
            <blockpin signalname="XLXN_104" name="D2" />
            <blockpin signalname="XLXN_105" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_E" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_36">
            <blockpin signalname="XLXN_106" name="D0" />
            <blockpin signalname="XLXN_107" name="D1" />
            <blockpin signalname="XLXN_108" name="D2" />
            <blockpin signalname="XLXN_109" name="D3" />
            <blockpin signalname="COUNT_EN" name="E" />
            <blockpin signalname="XLXN_84" name="S0" />
            <blockpin signalname="XLXN_85" name="S1" />
            <blockpin signalname="SEG_F" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_50">
            <blockpin signalname="SEG_SWITCH" name="C" />
            <blockpin signalname="COUNT_EN" name="CE" />
            <blockpin signalname="RESET" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_84" name="Q0" />
            <blockpin signalname="XLXN_85" name="Q1" />
            <blockpin name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1984" name="REG_2" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-632" type="instance" />
        </instance>
        <instance x="2208" y="1984" name="REG_3" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-632" type="instance" />
        </instance>
        <instance x="2832" y="1984" name="REG_4" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-632" type="instance" />
        </instance>
        <instance x="528" y="976" name="XLXI_24" orien="R270" />
        <instance x="1024" y="976" name="XLXI_31" orien="R270" />
        <instance x="1520" y="976" name="XLXI_32" orien="R270" />
        <instance x="2016" y="976" name="XLXI_33" orien="R270" />
        <instance x="2496" y="976" name="XLXI_34" orien="R270" />
        <instance x="2992" y="976" name="XLXI_36" orien="R270" />
        <instance x="3472" y="976" name="XLXI_35" orien="R270" />
        <branch name="DIRECTION">
            <wire x2="624" y1="2080" y2="2080" x1="384" />
            <wire x2="1248" y1="2080" y2="2080" x1="624" />
            <wire x2="1872" y1="2080" y2="2080" x1="1248" />
            <wire x2="2496" y1="2080" y2="2080" x1="1872" />
            <wire x2="624" y1="1984" y2="2080" x1="624" />
            <wire x2="1248" y1="1984" y2="2080" x1="1248" />
            <wire x2="1872" y1="1984" y2="2080" x1="1872" />
            <wire x2="2496" y1="1984" y2="2080" x1="2496" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="928" y1="1536" y2="1600" x1="928" />
            <wire x2="992" y1="1536" y2="1536" x1="928" />
            <wire x2="992" y1="1536" y2="2048" x1="992" />
            <wire x2="1392" y1="2048" y2="2048" x1="992" />
            <wire x2="1392" y1="1984" y2="2048" x1="1392" />
        </branch>
        <instance x="960" y="1984" name="REG_1" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-632" type="instance" />
        </instance>
        <branch name="XLXN_65">
            <wire x2="1552" y1="1584" y2="1600" x1="1552" />
            <wire x2="1616" y1="1584" y2="1584" x1="1552" />
            <wire x2="1616" y1="1584" y2="2016" x1="1616" />
            <wire x2="2016" y1="2016" y2="2016" x1="1616" />
            <wire x2="2016" y1="1984" y2="2016" x1="2016" />
        </branch>
        <branch name="COUNT">
            <wire x2="480" y1="2032" y2="2032" x1="384" />
            <wire x2="1104" y1="2032" y2="2032" x1="480" />
            <wire x2="1728" y1="2032" y2="2032" x1="1104" />
            <wire x2="2352" y1="2032" y2="2032" x1="1728" />
            <wire x2="480" y1="1984" y2="2032" x1="480" />
            <wire x2="1104" y1="1984" y2="2032" x1="1104" />
            <wire x2="1728" y1="1984" y2="2032" x1="1728" />
            <wire x2="2352" y1="1984" y2="2032" x1="2352" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="2176" y1="1584" y2="1600" x1="2176" />
            <wire x2="2240" y1="1584" y2="1584" x1="2176" />
            <wire x2="2240" y1="1584" y2="2000" x1="2240" />
            <wire x2="2640" y1="2000" y2="2000" x1="2240" />
            <wire x2="2640" y1="1984" y2="2000" x1="2640" />
        </branch>
        <branch name="RESET">
            <wire x2="912" y1="2128" y2="2128" x1="384" />
            <wire x2="1536" y1="2128" y2="2128" x1="912" />
            <wire x2="2160" y1="2128" y2="2128" x1="1536" />
            <wire x2="2784" y1="2128" y2="2128" x1="2160" />
            <wire x2="3312" y1="2128" y2="2128" x1="2784" />
            <wire x2="912" y1="1984" y2="2128" x1="912" />
            <wire x2="1536" y1="1984" y2="2128" x1="1536" />
            <wire x2="2160" y1="1984" y2="2128" x1="2160" />
            <wire x2="2784" y1="1984" y2="2128" x1="2784" />
            <wire x2="3312" y1="2000" y2="2128" x1="3312" />
        </branch>
        <instance x="3344" y="2000" name="XLXI_50" orien="R270" />
        <branch name="XLXN_84">
            <wire x2="368" y1="976" y2="1488" x1="368" />
            <wire x2="896" y1="1488" y2="1488" x1="368" />
            <wire x2="1376" y1="1488" y2="1488" x1="896" />
            <wire x2="1872" y1="1488" y2="1488" x1="1376" />
            <wire x2="2336" y1="1488" y2="1488" x1="1872" />
            <wire x2="2832" y1="1488" y2="1488" x1="2336" />
            <wire x2="3024" y1="1488" y2="1488" x1="2832" />
            <wire x2="3024" y1="1488" y2="1616" x1="3024" />
            <wire x2="3312" y1="1488" y2="1488" x1="3024" />
            <wire x2="864" y1="976" y2="1200" x1="864" />
            <wire x2="896" y1="1200" y2="1200" x1="864" />
            <wire x2="896" y1="1200" y2="1488" x1="896" />
            <wire x2="1360" y1="976" y2="1184" x1="1360" />
            <wire x2="1376" y1="1184" y2="1184" x1="1360" />
            <wire x2="1376" y1="1184" y2="1488" x1="1376" />
            <wire x2="1856" y1="976" y2="1168" x1="1856" />
            <wire x2="1872" y1="1168" y2="1168" x1="1856" />
            <wire x2="1872" y1="1168" y2="1488" x1="1872" />
            <wire x2="2336" y1="976" y2="1488" x1="2336" />
            <wire x2="2832" y1="976" y2="1488" x1="2832" />
            <wire x2="3312" y1="976" y2="1488" x1="3312" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="432" y1="976" y2="1440" x1="432" />
            <wire x2="928" y1="1440" y2="1440" x1="432" />
            <wire x2="1456" y1="1440" y2="1440" x1="928" />
            <wire x2="1936" y1="1440" y2="1440" x1="1456" />
            <wire x2="2400" y1="1440" y2="1440" x1="1936" />
            <wire x2="2896" y1="1440" y2="1440" x1="2400" />
            <wire x2="3088" y1="1440" y2="1440" x1="2896" />
            <wire x2="3088" y1="1440" y2="1616" x1="3088" />
            <wire x2="3376" y1="1440" y2="1440" x1="3088" />
            <wire x2="928" y1="976" y2="1440" x1="928" />
            <wire x2="1424" y1="976" y2="1184" x1="1424" />
            <wire x2="1456" y1="1184" y2="1184" x1="1424" />
            <wire x2="1456" y1="1184" y2="1440" x1="1456" />
            <wire x2="1920" y1="976" y2="1168" x1="1920" />
            <wire x2="1936" y1="1168" y2="1168" x1="1920" />
            <wire x2="1936" y1="1168" y2="1440" x1="1936" />
            <wire x2="2400" y1="976" y2="1440" x1="2400" />
            <wire x2="2896" y1="976" y2="1440" x1="2896" />
            <wire x2="3376" y1="976" y2="1440" x1="3376" />
        </branch>
        <branch name="COUNT_EN">
            <wire x2="768" y1="2176" y2="2176" x1="384" />
            <wire x2="3152" y1="2176" y2="2176" x1="768" />
            <wire x2="3440" y1="2176" y2="2176" x1="3152" />
            <wire x2="496" y1="976" y2="1136" x1="496" />
            <wire x2="992" y1="1136" y2="1136" x1="496" />
            <wire x2="1488" y1="1136" y2="1136" x1="992" />
            <wire x2="1984" y1="1136" y2="1136" x1="1488" />
            <wire x2="2464" y1="1136" y2="1136" x1="1984" />
            <wire x2="2960" y1="1136" y2="1136" x1="2464" />
            <wire x2="3440" y1="1136" y2="1136" x1="2960" />
            <wire x2="3440" y1="1136" y2="2176" x1="3440" />
            <wire x2="768" y1="1984" y2="2176" x1="768" />
            <wire x2="992" y1="976" y2="1136" x1="992" />
            <wire x2="1488" y1="976" y2="1136" x1="1488" />
            <wire x2="1984" y1="976" y2="1136" x1="1984" />
            <wire x2="2464" y1="976" y2="1136" x1="2464" />
            <wire x2="2960" y1="976" y2="1136" x1="2960" />
            <wire x2="3152" y1="2000" y2="2176" x1="3152" />
            <wire x2="3440" y1="976" y2="1136" x1="3440" />
        </branch>
        <branch name="SEG_SWITCH">
            <wire x2="3216" y1="2256" y2="2256" x1="384" />
            <wire x2="3216" y1="2000" y2="2256" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="384" y="2032" name="COUNT" orien="R180" />
        <iomarker fontsize="28" x="384" y="2080" name="DIRECTION" orien="R180" />
        <iomarker fontsize="28" x="384" y="2128" name="RESET" orien="R180" />
        <iomarker fontsize="28" x="384" y="2176" name="COUNT_EN" orien="R180" />
        <iomarker fontsize="28" x="384" y="2256" name="SEG_SWITCH" orien="R180" />
        <branch name="SEG_A">
            <wire x2="208" y1="624" y2="656" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="624" name="SEG_A" orien="R270" />
        <branch name="SEG_B">
            <wire x2="704" y1="624" y2="656" x1="704" />
        </branch>
        <iomarker fontsize="28" x="704" y="624" name="SEG_B" orien="R270" />
        <branch name="SEG_C">
            <wire x2="1200" y1="624" y2="656" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1200" y="624" name="SEG_C" orien="R270" />
        <branch name="SEG_D">
            <wire x2="1696" y1="624" y2="656" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1696" y="624" name="SEG_D" orien="R270" />
        <branch name="SEG_E">
            <wire x2="2176" y1="624" y2="656" x1="2176" />
        </branch>
        <iomarker fontsize="28" x="2176" y="624" name="SEG_E" orien="R270" />
        <branch name="SEG_F">
            <wire x2="2672" y1="624" y2="656" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2672" y="624" name="SEG_F" orien="R270" />
        <branch name="SEG_G">
            <wire x2="3152" y1="624" y2="656" x1="3152" />
        </branch>
        <iomarker fontsize="28" x="3152" y="624" name="SEG_G" orien="R270" />
        <branch name="XLXN_86">
            <wire x2="112" y1="976" y2="1280" x1="112" />
            <wire x2="480" y1="1280" y2="1280" x1="112" />
            <wire x2="480" y1="1280" y2="1600" x1="480" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="176" y1="976" y2="1264" x1="176" />
            <wire x2="1104" y1="1264" y2="1264" x1="176" />
            <wire x2="1104" y1="1264" y2="1600" x1="1104" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="240" y1="976" y2="1248" x1="240" />
            <wire x2="1728" y1="1248" y2="1248" x1="240" />
            <wire x2="1728" y1="1248" y2="1600" x1="1728" />
        </branch>
        <branch name="XLXN_89">
            <wire x2="304" y1="976" y2="1232" x1="304" />
            <wire x2="2352" y1="1232" y2="1232" x1="304" />
            <wire x2="2352" y1="1232" y2="1600" x1="2352" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="608" y1="976" y2="1280" x1="608" />
            <wire x2="800" y1="1280" y2="1280" x1="608" />
            <wire x2="800" y1="1280" y2="1600" x1="800" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="672" y1="976" y2="1296" x1="672" />
            <wire x2="1424" y1="1296" y2="1296" x1="672" />
            <wire x2="1424" y1="1296" y2="1600" x1="1424" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="736" y1="976" y2="1312" x1="736" />
            <wire x2="2048" y1="1312" y2="1312" x1="736" />
            <wire x2="2048" y1="1312" y2="1600" x1="2048" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="800" y1="976" y2="1216" x1="800" />
            <wire x2="2672" y1="1216" y2="1216" x1="800" />
            <wire x2="2672" y1="1216" y2="1600" x1="2672" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="544" y1="1184" y2="1600" x1="544" />
            <wire x2="1104" y1="1184" y2="1184" x1="544" />
            <wire x2="1104" y1="976" y2="1184" x1="1104" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="1168" y1="976" y2="1600" x1="1168" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="1232" y1="976" y2="1280" x1="1232" />
            <wire x2="1792" y1="1280" y2="1280" x1="1232" />
            <wire x2="1792" y1="1280" y2="1600" x1="1792" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="1296" y1="976" y2="1264" x1="1296" />
            <wire x2="2416" y1="1264" y2="1264" x1="1296" />
            <wire x2="2416" y1="1264" y2="1600" x1="2416" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="608" y1="1328" y2="1600" x1="608" />
            <wire x2="1600" y1="1328" y2="1328" x1="608" />
            <wire x2="1600" y1="976" y2="1328" x1="1600" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="1232" y1="1344" y2="1600" x1="1232" />
            <wire x2="1664" y1="1344" y2="1344" x1="1232" />
            <wire x2="1664" y1="976" y2="1344" x1="1664" />
        </branch>
        <branch name="XLXN_100">
            <wire x2="1728" y1="976" y2="1200" x1="1728" />
            <wire x2="1856" y1="1200" y2="1200" x1="1728" />
            <wire x2="1856" y1="1200" y2="1600" x1="1856" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="1792" y1="976" y2="1248" x1="1792" />
            <wire x2="2480" y1="1248" y2="1248" x1="1792" />
            <wire x2="2480" y1="1248" y2="1600" x1="2480" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="672" y1="1360" y2="1600" x1="672" />
            <wire x2="2080" y1="1360" y2="1360" x1="672" />
            <wire x2="2080" y1="976" y2="1360" x1="2080" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="1296" y1="1376" y2="1600" x1="1296" />
            <wire x2="2144" y1="1376" y2="1376" x1="1296" />
            <wire x2="2144" y1="976" y2="1376" x1="2144" />
        </branch>
        <branch name="XLXN_104">
            <wire x2="1920" y1="1280" y2="1600" x1="1920" />
            <wire x2="2208" y1="1280" y2="1280" x1="1920" />
            <wire x2="2208" y1="976" y2="1280" x1="2208" />
        </branch>
        <branch name="XLXN_105">
            <wire x2="2272" y1="976" y2="1280" x1="2272" />
            <wire x2="2544" y1="1280" y2="1280" x1="2272" />
            <wire x2="2544" y1="1280" y2="1600" x1="2544" />
        </branch>
        <branch name="XLXN_106">
            <wire x2="736" y1="1520" y2="1600" x1="736" />
            <wire x2="2576" y1="1520" y2="1520" x1="736" />
            <wire x2="2576" y1="976" y2="1520" x1="2576" />
        </branch>
        <branch name="XLXN_107">
            <wire x2="1360" y1="1568" y2="1600" x1="1360" />
            <wire x2="2640" y1="1568" y2="1568" x1="1360" />
            <wire x2="2640" y1="976" y2="1568" x1="2640" />
        </branch>
        <branch name="XLXN_108">
            <wire x2="1984" y1="1296" y2="1600" x1="1984" />
            <wire x2="2704" y1="1296" y2="1296" x1="1984" />
            <wire x2="2704" y1="976" y2="1296" x1="2704" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="2608" y1="1280" y2="1600" x1="2608" />
            <wire x2="2768" y1="1280" y2="1280" x1="2608" />
            <wire x2="2768" y1="976" y2="1280" x1="2768" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="864" y1="1456" y2="1600" x1="864" />
            <wire x2="3056" y1="1456" y2="1456" x1="864" />
            <wire x2="3056" y1="976" y2="1456" x1="3056" />
        </branch>
        <branch name="XLXN_111">
            <wire x2="1488" y1="1184" y2="1600" x1="1488" />
            <wire x2="3120" y1="1184" y2="1184" x1="1488" />
            <wire x2="3120" y1="976" y2="1184" x1="3120" />
        </branch>
        <branch name="XLXN_112">
            <wire x2="2112" y1="1312" y2="1600" x1="2112" />
            <wire x2="3184" y1="1312" y2="1312" x1="2112" />
            <wire x2="3184" y1="976" y2="1312" x1="3184" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="2736" y1="1264" y2="1600" x1="2736" />
            <wire x2="3248" y1="1264" y2="1264" x1="2736" />
            <wire x2="3248" y1="976" y2="1264" x1="3248" />
        </branch>
    </sheet>
</drawing>