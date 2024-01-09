<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_247" />
        <signal name="XLXN_246" />
        <signal name="XLXN_245" />
        <signal name="XLXN_244" />
        <signal name="XLXN_243" />
        <signal name="XLXN_322" />
        <signal name="XLXN_323" />
        <signal name="XLXN_324" />
        <signal name="XLXN_325" />
        <signal name="XLXN_328" />
        <signal name="XLXN_330" />
        <signal name="XLXN_332" />
        <signal name="XLXN_333" />
        <signal name="XLXN_337" />
        <signal name="XLXN_340" />
        <signal name="XLXN_344" />
        <signal name="XLXN_347" />
        <signal name="XLXN_350" />
        <signal name="XLXN_354" />
        <signal name="XLXN_357" />
        <signal name="XLXN_360" />
        <signal name="XLXN_363" />
        <signal name="XLXN_364" />
        <signal name="XLXN_365" />
        <signal name="XLXN_366" />
        <signal name="XLXN_101" />
        <signal name="XLXN_369" />
        <signal name="XLXN_371" />
        <signal name="XLXN_373" />
        <signal name="XLXN_374" />
        <signal name="Q0" />
        <signal name="XLXN_378" />
        <signal name="XLXN_381" />
        <signal name="XLXN_385" />
        <signal name="XLXN_388" />
        <signal name="XLXN_391" />
        <signal name="DIR" />
        <signal name="XLXN_395" />
        <signal name="XLXN_398" />
        <signal name="XLXN_401" />
        <signal name="RST" />
        <signal name="COUNT" />
        <signal name="XLXN_186" />
        <signal name="XLXN_65" />
        <signal name="XLXN_416" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_97" />
        <signal name="XLXN_421" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <signal name="XLXN_424" />
        <signal name="XLXN_429" />
        <signal name="XLXN_430" />
        <signal name="XLXN_431" />
        <signal name="XLXN_432" />
        <signal name="XLXN_436" />
        <signal name="Q3" />
        <signal name="XLXN_441" />
        <signal name="Q1" />
        <signal name="XLXN_443" />
        <signal name="Q2" />
        <signal name="XLXN_216" />
        <signal name="XLXN_446" />
        <signal name="XLXN_116" />
        <signal name="XLXN_449" />
        <signal name="XLXN_115" />
        <signal name="XLXN_113" />
        <signal name="XLXN_197" />
        <signal name="XLXN_453" />
        <signal name="XLXN_109" />
        <signal name="XLXN_108" />
        <signal name="XLXN_456" />
        <signal name="XLXN_107" />
        <signal name="XLXN_105" />
        <signal name="XLXN_465" />
        <signal name="XLXN_68" />
        <signal name="XLXN_467" />
        <signal name="XLXN_468" />
        <signal name="XLXN_470" />
        <signal name="XLXN_471" />
        <signal name="XLXN_472" />
        <signal name="XLXN_473" />
        <signal name="XLXN_474" />
        <signal name="XLXN_475" />
        <signal name="XLXN_476" />
        <signal name="XLXN_477" />
        <signal name="XLXN_480" />
        <signal name="XLXN_489" />
        <signal name="XLXN_490" />
        <signal name="XLXN_493" />
        <signal name="XLXN_496" />
        <signal name="XLXN_497" />
        <port polarity="Input" name="XLXN_101" />
        <port polarity="Output" name="Q0" />
        <port polarity="Input" name="DIR" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="COUNT" />
        <port polarity="Output" name="Q3" />
        <port polarity="Output" name="Q1" />
        <port polarity="Output" name="Q2" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="DIR" name="I" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_65" name="I0" />
            <blockpin signalname="COUNT" name="I1" />
            <blockpin signalname="XLXN_429" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="COUNT" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="XLXN_430" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_430" name="I0" />
            <blockpin signalname="XLXN_429" name="I1" />
            <blockpin signalname="XLXN_470" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_73">
            <blockpin signalname="XLXN_97" name="I0" />
            <blockpin signalname="Q0" name="I1" />
            <blockpin signalname="XLXN_431" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_74">
            <blockpin signalname="XLXN_186" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="XLXN_432" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_75">
            <blockpin signalname="DIR" name="I" />
            <blockpin signalname="XLXN_97" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_76">
            <blockpin signalname="XLXN_432" name="I0" />
            <blockpin signalname="XLXN_431" name="I1" />
            <blockpin signalname="RST" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="Q0" name="I" />
            <blockpin signalname="XLXN_186" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_251">
            <blockpin signalname="XLXN_470" name="I0" />
            <blockpin name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_158">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_109" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_84">
            <blockpin signalname="Q2" name="I" />
            <blockpin signalname="XLXN_216" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_89">
            <blockpin signalname="XLXN_496" name="C" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_109" name="T" />
            <blockpin signalname="Q3" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_88">
            <blockpin signalname="XLXN_116" name="I0" />
            <blockpin signalname="XLXN_115" name="I1" />
            <blockpin signalname="XLXN_497" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_87">
            <blockpin signalname="DIR" name="I" />
            <blockpin signalname="XLXN_113" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_86">
            <blockpin signalname="XLXN_216" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="XLXN_116" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_85">
            <blockpin signalname="XLXN_113" name="I0" />
            <blockpin signalname="Q2" name="I1" />
            <blockpin signalname="XLXN_115" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_78">
            <blockpin signalname="Q1" name="I" />
            <blockpin signalname="XLXN_197" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_83">
            <blockpin signalname="XLXN_493" name="C" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_109" name="T" />
            <blockpin signalname="Q2" name="Q" />
        </block>
        <block symbolname="or2" name="XLXI_82">
            <blockpin signalname="XLXN_108" name="I0" />
            <blockpin signalname="XLXN_107" name="I1" />
            <blockpin signalname="XLXN_493" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_81">
            <blockpin signalname="DIR" name="I" />
            <blockpin signalname="XLXN_105" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_80">
            <blockpin signalname="XLXN_197" name="I0" />
            <blockpin signalname="DIR" name="I1" />
            <blockpin signalname="XLXN_108" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_79">
            <blockpin signalname="XLXN_105" name="I0" />
            <blockpin signalname="Q1" name="I1" />
            <blockpin signalname="XLXN_107" name="O" />
        </block>
        <block symbolname="ftc" name="XLXI_77">
            <blockpin signalname="XLXN_109" name="C" />
            <blockpin signalname="RST" name="CLR" />
            <blockpin signalname="XLXN_109" name="T" />
            <blockpin signalname="Q1" name="Q" />
        </block>
        <block symbolname="ftc" name="XLXI_5">
            <blockpin signalname="XLXN_68" name="C" />
            <blockpin signalname="XLXN_109" name="CLR" />
            <blockpin signalname="XLXN_109" name="T" />
            <blockpin signalname="Q0" name="Q" />
        </block>
        <block symbolname="xor2" name="XLXI_267">
            <blockpin signalname="XLXN_497" name="I0" />
            <blockpin name="I1" />
            <blockpin signalname="XLXN_496" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="COUNT">
            <wire x2="512" y1="688" y2="688" x1="368" />
            <wire x2="512" y1="688" y2="1088" x1="512" />
            <wire x2="528" y1="1088" y2="1088" x1="512" />
            <wire x2="528" y1="688" y2="688" x1="512" />
        </branch>
        <branch name="XLXN_186">
            <wire x2="368" y1="1648" y2="1744" x1="368" />
            <wire x2="528" y1="1744" y2="1744" x1="368" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="528" y1="752" y2="752" x1="368" />
            <wire x2="368" y1="752" y2="768" x1="368" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="448" y1="1408" y2="1424" x1="448" />
            <wire x2="528" y1="1408" y2="1408" x1="448" />
        </branch>
        <instance x="400" y="992" name="XLXI_3" orien="R270" />
        <instance x="528" y="816" name="XLXI_1" orien="R0" />
        <instance x="528" y="1152" name="XLXI_2" orien="R0" />
        <instance x="592" y="992" name="XLXI_4" orien="R0" />
        <instance x="528" y="1472" name="XLXI_73" orien="R0" />
        <instance x="528" y="1808" name="XLXI_74" orien="R0" />
        <instance x="480" y="1648" name="XLXI_75" orien="R270" />
        <instance x="592" y="1648" name="XLXI_76" orien="R0" />
        <instance x="336" y="1424" name="XLXI_6" orien="R90" />
        <iomarker fontsize="28" x="224" y="1936" name="DIR" orien="R90" />
        <iomarker fontsize="28" x="368" y="688" name="COUNT" orien="R180" />
        <branch name="XLXN_429">
            <wire x2="576" y1="800" y2="864" x1="576" />
            <wire x2="592" y1="864" y2="864" x1="576" />
            <wire x2="864" y1="800" y2="800" x1="576" />
            <wire x2="864" y1="720" y2="720" x1="784" />
            <wire x2="864" y1="720" y2="800" x1="864" />
        </branch>
        <branch name="XLXN_430">
            <wire x2="592" y1="928" y2="928" x1="576" />
            <wire x2="576" y1="928" y2="976" x1="576" />
            <wire x2="880" y1="976" y2="976" x1="576" />
            <wire x2="880" y1="976" y2="1056" x1="880" />
            <wire x2="880" y1="1056" y2="1056" x1="784" />
        </branch>
        <branch name="XLXN_431">
            <wire x2="576" y1="1456" y2="1520" x1="576" />
            <wire x2="592" y1="1520" y2="1520" x1="576" />
            <wire x2="832" y1="1456" y2="1456" x1="576" />
            <wire x2="832" y1="1376" y2="1376" x1="784" />
            <wire x2="832" y1="1376" y2="1456" x1="832" />
        </branch>
        <branch name="XLXN_432">
            <wire x2="592" y1="1584" y2="1584" x1="576" />
            <wire x2="576" y1="1584" y2="1632" x1="576" />
            <wire x2="880" y1="1632" y2="1632" x1="576" />
            <wire x2="880" y1="1632" y2="1712" x1="880" />
            <wire x2="880" y1="1712" y2="1712" x1="784" />
        </branch>
        <branch name="Q3">
            <wire x2="3312" y1="1328" y2="1328" x1="3184" />
        </branch>
        <branch name="Q1">
            <wire x2="1632" y1="1392" y2="1392" x1="1600" />
            <wire x2="1632" y1="1392" y2="1488" x1="1632" />
            <wire x2="1760" y1="1392" y2="1392" x1="1632" />
            <wire x2="1760" y1="688" y2="1392" x1="1760" />
            <wire x2="1824" y1="688" y2="688" x1="1760" />
            <wire x2="1824" y1="688" y2="816" x1="1824" />
            <wire x2="1936" y1="688" y2="688" x1="1824" />
        </branch>
        <branch name="Q2">
            <wire x2="1872" y1="1216" y2="1280" x1="1872" />
            <wire x2="1872" y1="1280" y2="1344" x1="1872" />
            <wire x2="1984" y1="1280" y2="1280" x1="1872" />
            <wire x2="3248" y1="1216" y2="1216" x1="1872" />
            <wire x2="3248" y1="784" y2="784" x1="3168" />
            <wire x2="3248" y1="784" y2="1216" x1="3248" />
            <wire x2="3248" y1="704" y2="784" x1="3248" />
        </branch>
        <branch name="XLXN_216">
            <wire x2="1872" y1="1568" y2="1680" x1="1872" />
            <wire x2="2032" y1="1680" y2="1680" x1="1872" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="1952" y1="1344" y2="1360" x1="1952" />
            <wire x2="1984" y1="1344" y2="1344" x1="1952" />
        </branch>
        <branch name="XLXN_197">
            <wire x2="1824" y1="1040" y2="1136" x1="1824" />
            <wire x2="2000" y1="1136" y2="1136" x1="1824" />
        </branch>
        <instance x="2800" y="1584" name="XLXI_89" orien="R0" />
        <instance x="2784" y="1040" name="XLXI_83" orien="R0" />
        <iomarker fontsize="28" x="1584" y="1936" name="RST" orien="R90" />
        <iomarker fontsize="28" x="3312" y="1328" name="Q3" orien="R0" />
        <iomarker fontsize="28" x="3248" y="704" name="Q2" orien="R270" />
        <branch name="Q0">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1376" type="branch" />
            <wire x2="464" y1="1344" y2="1344" x1="368" />
            <wire x2="528" y1="1344" y2="1344" x1="464" />
            <wire x2="368" y1="1344" y2="1376" x1="368" />
            <wire x2="368" y1="1376" y2="1424" x1="368" />
            <wire x2="464" y1="1200" y2="1344" x1="464" />
            <wire x2="1728" y1="1200" y2="1200" x1="464" />
            <wire x2="1728" y1="736" y2="736" x1="1680" />
            <wire x2="1728" y1="736" y2="1200" x1="1728" />
            <wire x2="1728" y1="704" y2="736" x1="1728" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="1296" y1="864" y2="864" x1="1216" />
        </branch>
        <branch name="XLXN_470">
            <wire x2="960" y1="896" y2="896" x1="848" />
        </branch>
        <instance x="960" y="960" name="XLXI_251" orien="R0" />
        <instance x="896" y="544" name="XLXI_158" orien="R0">
        </instance>
        <branch name="RST">
            <wire x2="880" y1="1552" y2="1552" x1="848" />
            <wire x2="880" y1="1520" y2="1552" x1="880" />
            <wire x2="928" y1="1520" y2="1520" x1="880" />
            <wire x2="928" y1="1520" y2="1616" x1="928" />
            <wire x2="928" y1="1616" y2="1760" x1="928" />
            <wire x2="1584" y1="1760" y2="1760" x1="928" />
            <wire x2="1584" y1="1760" y2="1936" x1="1584" />
            <wire x2="2800" y1="1760" y2="1760" x1="1584" />
            <wire x2="3216" y1="1760" y2="1760" x1="2800" />
            <wire x2="1216" y1="1616" y2="1616" x1="928" />
            <wire x2="2784" y1="1008" y2="1072" x1="2784" />
            <wire x2="3216" y1="1072" y2="1072" x1="2784" />
            <wire x2="3216" y1="1072" y2="1760" x1="3216" />
            <wire x2="2800" y1="1552" y2="1760" x1="2800" />
        </branch>
        <branch name="XLXN_109">
            <wire x2="1056" y1="736" y2="736" x1="912" />
            <wire x2="1232" y1="736" y2="736" x1="1056" />
            <wire x2="1232" y1="736" y2="976" x1="1232" />
            <wire x2="1296" y1="736" y2="736" x1="1232" />
            <wire x2="912" y1="736" y2="1392" x1="912" />
            <wire x2="1136" y1="1392" y2="1392" x1="912" />
            <wire x2="1136" y1="1392" y2="1520" x1="1136" />
            <wire x2="1216" y1="1520" y2="1520" x1="1136" />
            <wire x2="1056" y1="576" y2="576" x1="1040" />
            <wire x2="2752" y1="576" y2="576" x1="1056" />
            <wire x2="2752" y1="576" y2="784" x1="2752" />
            <wire x2="2752" y1="784" y2="896" x1="2752" />
            <wire x2="2768" y1="896" y2="896" x1="2752" />
            <wire x2="2768" y1="896" y2="1328" x1="2768" />
            <wire x2="2800" y1="1328" y2="1328" x1="2768" />
            <wire x2="2784" y1="784" y2="784" x1="2752" />
            <wire x2="1056" y1="576" y2="736" x1="1056" />
            <wire x2="1296" y1="960" y2="960" x1="1136" />
            <wire x2="1136" y1="960" y2="1392" x1="1136" />
            <wire x2="1232" y1="976" y2="976" x1="1152" />
            <wire x2="1152" y1="976" y2="1392" x1="1152" />
            <wire x2="1216" y1="1392" y2="1392" x1="1152" />
        </branch>
        <instance x="1216" y="1648" name="XLXI_77" orien="R0" />
        <instance x="1296" y="992" name="XLXI_5" orien="R0" />
        <iomarker fontsize="28" x="1728" y="704" name="Q0" orien="R270" />
        <iomarker fontsize="28" x="1632" y="1488" name="Q1" orien="R90" />
        <instance x="1792" y="816" name="XLXI_78" orien="R90" />
        <instance x="1840" y="1344" name="XLXI_84" orien="R90" />
        <instance x="1984" y="1584" name="XLXI_87" orien="R270" />
        <branch name="DIR">
            <wire x2="368" y1="1024" y2="1024" x1="224" />
            <wire x2="528" y1="1024" y2="1024" x1="368" />
            <wire x2="224" y1="1024" y2="1680" x1="224" />
            <wire x2="224" y1="1680" y2="1936" x1="224" />
            <wire x2="448" y1="1680" y2="1680" x1="224" />
            <wire x2="528" y1="1680" y2="1680" x1="448" />
            <wire x2="448" y1="1680" y2="1840" x1="448" />
            <wire x2="1952" y1="1840" y2="1840" x1="448" />
            <wire x2="368" y1="992" y2="1024" x1="368" />
            <wire x2="448" y1="1648" y2="1680" x1="448" />
            <wire x2="1952" y1="1584" y2="1840" x1="1952" />
        </branch>
        <branch name="DIR">
            <wire x2="1920" y1="1072" y2="1072" x1="1792" />
            <wire x2="2000" y1="1072" y2="1072" x1="1920" />
            <wire x2="1792" y1="1072" y2="1616" x1="1792" />
            <wire x2="2032" y1="1616" y2="1616" x1="1792" />
            <wire x2="1920" y1="1024" y2="1072" x1="1920" />
        </branch>
        <instance x="1952" y="1024" name="XLXI_81" orien="R270" />
        <instance x="1984" y="1408" name="XLXI_85" orien="R0" />
        <instance x="2224" y="1568" name="XLXI_88" orien="R0" />
        <branch name="XLXN_115">
            <wire x2="2144" y1="1376" y2="1440" x1="2144" />
            <wire x2="2224" y1="1440" y2="1440" x1="2144" />
            <wire x2="2320" y1="1376" y2="1376" x1="2144" />
            <wire x2="2320" y1="1312" y2="1312" x1="2240" />
            <wire x2="2320" y1="1312" y2="1376" x1="2320" />
        </branch>
        <branch name="XLXN_116">
            <wire x2="2224" y1="1504" y2="1504" x1="2208" />
            <wire x2="2208" y1="1504" y2="1584" x1="2208" />
            <wire x2="2352" y1="1584" y2="1584" x1="2208" />
            <wire x2="2352" y1="1584" y2="1648" x1="2352" />
            <wire x2="2352" y1="1648" y2="1648" x1="2288" />
        </branch>
        <instance x="2032" y="1744" name="XLXI_86" orien="R0" />
        <instance x="2000" y="1200" name="XLXI_80" orien="R0" />
        <instance x="2304" y="1040" name="XLXI_82" orien="R0" />
        <branch name="XLXN_107">
            <wire x2="2288" y1="720" y2="720" x1="2192" />
            <wire x2="2288" y1="720" y2="912" x1="2288" />
            <wire x2="2304" y1="912" y2="912" x1="2288" />
        </branch>
        <branch name="XLXN_108">
            <wire x2="2272" y1="1104" y2="1104" x1="2256" />
            <wire x2="2304" y1="976" y2="976" x1="2272" />
            <wire x2="2272" y1="976" y2="1104" x1="2272" />
        </branch>
        <branch name="XLXN_493">
            <wire x2="2656" y1="944" y2="944" x1="2560" />
            <wire x2="2656" y1="912" y2="944" x1="2656" />
            <wire x2="2784" y1="912" y2="912" x1="2656" />
        </branch>
        <instance x="1936" y="816" name="XLXI_79" orien="R0" />
        <branch name="XLXN_105">
            <wire x2="1936" y1="752" y2="752" x1="1920" />
            <wire x2="1920" y1="752" y2="800" x1="1920" />
        </branch>
        <branch name="XLXN_496">
            <wire x2="2800" y1="1456" y2="1456" x1="2768" />
        </branch>
        <instance x="2512" y="1552" name="XLXI_267" orien="R0" />
        <branch name="XLXN_497">
            <wire x2="2496" y1="1472" y2="1472" x1="2480" />
            <wire x2="2496" y1="1472" y2="1488" x1="2496" />
            <wire x2="2512" y1="1488" y2="1488" x1="2496" />
        </branch>
    </sheet>
</drawing>