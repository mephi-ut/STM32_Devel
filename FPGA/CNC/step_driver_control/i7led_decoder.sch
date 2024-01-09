<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_359" />
        <signal name="XLXN_372" />
        <signal name="XLXN_373" />
        <signal name="XLXN_374" />
        <signal name="XLXN_375" />
        <signal name="SEG_A" />
        <signal name="XLXN_377" />
        <signal name="XLXN_382" />
        <signal name="XLXN_385" />
        <signal name="XLXN_388" />
        <signal name="SEG_C" />
        <signal name="XLXN_390" />
        <signal name="XLXN_391" />
        <signal name="XLXN_392" />
        <signal name="SEG_D" />
        <signal name="SEG_E" />
        <signal name="SEG_F" />
        <signal name="XLXN_397" />
        <signal name="XLXN_383" />
        <signal name="SEG_B" />
        <signal name="SEG_G" />
        <signal name="XLXN_404" />
        <signal name="XLXN_408" />
        <signal name="COUNT" />
        <signal name="DIR" />
        <signal name="XLXN_441" />
        <signal name="XLXN_444" />
        <signal name="COUNT_EN" />
        <signal name="XLXN_475" />
        <signal name="XLXN_476" />
        <signal name="CE_O" />
        <signal name="XLXN_555" />
        <signal name="XLXN_556" />
        <signal name="RST" />
        <signal name="XLXN_560" />
        <signal name="XLXN_565" />
        <signal name="XLXN_574" />
        <signal name="XLXN_575" />
        <signal name="XLXN_576" />
        <signal name="XLXN_577" />
        <signal name="XLXN_578" />
        <port polarity="Output" name="SEG_A" />
        <port polarity="Output" name="SEG_C" />
        <port polarity="Output" name="SEG_D" />
        <port polarity="Output" name="SEG_E" />
        <port polarity="Output" name="SEG_F" />
        <port polarity="Output" name="SEG_B" />
        <port polarity="Output" name="SEG_G" />
        <port polarity="Input" name="COUNT" />
        <port polarity="Input" name="DIR" />
        <port polarity="Input" name="COUNT_EN" />
        <port polarity="Output" name="CE_O" />
        <port polarity="Input" name="RST" />
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
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
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
        <blockdef name="and2b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="and5b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and5b5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="40" y1="-320" y2="-320" x1="0" />
            <circle r="12" cx="52" cy="-320" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <block symbolname="cb4cled" name="COUNTER">
            <blockpin signalname="COUNT" name="C" />
            <blockpin signalname="COUNT_EN" name="CE" />
            <blockpin signalname="XLXN_560" name="CLR" />
            <blockpin signalname="XLXN_441" name="D0" />
            <blockpin signalname="XLXN_444" name="D1" />
            <blockpin signalname="XLXN_444" name="D2" />
            <blockpin signalname="XLXN_441" name="D3" />
            <blockpin signalname="XLXN_578" name="L" />
            <blockpin signalname="DIR" name="UP" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_575" name="Q0" />
            <blockpin signalname="XLXN_577" name="Q1" />
            <blockpin signalname="XLXN_576" name="Q2" />
            <blockpin signalname="XLXN_574" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2b1" name="ANDB43">
            <blockpin signalname="XLXN_574" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_373" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_152">
            <blockpin signalname="XLXN_397" name="I0" />
            <blockpin signalname="XLXN_359" name="I1" />
            <blockpin signalname="XLXN_375" name="O" />
        </block>
        <block symbolname="and2b1" name="AND1B2">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_575" name="I1" />
            <blockpin signalname="XLXN_359" name="O" />
        </block>
        <block symbolname="and2b2" name="ANDB4B3">
            <blockpin signalname="XLXN_574" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_397" name="O" />
        </block>
        <block symbolname="xnor2" name="XNOR21">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_575" name="I1" />
            <blockpin signalname="XLXN_372" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_159">
            <blockpin signalname="XLXN_373" name="I0" />
            <blockpin signalname="XLXN_372" name="I1" />
            <blockpin signalname="XLXN_374" name="O" />
        </block>
        <block symbolname="xnor2" name="XNOR32">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_377" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_162">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_377" name="I1" />
            <blockpin signalname="XLXN_383" name="O" />
        </block>
        <block symbolname="and2b1" name="AND2B1_">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_577" name="I1" />
            <blockpin signalname="XLXN_475" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_165">
            <blockpin signalname="XLXN_475" name="I0" />
            <blockpin signalname="XLXN_397" name="I1" />
            <blockpin signalname="XLXN_382" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_167">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_577" name="I1" />
            <blockpin signalname="XLXN_385" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_168">
            <blockpin signalname="XLXN_385" name="I0" />
            <blockpin signalname="XLXN_397" name="I1" />
            <blockpin signalname="XLXN_390" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_169">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_577" name="I1" />
            <blockpin signalname="XLXN_576" name="I2" />
            <blockpin signalname="XLXN_388" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_160">
            <blockpin signalname="XLXN_375" name="I0" />
            <blockpin signalname="XLXN_374" name="I1" />
            <blockpin signalname="SEG_A" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_170">
            <blockpin signalname="XLXN_388" name="I0" />
            <blockpin signalname="XLXN_390" name="I1" />
            <blockpin signalname="SEG_C" name="O" />
        </block>
        <block symbolname="and2b2" name="ANDB4B2">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_574" name="I1" />
            <blockpin signalname="XLXN_391" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_172">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_392" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_173">
            <blockpin signalname="XLXN_392" name="I0" />
            <blockpin signalname="XLXN_391" name="I1" />
            <blockpin signalname="SEG_D" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_174">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_575" name="I1" />
            <blockpin signalname="XLXN_476" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_175">
            <blockpin signalname="XLXN_476" name="I0" />
            <blockpin signalname="XLXN_373" name="I1" />
            <blockpin signalname="SEG_E" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_176">
            <blockpin signalname="XLXN_475" name="I0" />
            <blockpin signalname="XLXN_397" name="I1" />
            <blockpin signalname="SEG_F" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_166">
            <blockpin signalname="XLXN_383" name="I0" />
            <blockpin signalname="XLXN_382" name="I1" />
            <blockpin signalname="SEG_B" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_178">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_574" name="I2" />
            <blockpin signalname="XLXN_408" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_179">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_577" name="I1" />
            <blockpin signalname="XLXN_576" name="I2" />
            <blockpin signalname="XLXN_404" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_180">
            <blockpin signalname="XLXN_404" name="I0" />
            <blockpin signalname="XLXN_408" name="I1" />
            <blockpin signalname="SEG_G" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_188">
            <attr value="0" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_444" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_189">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_441" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_216">
            <blockpin signalname="XLXN_577" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="DIR" name="I2" />
            <blockpin signalname="XLXN_574" name="I3" />
            <blockpin signalname="XLXN_575" name="I4" />
            <blockpin signalname="XLXN_556" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_217">
            <blockpin signalname="XLXN_555" name="I0" />
            <blockpin signalname="XLXN_556" name="I1" />
            <blockpin signalname="CE_O" name="O" />
        </block>
        <block symbolname="and5b5" name="XLXI_218">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="XLXN_574" name="I1" />
            <blockpin signalname="XLXN_576" name="I2" />
            <blockpin signalname="XLXN_577" name="I3" />
            <blockpin signalname="XLXN_575" name="I4" />
            <blockpin signalname="XLXN_555" name="O" />
        </block>
        <block symbolname="and5b2" name="XLXI_219">
            <blockpin signalname="XLXN_575" name="I0" />
            <blockpin signalname="XLXN_576" name="I1" />
            <blockpin signalname="XLXN_577" name="I2" />
            <blockpin signalname="XLXN_574" name="I3" />
            <blockpin signalname="DIR" name="I4" />
            <blockpin signalname="XLXN_565" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_221">
            <blockpin signalname="RST" name="I0" />
            <blockpin signalname="XLXN_565" name="I1" />
            <blockpin signalname="XLXN_560" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_226">
            <blockpin signalname="DIR" name="I0" />
            <blockpin signalname="XLXN_555" name="I1" />
            <blockpin signalname="XLXN_578" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="768" y="1968" name="COUNTER" orien="R90" />
        <instance x="1856" y="624" name="ANDB4B3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1856" y="464" name="AND1B2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1856" y="304" name="ANDB43" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1872" y="176" name="XNOR21" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <instance x="2192" y="240" name="XLXI_159" orien="R0" />
        <branch name="XLXN_372">
            <wire x2="2160" y1="80" y2="80" x1="2128" />
            <wire x2="2160" y1="80" y2="112" x1="2160" />
            <wire x2="2192" y1="112" y2="112" x1="2160" />
        </branch>
        <branch name="XLXN_374">
            <wire x2="2464" y1="144" y2="144" x1="2448" />
            <wire x2="2464" y1="144" y2="288" x1="2464" />
            <wire x2="2496" y1="288" y2="288" x1="2464" />
        </branch>
        <branch name="XLXN_375">
            <wire x2="2496" y1="352" y2="352" x1="2480" />
            <wire x2="2480" y1="352" y2="432" x1="2480" />
            <wire x2="2544" y1="432" y2="432" x1="2480" />
            <wire x2="2544" y1="432" y2="496" x1="2544" />
            <wire x2="2544" y1="496" y2="496" x1="2480" />
        </branch>
        <branch name="SEG_A">
            <wire x2="2784" y1="320" y2="320" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2784" y="320" name="SEG_A" orien="R0" />
        <instance x="2256" y="928" name="XLXI_162" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_377">
            <wire x2="2256" y1="800" y2="800" x1="2128" />
        </branch>
        <instance x="1872" y="896" name="XNOR32" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="4" type="instance" />
        </instance>
        <instance x="1904" y="784" name="AND2B1_" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <branch name="XLXN_359">
            <wire x2="2128" y1="368" y2="368" x1="2112" />
            <wire x2="2128" y1="368" y2="464" x1="2128" />
            <wire x2="2224" y1="464" y2="464" x1="2128" />
        </branch>
        <branch name="XLXN_373">
            <wire x2="2144" y1="304" y2="304" x1="1792" />
            <wire x2="1792" y1="304" y2="1648" x1="1792" />
            <wire x2="2240" y1="1648" y2="1648" x1="1792" />
            <wire x2="2144" y1="208" y2="208" x1="2112" />
            <wire x2="2144" y1="208" y2="304" x1="2144" />
            <wire x2="2192" y1="176" y2="176" x1="2144" />
            <wire x2="2144" y1="176" y2="208" x1="2144" />
        </branch>
        <instance x="1872" y="1120" name="XLXI_167" orien="R0" />
        <instance x="2288" y="1088" name="XLXI_168" orien="R0" />
        <branch name="XLXN_385">
            <wire x2="2288" y1="1024" y2="1024" x1="2128" />
        </branch>
        <instance x="1920" y="1328" name="XLXI_169" orien="R0" />
        <instance x="2496" y="416" name="XLXI_160" orien="R0" />
        <branch name="XLXN_388">
            <wire x2="2608" y1="1200" y2="1200" x1="2176" />
            <wire x2="2624" y1="1056" y2="1056" x1="2608" />
            <wire x2="2608" y1="1056" y2="1200" x1="2608" />
        </branch>
        <branch name="SEG_C">
            <wire x2="2912" y1="1024" y2="1024" x1="2880" />
        </branch>
        <instance x="2624" y="1120" name="XLXI_170" orien="R0" />
        <iomarker fontsize="28" x="2912" y="1024" name="SEG_C" orien="R0" />
        <branch name="XLXN_390">
            <wire x2="2624" y1="992" y2="992" x1="2544" />
        </branch>
        <instance x="1872" y="1488" name="ANDB4B2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
        <instance x="1920" y="1648" name="XLXI_172" orien="R0" />
        <instance x="2272" y="1568" name="XLXI_173" orien="R0" />
        <branch name="XLXN_391">
            <wire x2="2192" y1="1392" y2="1392" x1="2128" />
            <wire x2="2192" y1="1392" y2="1440" x1="2192" />
            <wire x2="2272" y1="1440" y2="1440" x1="2192" />
        </branch>
        <branch name="XLXN_392">
            <wire x2="2224" y1="1552" y2="1552" x1="2176" />
            <wire x2="2224" y1="1504" y2="1552" x1="2224" />
            <wire x2="2272" y1="1504" y2="1504" x1="2224" />
        </branch>
        <branch name="SEG_D">
            <wire x2="2560" y1="1472" y2="1472" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2560" y="1472" name="SEG_D" orien="R0" />
        <instance x="1840" y="1808" name="XLXI_174" orien="R0" />
        <branch name="SEG_E">
            <wire x2="2528" y1="1680" y2="1680" x1="2496" />
        </branch>
        <instance x="2240" y="1776" name="XLXI_175" orien="R0" />
        <iomarker fontsize="28" x="2528" y="1680" name="SEG_E" orien="R0" />
        <branch name="SEG_F">
            <wire x2="2128" y1="1872" y2="1872" x1="2096" />
        </branch>
        <instance x="1840" y="1968" name="XLXI_176" orien="R0" />
        <iomarker fontsize="28" x="2128" y="1872" name="SEG_F" orien="R0" />
        <instance x="2224" y="592" name="XLXI_152" orien="R0" />
        <branch name="XLXN_383">
            <wire x2="2752" y1="832" y2="832" x1="2512" />
            <wire x2="2752" y1="768" y2="832" x1="2752" />
            <wire x2="2784" y1="768" y2="768" x1="2752" />
        </branch>
        <branch name="SEG_B">
            <wire x2="3072" y1="736" y2="736" x1="3040" />
        </branch>
        <instance x="2784" y="832" name="XLXI_166" orien="R0" />
        <iomarker fontsize="28" x="3072" y="736" name="SEG_B" orien="R0" />
        <branch name="XLXN_382">
            <wire x2="2768" y1="656" y2="656" x1="2720" />
            <wire x2="2768" y1="656" y2="704" x1="2768" />
            <wire x2="2784" y1="704" y2="704" x1="2768" />
        </branch>
        <instance x="2464" y="752" name="XLXI_165" orien="R0" />
        <instance x="1840" y="2192" name="XLXI_178" orien="R0" />
        <instance x="1840" y="2432" name="XLXI_179" orien="R0" />
        <branch name="SEG_G">
            <wire x2="2496" y1="2192" y2="2192" x1="2464" />
        </branch>
        <branch name="XLXN_404">
            <wire x2="2192" y1="2304" y2="2304" x1="2096" />
            <wire x2="2208" y1="2224" y2="2224" x1="2192" />
            <wire x2="2192" y1="2224" y2="2304" x1="2192" />
        </branch>
        <instance x="2208" y="2288" name="XLXI_180" orien="R0" />
        <iomarker fontsize="28" x="2496" y="2192" name="SEG_G" orien="R0" />
        <branch name="XLXN_408">
            <wire x2="2144" y1="2064" y2="2064" x1="2096" />
            <wire x2="2144" y1="2064" y2="2160" x1="2144" />
            <wire x2="2208" y1="2160" y2="2160" x1="2144" />
        </branch>
        <instance x="1360" y="1392" name="XLXI_189" orien="R90">
        </instance>
        <instance x="1232" y="1392" name="XLXI_188" orien="R90">
        </instance>
        <branch name="XLXN_441">
            <wire x2="1328" y1="1824" y2="1824" x1="1216" />
            <wire x2="1408" y1="1824" y2="1824" x1="1328" />
            <wire x2="1408" y1="1824" y2="1968" x1="1408" />
            <wire x2="1216" y1="1824" y2="1968" x1="1216" />
            <wire x2="1328" y1="1536" y2="1824" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="448" y="1760" name="COUNT_EN" orien="R180" />
        <branch name="COUNT_EN">
            <wire x2="960" y1="1760" y2="1760" x1="448" />
            <wire x2="960" y1="1760" y2="1968" x1="960" />
        </branch>
        <branch name="XLXN_475">
            <wire x2="1760" y1="1104" y2="1904" x1="1760" />
            <wire x2="1840" y1="1904" y2="1904" x1="1760" />
            <wire x2="2240" y1="1104" y2="1104" x1="1760" />
            <wire x2="2240" y1="688" y2="688" x1="2160" />
            <wire x2="2464" y1="688" y2="688" x1="2240" />
            <wire x2="2240" y1="688" y2="1104" x1="2240" />
        </branch>
        <branch name="XLXN_397">
            <wire x2="1808" y1="960" y2="1840" x1="1808" />
            <wire x2="1840" y1="1840" y2="1840" x1="1808" />
            <wire x2="2176" y1="960" y2="960" x1="1808" />
            <wire x2="2288" y1="960" y2="960" x1="2176" />
            <wire x2="2144" y1="528" y2="528" x1="2112" />
            <wire x2="2224" y1="528" y2="528" x1="2144" />
            <wire x2="2144" y1="528" y2="624" x1="2144" />
            <wire x2="2176" y1="624" y2="624" x1="2144" />
            <wire x2="2176" y1="624" y2="960" x1="2176" />
            <wire x2="2464" y1="624" y2="624" x1="2176" />
        </branch>
        <branch name="DIR">
            <wire x2="800" y1="1584" y2="1584" x1="352" />
            <wire x2="1088" y1="1584" y2="1584" x1="800" />
            <wire x2="1088" y1="1584" y2="1968" x1="1088" />
            <wire x2="800" y1="1152" y2="1584" x1="800" />
            <wire x2="992" y1="1152" y2="1152" x1="800" />
            <wire x2="992" y1="1152" y2="1216" x1="992" />
            <wire x2="1088" y1="1552" y2="1584" x1="1088" />
            <wire x2="1424" y1="1552" y2="1552" x1="1088" />
            <wire x2="1424" y1="304" y2="304" x1="1264" />
            <wire x2="1424" y1="304" y2="512" x1="1424" />
            <wire x2="1424" y1="512" y2="992" x1="1424" />
            <wire x2="1424" y1="992" y2="1552" x1="1424" />
            <wire x2="1424" y1="512" y2="512" x1="1264" />
            <wire x2="1424" y1="992" y2="992" x1="1264" />
        </branch>
        <branch name="COUNT">
            <wire x2="896" y1="1872" y2="1872" x1="400" />
            <wire x2="896" y1="1872" y2="1968" x1="896" />
        </branch>
        <branch name="XLXN_476">
            <wire x2="2240" y1="1712" y2="1712" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="400" y="1872" name="COUNT" orien="R180" />
        <iomarker fontsize="28" x="368" y="2000" name="RST" orien="R180" />
        <iomarker fontsize="28" x="352" y="1584" name="DIR" orien="R180" />
        <instance x="1264" y="320" name="XLXI_216" orien="R180" />
        <instance x="880" y="256" name="XLXI_217" orien="R180" />
        <branch name="CE_O">
            <wire x2="624" y1="352" y2="352" x1="544" />
        </branch>
        <branch name="XLXN_555">
            <wire x2="896" y1="320" y2="320" x1="880" />
            <wire x2="896" y1="176" y2="320" x1="896" />
            <wire x2="976" y1="176" y2="176" x1="896" />
            <wire x2="1008" y1="176" y2="176" x1="976" />
            <wire x2="976" y1="176" y2="1056" x1="976" />
            <wire x2="1056" y1="1056" y2="1056" x1="976" />
            <wire x2="1056" y1="1056" y2="1216" x1="1056" />
        </branch>
        <branch name="XLXN_556">
            <wire x2="944" y1="384" y2="384" x1="880" />
            <wire x2="944" y1="384" y2="512" x1="944" />
            <wire x2="1008" y1="512" y2="512" x1="944" />
        </branch>
        <iomarker fontsize="28" x="544" y="352" name="CE_O" orien="R180" />
        <instance x="1264" y="368" name="XLXI_218" orien="M0" />
        <instance x="1264" y="672" name="XLXI_219" orien="R180" />
        <branch name="XLXN_560">
            <wire x2="800" y1="1968" y2="1968" x1="768" />
        </branch>
        <branch name="RST">
            <wire x2="512" y1="2000" y2="2000" x1="368" />
        </branch>
        <instance x="512" y="2064" name="XLXI_221" orien="R0" />
        <branch name="XLXN_444">
            <wire x2="1200" y1="1536" y2="1584" x1="1200" />
            <wire x2="1280" y1="1584" y2="1584" x1="1200" />
            <wire x2="1280" y1="1584" y2="1888" x1="1280" />
            <wire x2="1280" y1="1888" y2="1968" x1="1280" />
            <wire x2="1344" y1="1888" y2="1888" x1="1280" />
            <wire x2="1344" y1="1888" y2="1968" x1="1344" />
        </branch>
        <branch name="XLXN_565">
            <wire x2="1008" y1="864" y2="864" x1="480" />
            <wire x2="480" y1="864" y2="1936" x1="480" />
            <wire x2="512" y1="1936" y2="1936" x1="480" />
        </branch>
        <branch name="XLXN_574">
            <wire x2="1216" y1="2352" y2="2560" x1="1216" />
            <wire x2="1696" y1="2560" y2="2560" x1="1216" />
            <wire x2="1504" y1="240" y2="240" x1="1264" />
            <wire x2="1504" y1="240" y2="576" x1="1504" />
            <wire x2="1696" y1="240" y2="240" x1="1504" />
            <wire x2="1856" y1="240" y2="240" x1="1696" />
            <wire x2="1696" y1="240" y2="560" x1="1696" />
            <wire x2="1856" y1="560" y2="560" x1="1696" />
            <wire x2="1696" y1="560" y2="928" x1="1696" />
            <wire x2="1696" y1="928" y2="1360" x1="1696" />
            <wire x2="1872" y1="1360" y2="1360" x1="1696" />
            <wire x2="1696" y1="1360" y2="2000" x1="1696" />
            <wire x2="1696" y1="2000" y2="2560" x1="1696" />
            <wire x2="1840" y1="2000" y2="2000" x1="1696" />
            <wire x2="1504" y1="576" y2="576" x1="1264" />
            <wire x2="1696" y1="928" y2="928" x1="1264" />
        </branch>
        <branch name="XLXN_575">
            <wire x2="1536" y1="48" y2="48" x1="1264" />
            <wire x2="1536" y1="48" y2="640" x1="1536" />
            <wire x2="1568" y1="48" y2="48" x1="1536" />
            <wire x2="1872" y1="48" y2="48" x1="1568" />
            <wire x2="1568" y1="48" y2="352" x1="1568" />
            <wire x2="1680" y1="352" y2="352" x1="1568" />
            <wire x2="1568" y1="352" y2="720" x1="1568" />
            <wire x2="1904" y1="720" y2="720" x1="1568" />
            <wire x2="1568" y1="720" y2="864" x1="1568" />
            <wire x2="2256" y1="864" y2="864" x1="1568" />
            <wire x2="1568" y1="864" y2="1056" x1="1568" />
            <wire x2="1872" y1="1056" y2="1056" x1="1568" />
            <wire x2="1568" y1="1056" y2="1264" x1="1568" />
            <wire x2="1920" y1="1264" y2="1264" x1="1568" />
            <wire x2="1568" y1="1264" y2="1584" x1="1568" />
            <wire x2="1920" y1="1584" y2="1584" x1="1568" />
            <wire x2="1568" y1="1584" y2="1680" x1="1568" />
            <wire x2="1840" y1="1680" y2="1680" x1="1568" />
            <wire x2="1536" y1="640" y2="640" x1="1264" />
            <wire x2="1408" y1="736" y2="736" x1="1264" />
            <wire x2="1408" y1="720" y2="736" x1="1408" />
            <wire x2="1568" y1="720" y2="720" x1="1408" />
            <wire x2="1408" y1="2352" y2="2416" x1="1408" />
            <wire x2="1568" y1="2416" y2="2416" x1="1408" />
            <wire x2="1552" y1="1680" y2="2368" x1="1552" />
            <wire x2="1568" y1="2368" y2="2368" x1="1552" />
            <wire x2="1568" y1="2368" y2="2416" x1="1568" />
            <wire x2="1840" y1="2368" y2="2368" x1="1568" />
            <wire x2="1568" y1="1680" y2="1680" x1="1552" />
            <wire x2="1856" y1="336" y2="336" x1="1680" />
            <wire x2="1680" y1="336" y2="352" x1="1680" />
        </branch>
        <branch name="XLXN_576">
            <wire x2="1472" y1="176" y2="176" x1="1264" />
            <wire x2="1472" y1="176" y2="448" x1="1472" />
            <wire x2="1648" y1="176" y2="176" x1="1472" />
            <wire x2="1856" y1="176" y2="176" x1="1648" />
            <wire x2="1648" y1="176" y2="496" x1="1648" />
            <wire x2="1856" y1="496" y2="496" x1="1648" />
            <wire x2="1648" y1="496" y2="768" x1="1648" />
            <wire x2="1872" y1="768" y2="768" x1="1648" />
            <wire x2="1648" y1="768" y2="1136" x1="1648" />
            <wire x2="1920" y1="1136" y2="1136" x1="1648" />
            <wire x2="1648" y1="1136" y2="1520" x1="1648" />
            <wire x2="1920" y1="1520" y2="1520" x1="1648" />
            <wire x2="1648" y1="1520" y2="2064" x1="1648" />
            <wire x2="1840" y1="2064" y2="2064" x1="1648" />
            <wire x2="1648" y1="2064" y2="2240" x1="1648" />
            <wire x2="1648" y1="2240" y2="2480" x1="1648" />
            <wire x2="1840" y1="2240" y2="2240" x1="1648" />
            <wire x2="1472" y1="448" y2="448" x1="1264" />
            <wire x2="1456" y1="800" y2="800" x1="1264" />
            <wire x2="1280" y1="2352" y2="2480" x1="1280" />
            <wire x2="1648" y1="2480" y2="2480" x1="1280" />
            <wire x2="1456" y1="768" y2="800" x1="1456" />
            <wire x2="1648" y1="768" y2="768" x1="1456" />
        </branch>
        <branch name="XLXN_577">
            <wire x2="1440" y1="112" y2="112" x1="1264" />
            <wire x2="1440" y1="112" y2="384" x1="1440" />
            <wire x2="1616" y1="112" y2="112" x1="1440" />
            <wire x2="1872" y1="112" y2="112" x1="1616" />
            <wire x2="1616" y1="112" y2="400" x1="1616" />
            <wire x2="1856" y1="400" y2="400" x1="1616" />
            <wire x2="1616" y1="400" y2="656" x1="1616" />
            <wire x2="1904" y1="656" y2="656" x1="1616" />
            <wire x2="1616" y1="656" y2="832" x1="1616" />
            <wire x2="1872" y1="832" y2="832" x1="1616" />
            <wire x2="1616" y1="832" y2="992" x1="1616" />
            <wire x2="1872" y1="992" y2="992" x1="1616" />
            <wire x2="1616" y1="992" y2="1200" x1="1616" />
            <wire x2="1920" y1="1200" y2="1200" x1="1616" />
            <wire x2="1616" y1="1200" y2="1424" x1="1616" />
            <wire x2="1872" y1="1424" y2="1424" x1="1616" />
            <wire x2="1616" y1="1424" y2="1744" x1="1616" />
            <wire x2="1840" y1="1744" y2="1744" x1="1616" />
            <wire x2="1616" y1="1744" y2="2128" x1="1616" />
            <wire x2="1840" y1="2128" y2="2128" x1="1616" />
            <wire x2="1616" y1="2128" y2="2304" x1="1616" />
            <wire x2="1616" y1="2304" y2="2448" x1="1616" />
            <wire x2="1840" y1="2304" y2="2304" x1="1616" />
            <wire x2="1440" y1="384" y2="384" x1="1264" />
            <wire x2="1440" y1="864" y2="864" x1="1264" />
            <wire x2="1344" y1="2352" y2="2448" x1="1344" />
            <wire x2="1616" y1="2448" y2="2448" x1="1344" />
            <wire x2="1440" y1="832" y2="864" x1="1440" />
            <wire x2="1616" y1="832" y2="832" x1="1440" />
        </branch>
        <branch name="XLXN_578">
            <wire x2="1024" y1="1472" y2="1968" x1="1024" />
        </branch>
        <instance x="928" y="1216" name="XLXI_226" orien="R90">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-8" type="instance" />
        </instance>
    </sheet>
</drawing>